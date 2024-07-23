public class Contains1 {
    
    public static void main(String args[]){
        int[] a={1,2,3,4,5};
        int sum1=0;
        for(int i:a){
            if(i==10){
                sum1+=1;
                System.out.println("contains");
            }
            
        }
        if(sum1==0){
            System.out.println("not contains");
        }
    }
}
