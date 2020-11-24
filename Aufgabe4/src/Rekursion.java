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

    public static void main(String[] args) {

        String test = replaceUmlautIterative("äeaeaedaäöööööö");

        System.out.println(test);
    }
}
