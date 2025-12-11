<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<div>

	<a href="${pageContext.request.contextPath }/home">Home</a>
	<a href="${pageContext.request.contextPath }/about">About</a>
	<a href="${pageContext.request.contextPath }/services">Services</a>
	<a href="${pageContext.request.contextPath }/contact">Contact</a>
	<a href="${pageContext.request.contextPath }/signup">Signup</a>
	<a href="${pageContext.request.contextPath }/similar_product">Similar Product</a>
	
	<sec:authorize access="isAuthenticated()">
	    <a href="${pageContext.request.contextPath }/logout">Logout</a>
	</sec:authorize>


</div>