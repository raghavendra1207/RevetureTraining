public class IsSorted {
    public static void main(String args[]){
        int[] arr={1,2,3,4,5};
        int Flag=0;
        for(int i=0;i<arr.length-1;i++){
            if(arr[i]>arr[i+1]){
                Flag=1;
                System.out.println("False");
                break;
            }
        }
        if(Flag==0){
            System.out.println("True");
        }
    }
    
}
