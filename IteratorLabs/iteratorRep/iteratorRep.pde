import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

void setup() {
  String words="a b c a b c";
  IteratorReplacer rem=new IteratorReplacer(words, "a", "+");
  println(rem);
}
