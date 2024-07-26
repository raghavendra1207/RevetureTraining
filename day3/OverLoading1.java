
public class OverLoading1 {
    public void firstMethod()
    {
        System.out.println("this is the not parameterised method");
    }    
    public void firstMethod(int a){
        System.out.println("this method have parameters so it overloaded the non parameterised one");
    }
    public static void main(String args[]){
        OverLoading1 obj1=new OverLoading1();
        obj1.firstMethod();
        obj1.firstMethod(4);
    }
}
