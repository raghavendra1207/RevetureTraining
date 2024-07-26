public class PrimeOrComposite
{
	public static void main(String args[])
	{
		int a=31;
		int factors=0;
		for(int i=1;i<a/2;i++)
		{
			if(a%i==0){
				factors++;
			}
		}
		if(factors==1){
		System.out.println("prime");
		}
		else{
		System.out.println("composite");
		}
	}
}