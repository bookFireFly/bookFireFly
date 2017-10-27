package com.lyp.bean;

import java.io.Serializable;

public class Email implements Serializable {
	private static final long serialVersionUID = 1L;
	private String mailAdd;
	private boolean email;
	
	public Email() {

	}

	public Email(String mailAdd) {
		super();
		this.mailAdd = mailAdd;
	}
	
	public boolean isEmail() {
		String regex = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"; 
		if (mailAdd.matches(regex)) {
			email = true;
		}
		return email;
	}

	public String getMailAdd() {
		return mailAdd;
	}

	public void setMailAdd(String mailAdd) {
		this.mailAdd = mailAdd;
	}
	
	
}
