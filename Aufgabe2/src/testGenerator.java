import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class testGenerator {
    int a[] = new int[8];


    public void initFile(File testGenFile){
        try {
            //init array with 0
            for(int i = 0; i<8; i++){
                a[i] = 0;
            }

            FileWriter writer = new FileWriter(testGenFile.getAbsolutePath());
            writer.write("load Increment8.hdl,\n" +
                    "output-file Increment8.out,\n" +
                    "compare-to Increment8.cmp,\n" +
                    "output-list a%B3.1.3\n" +
                    "b%B3.1.3\n" +
                    "c%B3.1.3\n\n");
            for(int k = 0; k < 8; k++) {

                a[k] = 1;
                for(int j = 0; j < 8; j++) {
                    writer.write("set a" + j +" "+ a[j] +",\n");
                }
                writer.write("eval,\noutput;\n\n");
            }
            writer.close();
        } catch(IOException e) {
            System.out.println("Error occurred");
            e.printStackTrace();
        }

    }
}