public class UnmodifiableFraction implements Fraction {

    private Fraction fraction;

    //Copy Constructor
    UnmodifiableFraction(Fraction fr){
        this.fraction = fr;

    }

    public  int getNumerator() {
        return fraction.getNumerator();
    }

    public int getDenominator() {
        return fraction.getDenominator();
    }

    public void setNumerator(int numerator) {
        throw new UnsupportedOperationException("Some one tried to change a numerator...");

    }

    public void setDominator(int denominator) {
        throw new UnsupportedOperationException("Some one tried to change a denominator...");
    }

    public String toString(){
        return fraction.toString();
    }
}

