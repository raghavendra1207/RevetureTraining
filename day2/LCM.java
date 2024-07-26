public class LCM
{
public static void main(String args[])
{
	int a=12,b=18;
	if(b>a)
	{
		a=a^b;
		b=a^b;
		a=a^b;
	}
	
	if(a%b==0){
		System.out.println(a);
	}
	else
	{
		for(int i=a;i<=a*b;i++){
			if(i%a==0 && i%b==0)
			{
				System.out.println(i);
				break;
			}
		}

	}
}
}