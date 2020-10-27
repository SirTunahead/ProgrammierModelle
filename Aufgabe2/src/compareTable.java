import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class compareTable {

    boolean full = false;

    public void initCompare(File tableCompFile){
        try{
            FileWriter writer = new FileWriter(tableCompFile.getAbsolutePath());
            writer.write("|   a1  |   a2  |  a3   |   a4  |   a5  |  a6   |   a7  |   a8  |");
            writer.write(String.format("%n"));
            writer.write("|   0   |   0   |  0    |   0   |   0   |  0    |   0   |   0   |");
            writer.write(String.format("%n"));
            int a = 0;

            for(int i = 0; i< 255; i++){
                boolean firstime = true;
                a++;
                String output = Integer.toBinaryString(a);
                int oLenght = output.length();
                if(oLenght < 8){

                    for(int j = 0; j < (8 - oLenght); j++){
                        if(firstime) {
                            writer.write("|   0   |");
                            firstime = false;
                        }else{
                            writer.write("   0   |");
                        }
                    }
                }else if(oLenght == 8){
                    full = true;
                }

                for(int k = 0; k < oLenght; k++){
                    if(full) {
                        writer.write("|   " + output.charAt(k) + "   |");
                        full = false;
                    }else{
                        writer.write("   " + output.charAt(k) + "   |");
                    }
                }

                writer.write(String.format("%n"));

            }
            writer.close();

        } catch(IOException e){
            System.out.println("An error occurred!");
            e.printStackTrace();
        }
    }
}

