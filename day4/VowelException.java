
import java.util.Set;

import javax.sound.midi.Soundbank;

public class VowelException  {

    public void containsVowel(String str1) throws CreateException{
        str1=str1.toLowerCase();
        char[] array2=str1.toCharArray();
        char[] vowelArray={'a','e','i','o','u'};
        int flag=0;
        for(int i=0;i<array2.length;i++){
            for(int j=0;j<vowelArray.length;j++){
                if(array2[i]==vowelArray[j]){
                    flag=1;
                }
            }
            
        }
        if(flag==1){
            System.out.println("it contains the vowel");
        }
        else{
            throw new CreateException("Error Occured"+" String not contains vowel");
        }
    }
    public static void main(String[] args) {
        VowelException ar1=new VowelException();
        try{
            ar1.containsVowel("bcd");
        }
        catch(Exception e){
            System.out.println(e);
        }
    }
    
}
class CreateException extends Exception
{
    public CreateException(String message){
        super(message);
    }
}
