/** NER as a UNIX filter program
 *  @author Will de Beaumont (modified from code by Jenny Finkel)
 */

package TRIPS.TextTagger.StanfordNER;

import edu.stanford.nlp.ie.crf.*;
import edu.stanford.nlp.ie.AbstractSequenceClassifier;
import edu.stanford.nlp.ling.FeatureLabel;
import edu.stanford.nlp.util.StringUtils;

import java.util.List;
import java.io.*;

public class NERFilter {

    public static final String DEFAULT_SERIALIZED_CLASSIFIER = 
	System.getProperty("TRIPS.TEXTTAGGER_ner") + File.separator + "classifiers" 
	+ File.separator + "ner-eng-ie.crf-3-all2006.ser.gz";

    public static final String CUSTOM_SERIALIZED_CLASSIFIER_VAR = "TRIPS_TEXTTAGGER_NER";

    public static void main(String[] args) throws IOException {

	// determine the NER classifier to use
	String serializedClassifier;
	if (args.length > 0) { // use filename declared on command line, if any
	    serializedClassifier = args[0];
	} else {
	    // next see if env. variable declared
	    String customClassifier = System.getenv(CUSTOM_SERIALIZED_CLASSIFIER_VAR);    
	    if ((customClassifier == null) || customClassifier.equals("")) { // default classifier
		serializedClassifier = DEFAULT_SERIALIZED_CLASSIFIER;
	    } else { // custom classifier declared
		serializedClassifier = customClassifier;
	    }
	} // end else

      AbstractSequenceClassifier classifier = CRFClassifier.getClassifierNoExceptions(serializedClassifier);

      if (args.length > 1) {
        String fileContents = StringUtils.slurpFile(args[1]);
        List<List<FeatureLabel>> out = classifier.testSentences(fileContents);
        for (List<FeatureLabel> sentence : out) {
          for (FeatureLabel word : sentence) {
            System.out.print(word.word() + "/" + word.answer() + " ");
          }
          System.out.println();
        }
        out = classifier.testFile(args[1]);
        for (List<FeatureLabel> sentence : out) {
          for (FeatureLabel word : sentence) {
            System.out.print(word.word() + "/" + word.answer() + " ");
          }
          System.out.println();
        }

      } else {
	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	String s;
	while ((s = br.readLine()) != null) {
	  System.out.println(classifier.testString(s));
	}
        //System.out.println(classifier.testString(s1));
        //System.out.println(classifier.testStringInlineXML(s2));
      }
    }
  
}
