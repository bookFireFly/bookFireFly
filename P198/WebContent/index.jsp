<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/test";
	String username = "root";
	String password = "1234";
	Connection conn = DriverManager.getConnection(url,username,password);
	if (conn != null){
		out.println("���ݿ����ӳɹ�!");
		conn.close();
	}else{
		out.println("���ݿ�����ʧ��!");
	}
}catch(ClassNotFoundException e){
	e.printStackTrace();
}catch(SQLException e){
	e.printStackTrace();
}

%>
</body>
</html>