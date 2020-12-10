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
    Comment comment = new Comment();

    long time = Long.parseLong(s.substring(0, 19).replaceAll("[-,T,:]", ""));
    System.out.println("Long Time: "+time);
    comment.setTime(time);
    comment.setName(s);
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

    long countComments(long id, String from, String to) throws IOException {

//        List<String> stringList = convertCommentsToString(commentList);

        convertStringToComment(to);
        convertStringToComment(from);

        // String search = "2010-02-09T04:05:20.777+0000|529590|2886|LOL|Baoping";
        String searchFrom = from+"|"+id+"|/d*|/d*|/w*|/w*";
        String searchTo = to+"|"+id+"|/d*|/d*|/w*|/w*";
        System.out.println(searchFrom);
        Pattern searchPattern = Pattern.compile(searchFrom);
        Pattern searchPatternTo = Pattern.compile(searchTo);


        Path path = Paths.get("/home/ralf/Documents/Uni/ProgrammierModelle/Aufgabe1/src/comments.txt");

        try{

            long countNew = Files
                    .lines(path)
                    .filter(lines -> searchPattern.matcher(lines).find())
                    //.map(lines -> convertStringToComment(lines))
                    .count();
            return countNew;


             /* long count = stringList
                .stream()
                .filter(s -> searchPattern.matcher(s).find())
                .count();
            */

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