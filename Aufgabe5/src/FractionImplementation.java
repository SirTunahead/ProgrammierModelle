public class FractionImplementation implements Fraction {

    private int numerator, denominator;

    FractionImplementation(int numerator, int denominator){
        this.numerator = numerator;
        this.denominator = denominator;
    }

    public int getNumerator() {
        return numerator;
    }

    @Override
    public int getDenominator() {
        return denominator;
    }

    @Override
    public void setNumerator(int numerator) {
        this.numerator=numerator;

    }

    @Override
    public void setDominator(int denominator) {
        this.denominator=denominator;
    }

    public String toString(){
        return numerator+"/"+denominator;
    }
}
