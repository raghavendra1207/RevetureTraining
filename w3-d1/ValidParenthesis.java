import java.util.Stack;

public class ValidParenthesis {
    public static void main(String[] args) {

        String paren="{{[]}";
        
        Stack<Character> st=new Stack<Character>();
        for(int i=0;i<paren.length();i++){
            
            if(paren.charAt(i)=='{' || paren.charAt(i)=='[' || paren.charAt(i)=='(')
            {
                st.push(paren.charAt(i));
            }
            else{
                if(paren.charAt(i)=='}' ){
                    if(st.peek()=='{'){
                        st.pop();
                    }
                }
                if(paren.charAt(i)==']' ){
                    if(st.peek()=='['){
                        st.pop();
                    }
                }
                if(paren.charAt(i)==')' ){
                    if(st.peek()=='('){
                        st.pop();
                    }
                }
                
            }
        }
        if(st.empty()){
            System.out.println("valid");
        }
        else{
            System.out.println("invalid");
        }

    }
}
