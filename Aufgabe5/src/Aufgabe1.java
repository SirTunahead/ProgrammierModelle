public class Aufgabe1 {
    public static void main(String[] args)throws Exception {
        try{
            FractionImplementation number = new FractionImplementation(1,2);
            UnmodifiableFraction unmodNumb = new UnmodifiableFraction(number);
            String numberStr = number.toString();
            String unmodStr = unmodNumb.toString();

            System.out.println("number: "+numberStr);
            System.out.println("unmodabble Number: "+unmodStr);

            number.setNumerator(40);
            number.setDominator(50);
            numberStr = number.toString();
            System.out.println("number: "+numberStr);

            unmodNumb.setNumerator(number.getNumerator());
            unmodNumb.setDominator(number.getNumerator());
        }catch(UnsupportedOperationException e){
            System.out.println("Exception thrown: " +e);
        }

    }
}
