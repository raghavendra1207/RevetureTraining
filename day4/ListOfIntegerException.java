import java.util.Scanner;
import java.util.Arrays;
class Duplicate_Number_Exception extends Exception{
    public  Duplicate_Number_Exception(String message){
        super(message);
    }
}
public class ListOfIntegerException {

    public int[] listOf() throws Duplicate_Number_Exception{
        Scanner sc=new Scanner(System.in);
        int length1=sc.nextInt();
        int[] arr1=new int[length1];
        int flag=0;
        for(int i=0;i<length1;i++){
            int ele=sc.nextInt();
            arr1[i]=ele;
        }
        for(int i=0;i<length1;i++){
            
            
            for(int j=i+1;j<length1;j++){
                if(i!=j && arr1[i]==arr1[j]){
                    flag=1;
                    throw new Duplicate_Number_Exception("DuplicateNumberFound "+"arr1["+i+"]");
                    
                }
            
                
            }
            if(flag==1){
                break;
            }
            


        }
        return arr1;
    }
    public static void main(String[] args) {
        try{
        ListOfIntegerException arr1=new ListOfIntegerException();
        arr1.listOf();
        }
        catch(Exception e){
            System.out.println(e);
        }
        
    }
}
