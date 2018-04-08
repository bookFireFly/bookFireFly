package com.main;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import com.user.User;

public class Manger {

	public static void main(String[] args) {
		Resource resource = new ClassPathResource("applicationContext.xml");
		BeanFactory factory = new XmlBeanFactory(resource);
		User user =  (User) factory.getBean("user");
//		System.out.println(""+user.getName());
//		System.out.println("用户姓名——"+user.getName());//输出用户的姓名
//        System.out.println("用户年龄——"+user.getAge());//输出用户的年龄
//        System.out.println("用户性别——"+user.getSex());//输出用户的性别
		user.printInfo();
	}

}
