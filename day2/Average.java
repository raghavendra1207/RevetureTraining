public class Average {
    public static void main(String args[]){
        int[] arr={1,2,3,4,5};
        int sum1=0;
        for(int i:arr){
            sum1+=i;
        }
        System.out.println((float)sum1/arr.length);
    }
    
}
