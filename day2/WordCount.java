public class WordCount {
    public static void main(String args[]){
        String words="hi how are you?";
        String[] word_Cou=words.split(" ");
        System.out.println(word_Cou.length);
        int count=0;
        for(int i=0;i<words.length();i++){
            if(words.charAt(i)==' '){
                count++;
            }
        }
        System.out.println(count+1);
    }
}
