import java.util.Arrays;
import java.util.Stack;

public class Temperatures {
    public int[] dailyTemperatures(int[] temperatures) {
        Stack<Integer> st=new Stack();
        int[] arr1=new int[temperatures.length];
        for(int i=0;i<temperatures.length;i++){
            int ele=temperatures[i];
           while(!(st.empty()) && temperatures[st.peek()]<ele){
            arr1[st.peek()]=i-st.pop();
           }
           st.push(i);
        }
        return arr1;    
    }

    public static void main(String[] args) {
      Temperatures temp=new Temperatures();
      System.out.println(Arrays.toString(temp.dailyTemperatures(new int[] {73,74,75,71,69,72,76,73})));

    }
}