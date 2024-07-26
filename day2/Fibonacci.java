public class Fibonacci {
    public static void main(String[] args) {
    
    
    int n=5,n1=0,n2=1,count=0;
    System.out.print(n1+"\t"+n2);
    while(count<=n-3){
        int next=n1+n2;
        System.out.print("\t"+next);
        count++;
        n1=n2;
        n2=next;

    }
}
}
