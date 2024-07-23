import java.util.HashMap;
public class ContainsDuplicates {
    public static void main(String[] args){
        HashMap<Integer,Integer> a=new HashMap<Integer,Integer>();
        int[] ar={1,1,2,3,4};
        for(int i=0;i<ar.length-1;i++){
            for(int j=i+1;j<ar.length;j++){
                if(ar[i]==ar[j]){
                    System.out.println("True");
                    break;
                }
            }
        }

    }
    
}
