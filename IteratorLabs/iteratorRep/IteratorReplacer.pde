import java.util.ArrayList;
import java.util.Arrays;
import java.util.ListIterator;
import static java.lang.System.*;

class IteratorReplacer
{
  private ArrayList<String> list;
  private String toRemove, replaceWith;

  public IteratorReplacer(String line, String rem, String rep)
  {
    String words[]=line.split(" ");
    list=new ArrayList<String>(Arrays.asList(words));
    toRemove=rem;
    replaceWith=rep;
    replace();
  }

  public void setEmAll(String line, String rem, String rep)
  {
    String words[]=line.split(" ");
    list=new ArrayList<String>(Arrays.asList(words));
    toRemove=rem;
    replaceWith=rep;
    replace();
  }

  public void replace()
  {
    ListIterator<String> iter=list.listIterator();
    while(iter.hasNext()){
      if(iter.next().equals(toRemove)){
        iter.set(replaceWith);
      }
    }
  }

  public String toString()
  {
    return "we replaced '" + toRemove+"' with '"+replaceWith+"' to make: "+list;
  }
}
