import java.util.Scanner;
import java.util.Arrays;
public class javaArrayImplemetation {
    public static void main(String args[]){
        int n1;
        int n2=10;
        int Arr1[]=new int[5];
        int Arr2[]={1,2,3,4,5};
        int[] Arr3=new int[Arr1.length];
        Arr1[0]=4;
        Arr1[1]=2;
        Arr1[2]=1;
        Arr1[3]=3;
        Arr1[4]=5; 
        Scanner sc=new Scanner(System.in);
        
        // for(int i=0;i<Arr1.length;i++){
        //     int ele=sc.nextInt();
        //     Arr1[i]=ele;
            

        // }
        System.out.println(Arrays.sort(Arr1));
        System.out.println(Arrays.toString(Arr1));
    }
}
