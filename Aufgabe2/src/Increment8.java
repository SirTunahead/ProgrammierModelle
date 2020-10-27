import java.io.File;



public class Increment8 {
    public static void main(String[] args) {

        compareTable cmp = new compareTable();
        testGenerator tGen = new testGenerator();

        File testGenFile = new File("D:\\Uni\\ProgrammierModelle\\Aufgabe2\\src\\Increment8.tst");
        File tableCompFile = new File("D:\\Uni\\ProgrammierModelle\\Aufgabe2\\src\\Increment8.cmp");

        tGen.initFile(testGenFile);
        cmp.initCompare(tableCompFile);


    }
}
