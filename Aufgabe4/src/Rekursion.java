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

    static public String replaceUmlautRec(String s, int n, int counter, String result){

        if(n > 0) {
            result += substitute(s.charAt(counter));
            counter++;
         return replaceUmlautRec(s,n-1, counter, result );
        }
        return result;
    }

    static public String tailRec(String s, String result, int n){
        if(n<s.length()){
            return tailRec(s, result+substitute(s.charAt(n)),n+1);
        }else{
            return result;
        }
    }

    public static void main(String[] args) {
        String result = "";
        String input = "äeäeäadäada#dawäwqp+qä#dqü+q#q+eüq+eqüelq+#qeüqe+e#qü+q#";
        int counter = 0;
        int i = input.length();

        String test = replaceUmlautIterative(input);
        String testRek = replaceUmlautRec(input, i, counter, result);
        String tail = tailRec(input,"",0);

        System.out.println("input  : "+input);
        System.out.println("test   : "+test);
        System.out.println("testRek: "+testRek);
        System.out.println("tailrec: "+tail);
    }
}
