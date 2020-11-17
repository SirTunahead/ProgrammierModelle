import java.io.File;



public class Increment8 {
    public static void main(String[] args) {

        File tstGenFile = new File("E:\\Uni\\ProgrammierModelle\\Aufgabe2\\src\\Increment8.cmpt");
        File cmpGenFile = new File("E:\\Uni\\ProgrammierModelle\\Aufgabe2\\src\\Increment8.cmp");

        FileGenerator fileGen = new FileGenerator();
        fileGen.generate(tstGenFile,cmpGenFile);


    }
}
