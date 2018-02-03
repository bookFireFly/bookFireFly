package com;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private Map<String,Object> request;
	private Map<String,Object> session;
	private Map<String,Object>	application;
	
	@SuppressWarnings("unchecked")
	public TestAction() {
		ActionContext context = ActionContext.getContext();
		request = (Map<String,Object>)context.get("request");
		session = (Map<String,Object>)context.getSession();
		application = (Map<String,Object>)context.getApplication();
	}
	
	public String execute() throws Exception{
		String info = "fire";
		request.put("info", info);
		session.put("info",info);
		application.put("info",info);
		return SUCCESS;
	}
}
