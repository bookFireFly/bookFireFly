package com.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.user.User;

public class Manger extends AbstractController {
	
	private User user;
	
	
	
	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		if (name.equals(user.getName()) && password.equals(user.getPassword())) {
			return new ModelAndView("succ");
		}else{
			return new ModelAndView("error");
		}
	}

}
