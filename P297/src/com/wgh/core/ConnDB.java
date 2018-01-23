package com.wgh.core;

import java.io.InputStream; //导入java.io.InputStream类
import java.sql.*; //导入java.sql包中的所有类
import java.util.Properties; //导入java.util.Properties类

/**
 *
 * @author administrator
 */

public class ConnDB {

	public ResultSet rs = null;

	public ResultSet executeQuery(String sql) {

		// 加载数据库驱动，注册到驱动管理器
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/db_database10";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "1234";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return rs;
	}

}
