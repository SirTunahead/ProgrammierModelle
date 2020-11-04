
import java.io.File; // Import the File class
import java.io.FileNotFoundException; // Import this class to handle errors
import java.util.Comparator;
import java.util.Scanner; // Import the Scanner class to read text files
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.ArrayList;
import java.util.Collections;

public class Comments {

    public static void main(String[] args) {

        ArrayList<Comment> commentsList = new ArrayList<Comment>();
        File file = new File("D:\\Uni\\ProgrammierModelle\\Aufgabe1\\src\\comments.txt");

        //um das Datum heraus zu finden
        String myPatternString = "^\\d{4}-\\d{2}-(0[1-9]|1\\d|2\\d|3[0-1])T(0\\d|1\\d|2[0-4]):([0-5]\\d):([0-5]\\d$)";
        Pattern pattern = Pattern.compile(myPatternString);



        try {
                Scanner scanner = new Scanner(file);
                while(scanner.hasNextLine()) {
                    Comment com = new Comment();
                    String myScannerValue = "";
                    myScannerValue = scanner.next();
                    Matcher matcher = pattern.matcher(myScannerValue.substring(0,19));

                    if(matcher.matches()){
                        //System.out.println(com.getName());
                        com.setName(myScannerValue);
                        com.setTime(Long.parseLong(myScannerValue.substring(0,19).replaceAll("[-,T,:]","")));
                        //System.out.println("Time: "+ com.getTime());
                        commentsList.add(com);
                        //System.out.println(myScannerValue);
                    }
                    scanner.nextLine();
                    com = null;
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
            public int compare(Comment zahl2, Comment zahl1)
            {

                return  zahl1.getTime().compareTo(zahl2.getTime());
            }
        });

        System.out.println("Es gab: "+commentsList.size()+" viele Eintraege");
        System.out.println("Der aelteste Eintrag lautet: "+commentsList.get(commentsList.size()-1).getName());
    }
}
