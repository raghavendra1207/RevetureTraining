import java.util.Arrays;
public class CombineArrays {
    public static void main(String args[])
    {
        int[] arr1={1,2,3};
        int[] arr2={4,5,6};
        int comlen=arr1.length+arr2.length;
        int[] combined=Arrays.copyOf(arr1,comlen);
        
        for(int i=arr1.length;i<comlen;i++){
            combined[i]=arr2[i-arr1.length];
        }
        System.out.println(Arrays.toString(combined));
    }
}
