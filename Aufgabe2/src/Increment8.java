import java.io.File;



public class Increment8 {
    public static void main(String[] args) {

        File tstGenFile = new File("D:\\Uni\\ProgrammierModelle\\Aufgabe2\\src\\Increment8.tst");
        File cmpGenFile = new File("D:\\Uni\\ProgrammierModelle\\Aufgabe2\\src\\Increment8.cmp");

        FileGenerator fileGen = new FileGenerator();
        fileGen.generate(tstGenFile,cmpGenFile);


    }
}
