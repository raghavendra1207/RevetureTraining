package com.demo1;

import static org.junit.Assert.*;

import org.junit.Test;

public class CalcTest {

	@Test
	public void test() {
		Calc obj1=new Calc();
		int result=obj1.multiply(5, 2);
		assertEquals(10,result);
		
	}

}
