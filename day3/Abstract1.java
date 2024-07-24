abstract class Abs
{
    abstract void abstractMethod();
    public void nonAbstractMethod(){
        System.out.println("this is non abstract method in abstract class");
    }
}

public class Abstract1 extends Abs {
    public void abstractMethod(){
        System.out.println("this is Abstract method");
    }
    public static void main(){
        Abstract1 obj1=new Abstract1();
        obj1.abstractMethod();
        obj1.nonAbstractMethod();

    }
    
}
