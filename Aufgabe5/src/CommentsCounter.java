import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

public class CommentsCounter {


    ArrayList<String> convertCommentsToString(ArrayList<Comment> commentList){
        ArrayList<String> stringList = new ArrayList<String>();

        for( int i = 0; i < commentList.size(); i++){

            String input = commentList.get(i).getName()+ " " +commentList.get(i).getTime();
            stringList.add(input);
        }
        return stringList;
    }

    long countComments(long id, String from, String to, ArrayList<Comment> commentList, Pattern pattern) {

        ArrayList<String> stringList = convertCommentsToString(commentList);

        long count = stringList
                .stream()
                .filter(s -> pattern.matcher(s).find())
                .count();

        return count;
    }
}