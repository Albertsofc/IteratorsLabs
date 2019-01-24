import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import static java.lang.System.*;

class IteratorRemover
{
  private ArrayList<String> list;
  private String toRemove;

  public IteratorRemover(String line, String rem)
  {
    String[] words=line.split(" ");
    list=new ArrayList<String>(Arrays.asList(words));
    toRemove=rem;
    removeIt();
  }

  public void setTest(String line, String rem)
  {// what's the difference between this and iteratorRemover?? ANSWER: there is none; it's here to give your runner some flexibility
    String[] words=line.split(" ");
    list=new ArrayList<String>(Arrays.asList(words));
    toRemove=rem;
    removeIt();
  }

  public void removeIt()
  {
    Iterator<String> it= list.iterator(); //null pointer exception?
    while (it.hasNext()) {
      if (it.next().equals(toRemove)) {
        it.remove();
      }
    }
  }

  public String toString()
  {
    return "we removed '"+toRemove+ "' and got: "+list;
  }
}
