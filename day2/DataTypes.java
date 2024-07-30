import java.util.*;
import java.util.Arrays;
import java.util.Scanner;
 public class DataTypes {
//[1,2,3,4,5,6]


// DataTypes.java 
public static void main(String args[])
{
String[] ArrayObj=new String[6];
ArrayObj[0]="ro";
ArrayObj[1]="ro";
ArrayObj[2]="ro";
ArrayObj[3]="ro";
ArrayObj[4]="ro";
ArrayObj[5]="ro";

Scanner sc=new Scanner(System.in);
int n1=sc.nextInt();

if((n1&1)==0){
System.out.println("even");
}
//1000 & 0001 0000 
//0011 & 0001 0001
System.out.println(Arrays.toString(ArrayObj));
	
}

}

