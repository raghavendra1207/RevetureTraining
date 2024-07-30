public class ExceptionHandling {
    public static void main(String args[]){
        try{
            int n1=5;
            int n2=n1/0;
            System.out.println("hi");
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
    
}
