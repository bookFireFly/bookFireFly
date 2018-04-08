package com.user;

public class PrintInfo {

	private User us;

	public User getUser() {
		return us;
	}

	public void setUser(User user) {
		this.us = user;
	}
	
	public void PrintUser() {
		System.out.println("P416");
		System.out.println("PrintInfo打印的User属性");
        System.out.println("----------------------");
        System.out.println("用户姓名--"+us.getName());//输出用户的姓名
        System.out.println("用户年龄--"+us.getAge());//输出用户的年龄
        System.out.println("用户性别--"+us.getSex());//输出用户的性别
	}
	
}
