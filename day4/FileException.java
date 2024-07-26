import java.io.FileWriter;
import java.io.File;
import java.util.Scanner;
public class FileException {
public static void main(String args[]){
    try{
        FileWriter fr=new FileWriter("myfile.txt");
        fr.write("this is file exception");
        fr.close();
        File myobj=new File("my1.txt");
        Scanner sc=new Scanner(myobj);
        while(sc.hasNextLine()){
            String line=sc.nextLine();
            System.out.println(line);
        }
    }
    catch(Exception e){
        System.out.println(e);
    }
}
    
}
