package com.j2eearchitect.helloworld;
// local conflict 테스트
// remote conflict 테스트

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
