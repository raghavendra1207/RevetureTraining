class parent1
{
    parent1(){
        System.out.println("parent class");
    }
}

public class UnboxingAndAutoBoxing extends parent1{
    public static void main(String args[]){
        //Widening Type Casting
        int a=100;
        float b=a;
        System.out.println("Wideing type casting int to float "+a+" "+b);

        //norrowing TypeCasting

        a=(int)b;
        System.out.println("Norrowing type casting int to float "+b+" "+a);

        //AutoBoxing
        int n1=25;
        Integer n2=n1 ;
        System.out.println("AutoBoxing int to Integer "+n1+" "+n2);

        //UnBoxing
         n1=Integer.valueOf(n2);
        
        System.out.println("UnBoxing Integer to Int "+n2+" "+n1);


        parent1 unb=new UnboxingAndAutoBoxing();
        UnboxingAndAutoBoxing unb2= (UnboxingAndAutoBoxing)new UnboxingAndAutoBoxing();



    }
}
