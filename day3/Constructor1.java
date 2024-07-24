class Super1
{
    Super1(){
        System.out.println("This is non parameterised constructor");

    }
    Super1(int a){
        this();
        System.out.println("this is parameterised constructor "  +a);
    }
}

class Sub1 extends Super1
{
    Sub1(){
        super();
        System.out.println("this is not paraterised constructor in child");

    }
    Sub1(int a)
    {
        super(4);
        System.out.println("THIS is parametiresed constructor in child calling parent constructor");
    }
}
public class Constructor1 {
    public static void main(String args[]){
        Sub1 obj1=new Sub1(4);
        Sub1 obj2=new Sub1();
        Super1 ob3=new Super1(5);
    }


    
}
