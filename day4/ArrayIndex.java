public class ArrayIndex {

    public static void main(String args[]){
        int[] arr=new int[5];
        try{
            arr[1]=arr[5];
        }
        catch(ArrayIndexOutOfBoundsException e)
        {
            System.out.println(e);
        }
    }
    
}
