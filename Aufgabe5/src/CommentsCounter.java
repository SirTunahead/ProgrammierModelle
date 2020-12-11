import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.regex.Pattern;

public class CommentsCounter {

   /* List<String> convertCommentsToString(ArrayList<Comment> commentList){
        ArrayList<String> stringList = new ArrayList<String>();

        for( int i = 0; i < commentList.size(); i++){

            String input = commentList.get(i).getName()+ " " +commentList.get(i).getTime();
            stringList.add(input);
        }

        List<String> undmod = Collections.unmodifiableList(stringList);
        return undmod;
    }*/

   ArrayList<Comment> convertStringToComment(String s, ArrayList<Comment> commentsList){
    Comment comment = new Comment();

    long time = Long.parseLong(s.substring(0, 19).replaceAll("[-,T,:]", ""));
    //long toLong = Long.parseLong(to.substring(0, 19).replaceAll("[-,T,:]", ""));


    //System.out.println("Long Time: "+time);

           comment.setTime(time);
           comment.setName(s);
           commentsList.add(comment);

           System.out.println("FromTime: "+time);
           return commentsList;
    }

    long countComments(long id, String from, String to) throws IOException {

//        List<String> stringList = convertCommentsToString(commentList);

        ArrayList<Comment> commentsList = new ArrayList<Comment>();
        //String fromTo = "[" +from.substring(0,4) +"-"+ to.substring(0,4)+ "]-["+ from.substring(5,6) +"-"+to.substring(5,6) +"]-[" +from.substring(8,9)+"-"+to.substring(8,9)+"]";
        //System.out.println("FromTo: "+fromTo);

        // String search = "2010-02-09T04:05:20.777+0000|529590|2886|LOL|Baoping";
        String searchFrom = from+"|"+id+"|/d*|/d*|/w*|/w*";

        //String searchTo = to+"|"+id+"|/d*|/d*|/w*|/w*";
        System.out.println(searchFrom);

        long longTime = Long.parseLong(to.substring(0, 19).replaceAll("[-,T,:]", ""));

        Pattern searchPattern = Pattern.compile(searchFrom);
        //Pattern searchPatternTo = Pattern.compile(searchTo);
        Path path = Paths.get("/home/ralf/Documents/Uni/ProgrammierModelle/Aufgabe1/src/comments.txt");




        try{
            long countNew = Files
                    .lines(path)
                    //.filter(lines -> searchPattern.matcher(lines).find())
                    .map(lines -> convertStringToComment(lines, commentsList))
                    .filter(lines -> lines  <= longTime)
                    .count();

            System.out.println("Long Time:"+longTime);
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