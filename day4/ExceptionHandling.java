public class ExceptionHandling {
    public static void main(String args[]){
        try{
            int n1=5;
            int n2=n1/0;
        }
        catch(Exception e){
            System.out.println(e.getMessage());
        }
    }
    
}
