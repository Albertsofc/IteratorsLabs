import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

void setup() {
  //String words="a b c a b c a a";
  String words2="a b c d e f g h i j x x x x x";
  //String words3= "1 2 3 4 5 6 a b c a b c b";
  IteratorRemover rem=new IteratorRemover(words2, "b");
  println(rem);
}
