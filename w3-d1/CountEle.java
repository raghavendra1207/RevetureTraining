import java.util.HashMap;
import java.util.Map;

public class CountEle {

     public static void main(String[] args) {
        HashMap<Integer,Integer> hs=new HashMap<>();

        int[] arr1={1,2,3,1,1};
        for(int i:arr1){
            if(hs.containsKey(i)){
                hs.put(i,hs.get(i)+1);
            }
            else{
                hs.put(i,1);
            }
        }
        for(Map.Entry<Integer,Integer> j:hs.entrySet()){
            System.out.println(j);
        }
     }
    
}
