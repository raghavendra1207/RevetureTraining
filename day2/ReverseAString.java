public class ReverseAString {
    public static void main(String args[]){
        String word="abc";
        String reverseWord="";
        for(int i=word.length()-1;i>=0;i--)
        {
            reverseWord+=String.valueOf(word.charAt(i));
        }
        System.out.println(reverseWord);
    }   
}
