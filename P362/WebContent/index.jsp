<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName()+":" + request.getServerPort()+path+"/";
%>
<h3>�����û������û��Ƿ����</h3>
<s:set name="score1" value="#parameters.score[0]"/>
��ѯ����ǣ�
<s:if test="#score==mrs">
	����
</s:if>
<s:elseif test="#score==mrsoft">
	����
</s:elseif>
<s:else>
	������
</s:else>
<br>
xianshi:<s:property value="#parameters.score[0]"/>
<br>
di 2 ti:
<br>