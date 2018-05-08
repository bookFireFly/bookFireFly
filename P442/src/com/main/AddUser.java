package com.main;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.core.JdbcTemplate;

public class AddUser {
	public static void main(String[] args) {
		JdbcTemplate jtl = null;
		Resource resource = new ClassPathResource("applicationContext.xml");
		BeanFactory factory = new XmlBeanFactory(resource);
		jtl = (JdbcTemplate) factory.getBean("jdbcTemplate");
		String sql = "insert into tb_user(name,age,sex) values ('小明','23','男')";
		jtl.update(sql);
		System.out.println("添加操作执行成功");
	}
}
