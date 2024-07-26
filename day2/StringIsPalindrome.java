public class StringIsPalindrome {
    public static void main(String args[]){
        String str="abcba";
        String reverseWord="";
        for(int i=str.length()-1;i>=0;i--)
        {
            reverseWord+=String.valueOf(str.charAt(i));
        }
        System.out.println(str.equals(reverseWord));
    }
}
