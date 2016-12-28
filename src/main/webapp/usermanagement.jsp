<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@page import="org.apache.shiro.SecurityUtils"%>
<%@page import="org.apache.shiro.subject.Subject"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>User management</title>
<%@ include file="/headstyle.jsp" %>
</head>
<body>
	
<div class="container">
  <h2>Users Table</h2>           
  <table class="table">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
		<shiro:hasPermission name="userDelete"><th>Delete link</th></shiro:hasPermission>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
		<shiro:hasPermission name="userDelete"><td><a href="#">delete</a></td></shiro:hasPermission>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
		<shiro:hasPermission name="userDelete"><td><a href="#">delete</a></td></shiro:hasPermission>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
		<shiro:hasPermission name="userDelete"><td><a href="#">delete</a></td></shiro:hasPermission>
      </tr>
    </tbody>
  </table>
  <%@ include file="/timefooter.jsp" %>
</div>
	

	

</body>
</html>