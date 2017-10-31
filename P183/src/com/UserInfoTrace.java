package com;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

/**
 * Application Lifecycle Listener implementation class UserInfoTrace
 *
 */
@WebListener
public class UserInfoTrace implements HttpSessionBindingListener {
	
	private String user;
	private UserInfoList container = UserInfoList.getInstance();
	
	
    /**
     * Default constructor. 
     */
    public UserInfoTrace() {
        user = "";
    }

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	/**
     * @see HttpSessionBindingListener#valueBound(HttpSessionBindingEvent)
     */
    public void valueBound(HttpSessionBindingEvent event)  { 
         // TODO Auto-generated method stub
    	System.out.println("上线" + this.user);
    }

	/**
     * @see HttpSessionBindingListener#valueUnbound(HttpSessionBindingEvent)
     */
    public void valueUnbound(HttpSessionBindingEvent event)  { 
         // TODO Auto-generated method stub
    	System.out.println("下线" + this.user);
    	if (user != "") {
    		container.removeUserInfo(user);
    	}
    }
	
}
