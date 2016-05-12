RDFMatcher README
William de Beaumont
2009-01-28

RDFMatcher is a TRIPS module wrapper for Sergey Melnik's similarity flooding
graph matcher. It's used in the STEP system to augment LFEvaluator.

See this website for information on the graph matcher:

  http://infolab.stanford.edu/~melnik/mm/sfa/

Or this paper (linked from the site):

  Melnik, Sergey and Garcia-Molina, Hector and Rahm, Erhard (2001) Similarity
  Flooding: A Versatile Graph Matching Algorithm (Extended Technical Report).
  Technical Report. Stanford.

The code for the matcher is in sfa-2003-11-17.jar, which you can get here:

  http://www-diglib.stanford.edu/~melnik/mm/sfa/sfa-2003-11-17.jar

If you put this in /usr/local/share, it will be found automatically by configure.
Otherwise, run configure with the option:
  --with-sfa-jar=wherever you put that file  (must include the filename, not just the path)


====================================================================================================
*** Note from Hyuckchul Jung (2012-02-05)
As of 2012-02-04, the comment below made on 2010-08-02 is obsolete (i.e., no need to edit Melnik's code...following the above instruction, ignoring comment made on 08/02/12, should make this module work). However, note that (test-paragraph 'step3) produces a LISP error possibly due to some changes in paragraph-lfs message format:
> Error: value PARAGRAPH is not of the expected type LIST.
> While executing: CCL::MEMEQL, in process LFEVALUATOR(7).

Will mentioned that the last time he ran STEP successfully was on 2009-12-09.

*** Note from Hyuckchul Jung (2010-08-02) <--- OBSOLETE!!!
It seems that the similarity flooding code from Melnik is using an old version of xml parsing code and I addressed the problem with these steps:
-- Get the deprecated version of xerces.jar (v1.4.4) from xerces.apache (newer versions do not have the jar file; instead, there are other multiple jar files such as xercesImpl.jar)
-- Rplace the string for default parser "org.brownell.xml.aelfred2.SAXDriver" with "org.apache.xerces.parsers.SAXParser" in two files edu.stanford.db.xml.util.GenericParser.java and org.w3c.rdf.implementation.syntax.sirpac.SiRPAC.java. (note that it's not clear if this step is really necessary since setting the system property, "org.xml.sax.parser", should let a different parser be used.)

