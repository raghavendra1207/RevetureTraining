interface Class1
{
    void getArea();
    void getParameter();
}


public class Interface1 implements Class1{
    
    public void getArea()
    {
        System.out.println("the area method");
    }
    public void getParameter(){
        System.out.println("the Perimeter method");
    }
    public static void main(String args[]){
        Interface1 obj1=new Interface1();
        obj1.getArea();
        obj1.getParameter();
    }
    
}
