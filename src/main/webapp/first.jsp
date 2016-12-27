<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@page import="org.apache.shiro.SecurityUtils"%>
<%@page import="org.apache.shiro.subject.Subject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>First</title>
</head>
<body>
	<h2>Hello There!</h2>

	<shiro:authenticated>
		<p>authenticated</p>
	</shiro:authenticated>
	<shiro:notAuthenticated>
		<p>Not authenticated</p>
	</shiro:notAuthenticated>



	<h3>What would you like to do today?</h3>
	<h4>
		<a href="usermanagement.jsp">User management</a>
	</h4>
	<h4>
		<a href="backoffice.jsp">Back Office Management</a>
	</h4>
	<h4>
		<a href="trademanagement.jsp">Trade Management</a>
	</h4>
	<h4>
		<a href="reportmanagement.jsp">Report Management</a>
	</h4>
	<h4>
		<a href="hedgemanagement.jsp">Hedge Management</a>
	</h4>


<!--%@ include file="/timefooter.jsp" %-->
</body>
</html>