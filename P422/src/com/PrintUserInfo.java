package com;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PrintUserInfo {
	public static void main (String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserInfo ui = (UserInfo) context.getBean("user1");
		ui.printInfo();
	}
}
