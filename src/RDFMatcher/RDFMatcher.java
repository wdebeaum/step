/* RDFMatcher - TRIPS module for matching RDF graphs
 * Created:     2009-01-06
 * Last edited: 2009-01-09
 * By:          William de Beaumont
 *
 * This is a wrapper for the Similarity Flooding code available here:
 * http://infolab.stanford.edu/~melnik/mm/sfa/
 * and described in this paper:
 * Melnik, Sergey and Garcia-molina, Hector and Rahm, Erhard (2002) Similarity flooding: A versatile graph matching algorithm. In Proceedings of the International Conference on Data Engineering (ICDE).
 *
 */

package TRIPS.RDFMatcher;

import TRIPS.KQML.*;
import TRIPS.TripsModule.StandardTripsModule;

import java.util.*;
import java.io.*;
import org.xml.sax.*;
import org.w3c.rdf.model.*;
import org.w3c.rdf.util.*;
import org.w3c.rdf.syntax.*;
import com.interdataworking.mm.alg.*;

public class RDFMatcher extends StandardTripsModule {
  RDFFactory rf;
  RDFParser p;

  public RDFMatcher(String argv[], boolean isApplication) {
    super(argv, isApplication);
  }
  
  public RDFMatcher(String argv[]) {
    super(argv);
  }

  public static void main(String argv[]) {
    new RDFMatcher(argv, true).run();
  }

  public void init() {
    name = "RDFMatcher";
    super.init();
    rf = new RDFFactoryImpl();
    p = rf.createParser();
    try {
      send(KQMLPerformative.fromString("(subscribe :content (request &key :content (match-rdf-strings . *)))"));
    } catch (IOException ex) {
      error("Subscription failed: " + ex);
    }
    ready();
  }

  /** Given two strings containing RDF/XML, return an array of correspondences between RDF entities from the two strings, sorted from most similar to least.
   */
  public MapPair[] matchRDFStrings(String stringA, String stringB) throws Exception {
    // read the two RDF files into models A and B
    Model A = rf.createModel();
    Model B = rf.createModel();
    InputSource is = new InputSource(new StringReader(stringA));
    RDFConsumer rc = new ModelConsumer(A);
    p.parse(is,rc);
    is = new InputSource(new StringReader(stringB));
    rc = new ModelConsumer(B);
    p.parse(is,rc);

    // fill initMap
    List initMap = new ArrayList();
    for (Enumeration aes = A.elements(); aes.hasMoreElements(); ) {
      Statement ae = (Statement)(aes.nextElement());
      for (Enumeration bes = B.elements(); bes.hasMoreElements(); ) {
	Statement be = (Statement)(bes.nextElement());
	if (ae.predicate().getURI().equalsIgnoreCase(be.predicate().getURI()))
	  initMap.add(new MapPair(ae,be,1.0));
	else
	  initMap.add(new MapPair(ae,be,1.0));
	if (ae.subject() instanceof Literal &&
	    be.subject() instanceof Literal &&
	    ((Literal)(ae.subject())).getLabel().equalsIgnoreCase(
	    ((Literal)(be.subject())).getLabel()))
	  initMap.add(new MapPair(ae.subject(),be.subject(),1.0));
	else
	  initMap.add(new MapPair(ae.subject(),be.subject(),0.1));
	if (ae.object() instanceof Literal &&
	    be.object() instanceof Literal &&
	    ((Literal)(ae.object())).getLabel().equalsIgnoreCase(
	    ((Literal)(be.object())).getLabel()))
	  initMap.add(new MapPair(ae.object(),be.object(),1.0));
	else
	  initMap.add(new MapPair(ae.object(),be.object(),0.1));
      }
    }

    // run the matching algorithm
    Match sf = new Match();
    MapPair[] result = sf.getMatch(A, B, initMap);

    // sort the mappings
    MapPair.sort(result);

    return result;
  }

  /** Given an RDF entity of some kind, return its KQML representation.
   */
  public static KQMLObject rdfNodeToKQMLObject(RDFNode rdf) throws Exception {
    if (rdf instanceof Literal) {
      return new KQMLString(rdf.getLabel());
    } else if (rdf instanceof Statement) {
      KQMLPerformative ret = new KQMLPerformative("statement");
      ret.setParameter(":subject",
			rdfNodeToKQMLObject(((Statement)rdf).subject()));
      ret.setParameter(":predicate",
			rdfNodeToKQMLObject(((Statement)rdf).predicate()));
      ret.setParameter(":object",
			rdfNodeToKQMLObject(((Statement)rdf).object()));
      return ret;
    } else if (rdf instanceof Resource) {
      String s = ((Resource)rdf).getLocalName(); // Ignore namespaces for now
      if (s.startsWith("#")) // omit leading #
	s = s.substring(1);
      return new KQMLString(s);
    } else {
      throw new Exception("Unknown type of RDFNode: " + rdf.getClass().getName());
    }
  }

  public void receiveRequest(KQMLPerformative msg, Object objContent) {
    try {
      if (!(objContent instanceof KQMLList))
	throw new Exception("Request content was not a list");
      KQMLList content = (KQMLList)objContent;
      String verb = content.nth(0).toString();
      if (verb.equalsIgnoreCase("match-rdf-strings")) {
	// check msg format
	if (content.length() < 3)
	  throw new Exception("match-rdf-strings takes at least two arguments");
	if (!(content.nth(1) instanceof KQMLString &&
	      content.nth(2) instanceof KQMLString))
	  throw new Exception("match-rdf-strings' arguments must be strings");
	
	// get which types of RDF nodes to return pairs for
	boolean keepLiterals = false,
		keepStatements = false,
		keepResources = false;
	KQMLObject objReturnTypes = content.getKeywordArg(":return-types");
	if (objReturnTypes != null) {
	  if (!(objReturnTypes instanceof KQMLList))
	    throw new Exception(":return-types must be a list");
	  KQMLList listReturnTypes = (KQMLList)objReturnTypes;
	  ListIterator<KQMLObject> it = listReturnTypes.listIterator();
	  while (it.hasNext()) {
	    KQMLObject objReturnType = it.next();
	    if (!(objReturnType instanceof KQMLToken))
	      throw new Exception("return types must be tokens");
	    String returnType = ((KQMLToken)objReturnType).stringValue();
	    if (returnType.equalsIgnoreCase("literal")) {
	      keepLiterals = true;
	    } else if (returnType.equalsIgnoreCase("statement")) {
	      keepStatements = true;
	    } else if (returnType.equalsIgnoreCase("resource")) {
	      keepResources = true;
	    } else {
	      throw new Exception("Unknown return type: " + returnType);
	    }
	  }
	} else {
	  // :return-types unspecified, keep everything
	  keepLiterals = keepStatements = keepResources = true;
	}
	
	// do the matching
	MapPair[] pairs = matchRDFStrings(content.nth(1).stringValue(),
	                                   content.nth(2).stringValue());
	
	// construct a reply
	KQMLPerformative reply = new KQMLPerformative("tell");
	KQMLPerformative replyContent = new KQMLPerformative("map-pairs");
	
	KQMLList kqmlPairs = new KQMLList();
	for (int i = 0; i < pairs.length; i++) {
	  Object objLeft = pairs[i].getLeft();

	  // decide whether to return this pair based on the type of objLeft
	  boolean keep;
	  if (objLeft instanceof Literal) {
	    keep = keepLiterals;
	  } else if (objLeft instanceof Statement) {
	    keep = keepStatements;
	  } else if (objLeft instanceof Resource) {
	    keep = keepResources;
	  } else {
	    throw new Exception("Unknown type of RDFNode: " + objLeft.getClass().getName());
	  }

	  if (keep) {
	    // add this pair to the KQML list
	    Object objRight = pairs[i].getRight();
	    double similarity = pairs[i].sim;

	    KQMLObject kqmlLeft = rdfNodeToKQMLObject((RDFNode)objLeft);
	    KQMLObject kqmlRight = rdfNodeToKQMLObject((RDFNode)objRight);
	    KQMLToken kqmlSimilarity = new KQMLToken(String.valueOf(similarity));
	    
	    KQMLList kqmlPair = new KQMLList(kqmlLeft,kqmlRight,kqmlSimilarity);
	    kqmlPairs.add(kqmlPair);
	  }
	}

	replyContent.setParameter(":pairs", kqmlPairs);
	reply.setParameter(":content", replyContent);
	reply(msg, reply);
      } else {
	throw new Exception("Unknown request verb " + verb);
      }
    } catch (Exception ex) {
      errorReply(msg, ex.toString());
    }
  }
}
