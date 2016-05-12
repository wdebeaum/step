/** POS Tagger as a UNIX filter program
 *  @author Will de Beaumont
 */

package TRIPS.TextTagger.StanfordPOSTagger;

import edu.stanford.nlp.tagger.maxent.MaxentTagger;
import java.io.*;

public class POSFilter {
  public static void main(String[] args) throws Exception {
    MaxentTagger.init(System.getProperty("TRIPS.TEXTTAGGER_postagger") + File.separator + "models" + File.separator + "bidirectional-wsj-0-18.tagger");
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String s;
    while ((s = br.readLine()) != null) {
      System.out.println(MaxentTagger.tagString(s));
    }
  }
}
