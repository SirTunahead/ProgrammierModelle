import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UnmodifiableList {
    public static void main(String[] args)throws Exception
    {
        try{

            List<Character> list = new ArrayList<Character>();

            list.add('U');
            list.add('C');
            list.add('Y');
            list.add('A');
            list.add('X');

            System.out.println("Inital list: " +list);

            List<Character> immutablelist = Collections.unmodifiableList(list);

            System.out.println("Unmodifiable list:" + immutablelist);

            System.out.println("List Size"+list.size());
            System.out.println("Unmodifiablelist Size: "+immutablelist.size());

            //immutablelist.clear();
           int x =  immutablelist.hashCode();
           System.out.println("hashcode: "+x);
           list.sort(null);
           System.out.println("sorted: "+list);
           immutablelist.sort(null);
            System.out.println("sorted: "+immutablelist);
        }
        catch(UnsupportedOperationException e){
            System.out.println("Exception thrown: " +e);
    }
    }
}
