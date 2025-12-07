<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
</head>
<body>

<%@ include file="menu.jsp" %>

	<h1>Welcome ${user_detail.username }</h1>
	
	<div>
		<label>User Information</label>
		<p>${user_detail.firstname }  &nbsp; ${user_detail.lastname } </p>
		<p>${user_detail.address } </p>
		<p>${user_detail.email } </p>
		<p>${user_detail.phone} </p>
		<p>${user_detail.dob } </p>
		<p>(${user_detail.userRole.role }) </p>
		
	</div>

</body>
</html>