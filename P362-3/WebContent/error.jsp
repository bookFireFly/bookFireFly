<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
    <head>
        <title><s:text name="errorPage"/></title>
    </head>
    <body>
        ${requestScope.tip}
    </body>
</html>