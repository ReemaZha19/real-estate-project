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
  <body>
  
    
   
    
   <!-- New Properties Section -->
   
   <div class="container-fluid mt-4">
	   <div class=row>
		   <c:forEach items = "${property_list }" var="property">
			   <div class="col col-lg-3 col-md-6">
				   <div class="card">
					   <div class="card-heading">${property.name}</div>
						   <div class="card-body">
						   		<img src="${pageContext.request.contextPath }/property_image/${property.image1}">
						   		
						   		<p>${property.address}</p>
						   		<p>${property.price}</p>
						   		<a class="btn" href="${pageContext.request.contextPath }/property_detail/${property.id}">View Detail</a>
						   </div>
				   </div>
			   </div>
		   
		   </c:forEach>
	   </div>
   </div>
   
   
   
    <%@include file="footer.jsp" %>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
  </body>
</html>