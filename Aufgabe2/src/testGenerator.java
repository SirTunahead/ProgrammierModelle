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
            int oLength = output.length();
            for(int i = 0; i < 255; i++) {

                if (oLength < 8) {

                    for (int k = 0; k < (8 - oLength); k++) {
                        writer.write("set a"+k+ " 0,\n");

                    }
                    int save = 8-oLength;
                    for (int j = 0; j < oLength; j++) {

                        output = Integer.toBinaryString(binary);
                        System.out.println(binary);


                        writer.write("set a"+(save+j)+ " " + output.charAt(j) + ",\n");
                    }
                    writer.write("eval,\noutput;\n\n");

                }
                binary++;

                output = Integer.toBinaryString(binary);
                oLength = output.length();
            }

            for (int k = 0; k < 8; k++) {
                writer.write("set a"+k+ " 1,\n");

            }
            writer.write("eval,\noutput;\n\n");
            writer.close();
        } catch(IOException e) {
            System.out.println("Error occurred");
            e.printStackTrace();
        }

    }
}