public class  HexatoOcta
  {
    public static void main(String args[])
    {
      String a="0x1F";
     int ab= Integer.parseInt(a);
      
      int rem=ab%8;
	int que=ab/8;
	System.out.println(que+""+rem);	
      
    }  
  }
