package com.wgh.core;

import java.io.InputStream; //����java.io.InputStream��
import java.sql.*; //����java.sql���е�������
import java.util.Properties; //����java.util.Properties��

/**
 *
 * @author administrator
 */

public class ConnDB {

	public ResultSet rs = null;

	public ResultSet executeQuery(String sql) {

		// �������ݿ�������ע�ᵽ����������
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// ���ݿ������ַ���
			String url = "jdbc:mysql://localhost:3306/db_database10";
			// ���ݿ��û���
			String username = "root";
			// ���ݿ�����
			String password = "1234";
			// ����Connection����
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
