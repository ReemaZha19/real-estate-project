<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
<!Doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    
    <style>

    </style>
 
  </head>
  <body class="bg-body-secondary">
  
    
     <%@include file="navbar.jsp" %>
    
    <%@include file="banner.jsp" %>
    
    <%@include file="latest_property.jsp" %>
    
    <%@include file="category_property.jsp" %>
    
 	<%@include file="property_collection.jsp" %>
 	
 	

<%@include file="map_faqs.jsp" %>
 	
 	
    
   <%@include file="choose_us.jsp" %>
   
    <%@include file="get_in_touch.jsp" %>
   
   
  
 
 
<%@include file="client_review.jsp" %>





   
   
    <%@include file="footer.jsp" %>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script >


</script>


    
  </body>
</html>