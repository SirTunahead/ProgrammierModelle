public class UnmodifiableFraction implements Fraction {

    private int numerator, denominator;

    //Copy Constructor
    UnmodifiableFraction(FractionImplementation fr){
        this.numerator = fr.getNumerator();
        this.denominator = fr.getDenominator();
    }

    public  int getNumerator() {
        return numerator;
    }

    public int getDenominator() {
        return denominator;
    }

    public void setNumerator(int numerator) {
        throw new UnsupportedOperationException("Some one tried to change a numerator...");

    }

    public void setDominator(int denominator) {
        throw new UnsupportedOperationException("Some one tried to change a denominator...");
    }

    public String toString(){
        return numerator+"/"+denominator;
    }
}

