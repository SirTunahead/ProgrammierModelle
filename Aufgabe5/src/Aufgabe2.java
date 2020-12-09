import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Pattern;

public class Aufgabe2 {

    public static void main(String[] args) throws IOException {

        Comments comments = new Comments();
        ArrayList<Comment> commentsList = new ArrayList<Comment>();
        File file = new File("/home/ralf/Documents/Uni/ProgrammierModelle/Aufgabe1/src/comments.txt");

        //um das Datum heraus zu finden
        String myPatternString = "^\\d{4}-\\d{2}-(0[1-9]|1\\d|2\\d|3[0-1])T(0\\d|1\\d|2[0-4]):([0-5]\\d):([0-5]\\d$)";
        Pattern pattern = Pattern.compile(myPatternString);

        comments.function(file, pattern, commentsList);
    }
}