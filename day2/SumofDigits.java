public class SumofDigits {
    public static void main(String args[]){
        int a=123;
        int sum1=0;
        while(a>0){
            int digit=a%10;
            sum1+=digit;
            a=a/10;
        }
        System.out.println(sum1);
    }
}
