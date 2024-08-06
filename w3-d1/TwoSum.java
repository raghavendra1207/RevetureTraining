import java.util.HashMap;
import java.util.Arrays;
public class TwoSum {
    public int[] twoSum(int[] nums, int target) {
        HashMap<Integer,Integer> hm=new HashMap();
       
        for(int i=0;i<nums.length;i++){
            hm.put(nums[i],i);
            
        }
        for(int i=0;i<nums.length;i++)
        {
           int numb=target-nums[i];
           if(hm.containsKey(numb) && hm.get(numb)!=i){
            return new int[] {i,hm.get(numb)};
           }
        }
        return new int[]{};
    
}
public static void main(String[] args) {
    TwoSum ts=new TwoSum();
    int[] ar={1,2,3,4,5,6};
    System.out.println(Arrays.toString(ts.twoSum(ar, 9)));
}
}