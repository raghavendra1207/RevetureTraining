import java.util.HashMap;
public class Anagram {
    public boolean isAnagram(String s, String t) {
        HashMap<Character,Integer> hm=new HashMap();
        for(int i=0;i<s.length();i++){
            Character c1=s.charAt(i);
            if(hm.containsKey(c1))
            {
                hm.put(c1,hm.get(c1)+1);
            }
            else{
                hm.put(c1,1);
            }

        }
        for(int i=0;i<t.length();i++){
            Character ch1=t.charAt(i);
            if(hm.containsKey(ch1) && hm.get(ch1)>0){
                hm.put(ch1,hm.get(ch1)-1);
            }
            else{
                return false;
            }
        }
        for(int i:hm.values()){
            if(i!=0){
                return false;
            }
        }
        return true;

    }

    public static void main(String[] args) {
        Anagram ag=new Anagram();
        System.out.println(ag.isAnagram("anagram", "nagaram"));
    }
}

