public class Rekursion {

    static String substitute(char c){

        switch(c){
            case 'ä':
                return "ae";

            case 'ö':
                return "oe";

            case'ü':
                return "ue";
        }
        return c + "";
    }

    static public String replaceUmlautIterative(String s){
        String result = "";
        for(int i = 0; i < s.length(); i++){
            result += substitute(s.charAt(i));
        }
        return result;
    }

    static public String replaceUmlautRek(String s, int n, int counter, String result){
        //System.out.println(n);
        //System.out.println(s);

        if(n > 0) {
          //System.out.println("n: "+n);
          result += substitute(s.charAt(counter));
          counter++;
          //System.out.println("counter"+counter);
          //System.out.println("sub String: "+result);
         return replaceUmlautRek(s,n-1, counter, result);
        }
        return result;
    }

    public static void main(String[] args) {
        String result = "";
        String input = "äeäeäadäada#dawäwqp+qä#dqü+q#q+eüq+eqüelq+#qeüqe+e#qü+q#";
        int counter = 0;
        int i = input.length();
        String test = replaceUmlautIterative(input);
        String testRek = replaceUmlautRek(input, i, counter, result);
        System.out.println("input  : "+input);
        System.out.println("test   : "+test);
        System.out.println("testRek: "+testRek);
    }
}
