<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>
</head>
<body onload='document.f.j_username.focus();'>

<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION }">
<p><font color='red'>Your login attempt was not successful, try again.<br/><br/>Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/></font></p>
</c:if>
<h3>Login with Username and Password</h3>
<form name='f' action='/idp/j_spring_security_check' method='POST'>
<table>
	<tr>
		<td>User:</td>
		<td><input type='text' name='j_username' value=''></td>
	</tr>
	<tr>
		<td>Password:</td>
		<td><input type='password' name='j_password' /></td>
	</tr>
	<tr>
		<td colspan='2'><input name="submit" type="submit" /></td>
	</tr>
	<tr>
		<td colspan='2'><input name="reset" type="reset" /></td>
	</tr>
</table>

<h3>Known users/credentials</h3>
<table border="1">
	<tr>
		<th>User</th>
		<th>Password</th>
		<th>Authorities</th>
		
	</tr>
	<tr>
		<td>user</td>
		<td>secret</td>
		<td>ROLE_USER</td>
	</tr>
	<tr>
		<td>admin</td>
		<td>secret</td>
		<td>ROLE_USER, ROLE_ADMIN</td>
	</tr>

</table>

</form>
</body>
</html>