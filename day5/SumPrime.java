public class SumPrime {
    public boolean isPrime(int n){
        int fact=0;
        for(int i=1;i<n;i++){
            if(n%i==0){
                fact+=1;

            }
        }
        if(fact==1){
            return true;
        }
        return false;
    }

    public int SumPrime1(int rangeLeft,int rangeRight){
        int min=0;
        int max=0;
        SumPrime obj1=new SumPrime();
        for(int i=rangeLeft;i<=rangeRight;i++){
            if(obj1.isPrime(i)){
                if(i<min){
                    min=i;
                }
                else if(i>max){
                    max=i;
                }
            }
        }
        Integer max1=max;
        Integer rangeLeft1=rangeLeft;
        if(rangeLeft<0){
            rangeLeft*=(-1);
        }
        if(rangeLeft>rangeRight){
            rangeLeft=rangeLeft^rangeRight;
            rangeRight=rangeLeft^rangeRight;
            rangeLeft=rangeLeft^rangeRight;
        }
        System.out.println(rangeLeft+" "+rangeRight);
        
        for(int i=rangeLeft;i<=rangeRight;i++){
            if(obj1.isPrime(i)){
                if(i<min){
                    min=i;
                }
                else if(i>max){
                    max=i;
                }
            }
        }
        if(max>=Integer.valueOf(rangeLeft1)){
            min=max*(-1);
        }
        System.out.println(min+" "+max1);
        return min+max1;
       
        }
    
    public static void main(String args[]){
        SumPrime obj1=new SumPrime();
        System.out.println(obj1.SumPrime1(-97, 50));

    }
    
}
