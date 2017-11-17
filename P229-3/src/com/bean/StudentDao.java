package com.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StudentDao {
	public Connection getConnection(){
		// 数据库连接
		Connection conn = null;
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/db_database11";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "1234";
			// 创建Connection连接
			conn = DriverManager.getConnection(url,username,password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 返回数据库连接
		return conn;
	}
	
	public List<Student> findStudent(){
		Connection conn = getConnection();
		List<Student> list = new ArrayList<Student>();
		try {
			Statement stmt = conn.createStatement();
			String sql = "select * from tb_student_add";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				Student student = new Student();
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setSex(rs.getString("sex"));
				student.setAge(rs.getInt("age"));
				student.setClasses(rs.getString("classes"));
				list.add(student);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
		
		
	}
	
	public void delete(int[] ids) {
		Connection conn = getConnection();
		try {
			String sql = "delete from tb_student_add where id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			for (int id : ids) {
				ps.setInt(1, id);
				ps.addBatch();
			}
			ps.executeBatch();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
}
