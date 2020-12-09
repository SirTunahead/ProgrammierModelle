import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import java.util.stream.Stream;

public class CommentsCounter {

   void convertStringToComment(String s){

    }


    List<String> convertCommentsToString(ArrayList<Comment> commentList){
        ArrayList<String> stringList = new ArrayList<String>();

        for( int i = 0; i < commentList.size(); i++){

            String input = commentList.get(i).getName()+ " " +commentList.get(i).getTime();
            stringList.add(input);
        }

        List<String> undmod = Collections.unmodifiableList(stringList);
        return undmod;
    }

    long countComments(long id, String from, String to, ArrayList<Comment> commentList, Pattern pattern) throws IOException {

        List<String> stringList = convertCommentsToString(commentList);

        String search = pattern+"|"+id+"|/d*|"+from+"|"+to;
        // String search = "2010-02-09T04:05:20.777+0000|529590|2886|LOL|Baoping";
        System.out.println(search);
        Pattern searchPattern = Pattern.compile(search);

       /* long count = stringList
                .stream()
                .filter(s -> searchPattern.matcher(s).find())
                .count();
            */

        Path path = Paths.get("/home/ralf/Documents/Uni/ProgrammierModelle/Aufgabe1/src/comments.txt");

        try{

            long countNew = Files
                    .lines(path)
                   // .map(lines -> convertStringToComment(search))
                    .filter(lines -> searchPattern.matcher(lines).find())
                    .count();
            return countNew;

            /*
            long countNew = Files
                    .lines(path)
                    //.map()
                    .filter(lines -> searchPattern.matcher(lines).find())
                    .count();
            return countNew;

        von Piepmeyer. Das in die .map
        Strings einlesen, aus diesen die dazugehörigen Comments generieren
            lines = Files
                .lines(path)
                .forEach(line->System.out.println(line));
        */


             } catch (Exception e) {
                e.printStackTrace();
                }

      return 69;
    }
}