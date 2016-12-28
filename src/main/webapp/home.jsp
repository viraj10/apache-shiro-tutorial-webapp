<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  ~ Copyright (c) 2013 Les Hazlewood and contributors
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~     http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  --%>
<jsp:include page="include.jsp"/>
<!DOCTYPE html>
<html>
<head>
    <title>Apache Shiro Tutorial Webapp</title>
    <%@ include file="/headstyle.jsp" %>
</head>
<body>

    <h1>Apache Shiro Tutorial Webapp</h1>

    <p>Hi <shiro:guest>Guest</shiro:guest><shiro:user>
        <%
            //This should never be done in a normal page and should exist in a proper MVC controller of some sort, but for this
            //tutorial, we'll just pull out Stormpath Account data from Shiro's PrincipalCollection to reference in the
            //<c:out/> tag next:

            request.setAttribute("account", org.apache.shiro.SecurityUtils.getSubject().getPrincipals().oneByType(java.util.Map.class));

        %>
        <c:out value="${account.givenName}"/></shiro:user>!
        ( <shiro:user><a href="<c:url value="/logout"/>">Log out</a></shiro:user>
        <shiro:guest><a href="<c:url value="/login.jsp"/>">Log in</a></shiro:guest> )
    </p>

    <p>Welcome to the Apache Shiro Tutorial Webapp.  This page represents the home page of any web application.</p>

    <shiro:authenticated><p>Visit your <a href="<c:url value="/account"/>">account page</a>.</p></shiro:authenticated>
    <shiro:notAuthenticated><p>If you want to access the authenticated-only <a href="<c:url value="/account"/>">account page</a>,
        you will need to log-in first.</p></shiro:notAuthenticated>

    <h2>Roles</h2>

    <p>Here are the roles you have and don't have. Log out and log back in under different user
        accounts to see different roles.</p>

    <h3>Roles you have:</h3>

    <p>
		<shiro:hasRole name="admin">admin<br/></shiro:hasRole>
        <shiro:hasRole name="usermanager">usermanager<br/></shiro:hasRole>
        <shiro:hasRole name="bomanager">bomanager<br/></shiro:hasRole>
        <shiro:hasRole name="trademanager">trademanager<br/></shiro:hasRole>
		<shiro:hasRole name="reportmanager">reportmanager<br/></shiro:hasRole>
		<shiro:hasRole name="hedgemanager">hedgemanager<br/></shiro:hasRole>
    </p>

    <h3>Roles you DON'T have:</h3>

    <p>
        <shiro:lacksRole name="usermanager">usermanager<br/></shiro:lacksRole>
        <shiro:lacksRole name="bomanager">bomanager<br/></shiro:lacksRole>
        <shiro:lacksRole name="trademanager">trademanager<br/></shiro:lacksRole>
		<shiro:lacksRole name="reportmanager">reportmanager<br/></shiro:lacksRole>
		<shiro:lacksRole name="hedgemanager">hedgemanager<br/></shiro:lacksRole>
        <shiro:lacksRole name="admin">admin<br/></shiro:lacksRole>
    </p>

	
	
	
	<div class="container-fluid">
		<h3>What would you like to do today?</h3>
		<div class="row">
		<div class="col-sm-2"><a href="/usermanagement.jsp">User management</a></div>
		<div class="col-sm-3"><a href="/backoffice.jsp">Back Office Management</a></div>
		<div class="col-sm-2"><a href="/trademanagement.jsp">Trade Management</a></div>
		<div class="col-sm-2"><a href="/reportmanagement.jsp">Report Management</a></div>
		<div class="col-sm-3"><a href="/hedgemanagement.jsp">Hedge Management</a></div>
	</div>
	</div>
	
		
		
    
</body>
</html>
