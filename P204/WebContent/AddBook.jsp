<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��ӽ��</title>
</head>
<body>
<jsp:useBean id="book" class="com.Book"></jsp:useBean>
<jsp:setProperty property="*" name="book"/>
<%
	try{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/db_database10";
		String username = "root";
		String password = "1234";
		Connection conn = DriverManager.getConnection(url,username,password);
		String sql = "insert into tb_books(name,price,bookCount,author) values(?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, book.getName());
		System.out.println("name��"+book.getName());
		ps.setDouble(2, book.getPrice());
		ps.setInt(3, book.getBookCount());
		ps.setString(4, book.getAuthor());
		int row = ps.executeUpdate();
		if (row>0){
			out.print("�ɹ������ " + row + "�����ݣ�");
		}
		ps.close();
		conn.close();
		
	}catch(Exception e){
		out.print("ͼ����Ϣ���ʧ�ܣ�");
		e.printStackTrace();
	}
%>
<br>
<a href="index.jsp">����</a>
</body>
</html>