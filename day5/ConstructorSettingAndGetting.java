package demo1;
public class ConstructorSettingAndGetting {
	private String name;
	private int age;
	private String status;
	
	public ConstructorSettingAndGetting(String name,int age,String status){
		this.name=name;
		this.age=age;
		this.status=status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getStatus() {
		return "activity is "+status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	
	
}
