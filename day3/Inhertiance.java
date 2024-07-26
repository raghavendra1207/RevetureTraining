class Parent{
	public void parentClass() {
		System.out.println("this is parent class method");
	}
}

public class Inhertiance extends Parent{
	
	public void childClass() {
		System.out.println("this is child class method");
	}
	public static void main(String args[]) {
		Inhertiance chd=new Inhertiance();
		chd.parentClass();
		chd.childClass();
	}
	
	

	
}