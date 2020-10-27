import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class testGenerator {
    //int a[] = new int[8];
    int binary = 0;

    public void initFile(File testGenFile){
        try {

            FileWriter writer = new FileWriter(testGenFile.getAbsolutePath());
            writer.write("load Increment8.hdl,\n" +
                    "output-file Increment8.out,\n" +
                    "compare-to Increment8.cmp,\n" +
                    "output-list a%B3.1.3\n" +
                    "b%B3.1.3\n" +
                    "c%B3.1.3\n\n");
            String output = Integer.toBinaryString(binary);
            int oLenght = output.length();
            for(int i = 0; i < 255; i++) {

                if (oLenght < 8) {

                    for (int k = 0; k < (8 - oLenght); k++) {
                        writer.write("set a"+k+ " 0\n");
                        int save = k;
                    }

                    for (int j = 0; j < oLenght; j++) {
                        System.out.println("lenght: "+oLenght);
                        output = Integer.toBinaryString(binary);
                        System.out.println(binary);
                        writer.write("set a"+(j)+ " " + output.charAt(j) + ",\n");
                    }
                    writer.write("eval,\noutput;\n\n");

                }
                binary++;

                output = Integer.toBinaryString(binary);
                oLenght = output.length();
            }
            writer.close();
        } catch(IOException e) {
            System.out.println("Error occurred");
            e.printStackTrace();
        }

    }
}