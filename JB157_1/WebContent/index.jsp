<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<style type="text/css">
	li.{
		font-size:10px;
	}
</style>
</head>
<body>
<jsp:useBean id="student" class="com.fly.bean.Student">
<jsp:setProperty property="id" name="student" value="07" />
<jsp:setProperty property="name" name="student" value="ӱ���" />
<jsp:setProperty property="age" name="student" value="18" />
<jsp:setProperty property="sex" name="student" value="Ů" />
<jsp:setProperty property="classes" name="student" value="���꼶һ��" />
</jsp:useBean>
<h1>ѧ����Ϣ</h1>
	<ul>
		<li>
			ѧ��:<%= student.getId() %>
		</li>
		<li>
			����:<%= student.getName() %>
		</li>
		<li>
			����:<%= student.getAge() %>
		</li>
		<li>
			�Ա�:<%= student.getSex() %>
		</li>
		<li>
			�༶:<jsp:getProperty property="classes" name="student"/><br>
			<jsp:getProperty property="classes" name="student"/><br>
		</li>
	</ul>

</body>
</html>