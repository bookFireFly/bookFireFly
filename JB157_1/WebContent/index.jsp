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
<jsp:setProperty property="name" name="student" value="颖火虫" />
<jsp:setProperty property="age" name="student" value="18" />
<jsp:setProperty property="sex" name="student" value="女" />
<jsp:setProperty property="classes" name="student" value="二年级一班" />
</jsp:useBean>
<h1>学生信息</h1>
	<ul>
		<li>
			学号:<%= student.getId() %>
		</li>
		<li>
			姓名:<%= student.getName() %>
		</li>
		<li>
			年龄:<%= student.getAge() %>
		</li>
		<li>
			性别:<%= student.getSex() %>
		</li>
		<li>
			班级:<jsp:getProperty property="classes" name="student"/><br>
			<jsp:getProperty property="classes" name="student"/><br>
		</li>
	</ul>

</body>
</html>