package com;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	public User user;
	public String name;
	public String password;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	
	//execute()略
}
