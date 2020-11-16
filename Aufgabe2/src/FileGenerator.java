import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class FileGenerator {
    public void generate(File tstGenFile, File cmpGenFile) {
        try {
            FileWriter testFileWriter = new FileWriter(tstGenFile.getAbsolutePath());
            FileWriter cmpFileWriter = new FileWriter(cmpGenFile.getAbsolutePath());

            //"Header" der Datein vorbereiten

            cmpFileWriter.write("|    a     |   out    | overflow |\n");
            testFileWriter.write("load Increment8.hdl,\n"
                    + "output-file Increment8.out,\n" + "compare-to Increment8.cmp,\n"
                    + "output-list a%B1.8.1 out%B1.8.1 overflow%B4.1.5;\n\n");

            for (int i = 0; i < 256; i++) {
                String input = Integer.toBinaryString(i);
                String output = Integer.toBinaryString(i + 1);

                //Wenn noch was leer ist, mit 0 befüllen
                while (input.length() < 8) {
                    input = "0" + input;
                }

                //erechneten Wert in die jeweiligen Datein rein schreiben
                cmpFileWriter.write("| " + input + " | ");

                testFileWriter.write("set a %B" + input + ",\neval,\noutput;\n\n");

                //noch 0en bei dem out befüllen
                while (output.length() < 8) {
                    output = "0" + output;
                }

                //hacky way
                if(i == 255){
                    output = "00000000";
                    cmpFileWriter.write(output + " |    1     |\n");
                }
                else{
                    cmpFileWriter.write(output + " |    0     |\n");
                }
            }

            cmpFileWriter.close();
            testFileWriter.close();

        } catch (IOException e) {
            System.out.println("An error occurred!");
            e.printStackTrace();
        }
    }
}
