import demo1.ConstructorSettingAndGetting;

public class SettingAndGetting{
    public static void main(String args[]){

        ConstructorSettingAndGetting new1=new ConstructorSettingAndGetting("pawan",22,"completed");
        System.out.println(new1.getName());
        System.out.println(new1.getAge());
        System.out.println(new1.getStatus());

        new1.setName("pawan Kalyan");
        new1.setAge(23);
        new1.setStatus("not completed");

        System.out.println(new1.getName());
        System.out.println(new1.getAge());
        System.out.println(new1.getStatus());

    }
}