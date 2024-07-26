package demo;

import java.lang.reflect.*;
import com.entity.*;
public class ReflectDemo {
	public static void main(String[] args) throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException, NoSuchMethodException, InvocationTargetException {
		Field [] f1=PrivateDeclaration.class.getDeclaredFields(); 
		for(Field n:f1) {
			System.out.println(n.getName());
			
			
	}
		Field fieldobj=PrivateDeclaration.class.getDeclaredField("p");
		fieldobj.setAccessible(true);
		fieldobj.set("p",4);
		
		
		Method m1=PrivateDeclaration.class.getDeclaredMethod("getName");
		m1.setAccessible(true);
		System.out.println(m1.invoke("getName()"));
//		System.out.println(m1.invoke(PrivateDeclaration.getName()));
		
		
					
		
		
		
		
			
			
		
	}

}
