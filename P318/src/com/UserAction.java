package com;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String info;
	public String add() throws Exception{
		info="添加用户信息";
		return "add";
	}
	public String update() throws Exception{
		info="更新用户信息";
		return "update";
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
}
