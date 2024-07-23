
public class CombineStrings {
    public static void main(String args[]){
        StringBuilder stb=new StringBuilder("Abc");
        
        System.out.println(stb.append("cde"));
        System.out.println(stb.insert(6,"fgh"));
        System.out.println(stb.length());
        String stb1=stb.toString();
        System.out.println(stb1.concat("igh"));
        stb1=stb1.concat("igh");
        System.out.println(stb1.indexOf("i"));
    }
}
