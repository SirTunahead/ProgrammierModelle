import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class FileGenerator {
    public void generate(File tstGenFile, File cmpGenFile) {
        try {
            FileWriter testFileWriter = new FileWriter(tstGenFile.getAbsolutePath());
            FileWriter cmpFileWriter = new FileWriter(cmpGenFile.getAbsolutePath());

            cmpFileWriter.write("|      a       |     out      |\n");
            testFileWriter.write("load Increment8.hdl,\n"
                    + "output-file Increment8.out,\n" + "compare-to Increment8.cmp,\n"
                    + "output-list a%B3.8.3\n" + "out%B3.8.3;\n\n");

            for (int i = 0; i < 255; i++) {
                String input = Integer.toBinaryString(i);
                String output = Integer.toBinaryString(i + 1);
                while (input.length() < 8) {
                    input = "0" + input;
                }
                cmpFileWriter.write("|   " + input + "   |   ");
                testFileWriter.write("set a %B" + input + ",\neval,\noutput;\n\n");
                while (output.length() < 8) {
                    output = "0" + output;
                }
                cmpFileWriter.write(output + "   |\n");
            }

            cmpFileWriter.close();
            testFileWriter.close();

        } catch (IOException e) {
            System.out.println("An error occurred!");
            e.printStackTrace();
        }
    }
}
