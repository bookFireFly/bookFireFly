package com.main;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import com.dao.AddDAO;
import com.user.User;

public class Manger {

	public static void main(String[] args) {
		Resource resource = new ClassPathResource("applicationContext.xml");
		BeanFactory factory = new XmlBeanFactory(resource);
		AddDAO addDAO = (AddDAO) factory.getBean("transactionProxy");
		User user = new User();
		user.setName("张三");
		user.setAge(30);
		user.setSex("男");
		addDAO.addUser(user);
	}

}
