/** Parser as a UNIX filter program
 *  @author Will de Beaumont
 */

package TRIPS.TextTagger.StanfordParser;

import edu.stanford.nlp.parser.lexparser.LexicalizedParser;
import java.io.*;

public class ParserFilter {
  public static void main(String[] args) throws Exception {
    LexicalizedParser lp = new LexicalizedParser(System.getProperty("TRIPS.TEXTTAGGER_parser") + File.separator + "englishPCFG.ser.gz");
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    String s;
    while ((s = br.readLine()) != null) {
      lp.parse(s);
      System.out.println(lp.getBestParse());
    }
  }
}
