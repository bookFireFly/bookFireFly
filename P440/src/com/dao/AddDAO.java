package com.dao;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.user.User;

public class AddDAO extends JdbcDaoSupport {
	public void addUser(User user) {
		String sql="insert into tb_user (name,age,sex) values('" +
				user.getName() + "','" + user.getAge() + "','" + user.getSex() + "')";
		getJdbcTemplate().execute(sql);
//		int a = 0;
//		a = 9/a;
//		getJdbcTemplate().execute(sql);
	}
}
