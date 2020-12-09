import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class Comments {


    public void function(File file, Pattern pattern, ArrayList<Comment> commentsList) throws IOException {
        CommentsCounter counter = new CommentsCounter();
        long values;
        long maxValues = 0;

        try {
            Scanner scanner = new Scanner(file);
            while (scanner.hasNextLine()) {
                Comment com = new Comment();
                String myScannerValue = "";
                myScannerValue = scanner.next();
                Matcher matcher = pattern.matcher(myScannerValue.substring(0, 19));

                if (matcher.matches()) {
                    //System.out.println(com.getName());
                    com.setName(myScannerValue);
                    com.setTime(Long.parseLong(myScannerValue.substring(0, 19).replaceAll("[-,T,:]", "")));
                    //System.out.println("Time: "+ com.getTime());
                    commentsList.add(com);
                    //System.out.println(myScannerValue);

                    /*Aufgabe 2 von Abgabe 5
                    values = counter.countComments(com.getTime(), com.getName(), com.getUser());
                    maxValues += values; */
                }
                scanner.nextLine();
            }

            scanner.close();

        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        } catch (Exception e) {
            System.out.println("");
        }

        //ArrayList durchlaufen, schauen wo dass Datum am ältesten ist

        Collections.sort(commentsList, new Comparator<Comment>() {
            public int compare(Comment zahl2, Comment zahl1) {

                return zahl1.getTime().compareTo(zahl2.getTime());
            }
        });





        System.out.println("Es gab: " + commentsList.size() + " viele Eintraege");
        System.out.println("Der aelteste Eintrag lautet: " + commentsList.get(commentsList.size() - 1).getName());
        System.out.print("Count von StringList: " + counter.countComments(529590,"LOL", "Baoping", commentsList, pattern));

        //System.out.println("Max Values: "+maxValues);
        //counter.initCommentsCounter(commentsList);
    }
}