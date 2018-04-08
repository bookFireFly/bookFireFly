package com;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OGNLAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String name;
	private Student student ;
	Map<String,Object> request;
	
	@SuppressWarnings("unchecked")
	public OGNLAction() {
		student = new Student();
		student.setId(1);
		student.setName("firefly");
		name = "tom";
		request = (Map<String,Object>)ActionContext.getContext().get("request");
	}

	@Override
	public String execute() throws Exception {
		request.put("info", "request-test");
		return super.execute();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	
	
}
