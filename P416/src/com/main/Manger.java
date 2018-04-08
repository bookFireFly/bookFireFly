package com.main;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import com.user.PrintInfo;

public class Manger {

	public static void main(String[] args) {
		Resource resource = new ClassPathResource("applicationContext.xml");
		BeanFactory factory = new XmlBeanFactory(resource);
		PrintInfo  printInfo = (PrintInfo) factory.getBean("printInfo");
		printInfo.PrintUser();
		
		
	}

}
