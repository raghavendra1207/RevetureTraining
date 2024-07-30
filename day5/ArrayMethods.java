// copyOff : copy of array by padding or truncating based on specified length
// copyOfRange: copy of array of a specific range
// fill : assign a value to all elemets of an array
// equals: checks in two arraysa are equal
// deepEquals: equality check for multi deimensional array
// sort: sort elements
// binarySearch: search elements
// toString : arr to string
// deeopToString: multi dimensional array to string
// setAll :used to initilize of modify array elemets based on index

import java.util.Arrays;
public class ArrayMethods
{
    public static void main(String[] args) {
        int[][] arr1={{1,2,3,4,5}}; 
        int[] arr2=new int[5];
         Arrays.fill(arr2,4);
        System.out.println(Arrays.deepToString(arr1)+Arrays.toString(arr2));
    }
}