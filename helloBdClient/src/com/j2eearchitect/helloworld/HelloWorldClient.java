package com.j2eearchitect.helloworld;
// 충돌예제
public class HelloWorldClient {
	public static void main(String[] args) {
		
		try {
			HelloWorldBD hello =  HelloWorldBD.getInstance();
			
			System.out.println(hello.sayHello("EJB 3.0"));
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
