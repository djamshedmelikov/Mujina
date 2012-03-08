<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Identity Provider Admin</title>
</head>
<body>

	<h1>Identity Provider Admin Page</h1>

	<h3>This page is secured. You must have the ROLE_ADMIN authority to be here.</h3>

	<a href="index.jsp">unprotected home page</a>  <br/>
	<a href="user.jsp">protected user page</a> <br/>
	<a href="j_spring_security_logout">End your session with the Identity Provider</a> <i>Does not end your session with the SP</i> <br/>

	<h3>Your current Spring Security Credentials are:</h3>

	<H4>Authentication Principal is: </H4> <p><sec:authentication property="principal"></sec:authentication></p>
	<H4>Authentication Credentials are: </H4><p><sec:authentication property="credentials"></sec:authentication></p>
	<H4>Authentication Details are: </H4><p><sec:authentication property="details"></sec:authentication></p>

</body>
</html>
