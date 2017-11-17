package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;



public class Batch {
	
	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/db_database10";
			String username = "root";
			String password = "1234";
			conn = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public int saveBatch() {
		int row = 0;
		Connection conn = getConnection();
		String sql = "insert into tb_student_batch(id,name,sex,age)value(?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			Random random = new Random();
			for (int i = 0; i < 10; i++) {
				ps.setInt(1, i+1);
				ps.setString(2, "st" + String.valueOf(i));
				ps.setBoolean(3, i % 2 == 0 ? true : false);
				ps.setInt(4, random.nextInt(5)+10);
				ps.addBatch();
			}
			int[] rows = ps.executeBatch();
			row = rows.length;
			ps.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return row;
	}
}
