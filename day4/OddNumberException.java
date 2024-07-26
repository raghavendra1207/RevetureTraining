public class OddNumberException
{
    public void odd(int num1){
        if((num1 & 1)!=0){
            throw new IllegalArgumentException(num1+" is odd");

        }

    }

    public  static void main(String args[]){
        OddNumberException obj1=new OddNumberException();
        try{
            obj1.odd(5);
        }
        catch(IllegalArgumentException e){
            System.out.println(e.getMessage());
        }
    }
}
