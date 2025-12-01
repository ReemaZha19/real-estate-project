<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Admin Dashboard</title>

<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/assets/css/sb-admin-2.min.css"
	rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->

		<%@include file="sidebar.jsp"%>

		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->

				<jsp:include page="navbar.jsp"></jsp:include>

				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					
					<!--  Display add Properties start -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Property Type Management</h1>

					</div>
					
					<c:choose>
						<c:when test="${edit ne true }">
						
						<!-- add form here -->
						
						<div class="row">
						<div class="col col-lg-9">

							<div class="card">
								<div class="card-header">Add New Property Type</div>

								<div class="card-body">
									<form
										action="${pageContext.request.contextPath}/admin/type/add"
										method="post">
										
										<input type="hidden"  name="${_csrf.parameterName }" value="${_csrf.token }">
										
										<div class="form-group">
											<label for="inputName">Property Type Name</label> <input
												type="text" class="form-control" id="inputName" name="name"
												placeholder="Enter property type name">
										</div>

										<div class="form-group">
											<label for="inputDescription">Description</label>
											<textarea class="form-control" id="inputDescription"
												name="description"
												placeholder="Enter property type description"></textarea>
										</div>

										<div class="form-group">
											<label for="inputEnable">Property Type Enable</label> <select
												class="form-control" id="inputEnable" name="enable">
												<option value="enable" selected>Enable</option>
												<option value="disable">Disable</option>
											</select>
										</div>

										<div class="form-group">

											<input type="submit" class="btn btn-primary"
												value="Update Property Type">
										</div>
									</form>
								</div>
							</div>


						</div>

					</div>
					
						
						</c:when>
						
						<c:otherwise>
						
						<!-- edit form here -->
						
						<div class="row">
						<div class="col col-lg-9">

							<div class="card">
								<div class="card-header">Update Property Type</div>

								<div class="card-body">
									<form
										action="${pageContext.request.contextPath}/admin/type/edit"
										method="post">
										
										<input type="hidden"  name="${_csrf.parameterName }" value="${_csrf.token }">
										
										<div class="form-group">
											<label for="inputId">Property Type Id</label> 
											<input
												type="text" class="form-control" id="inputId" name="id"
												value="${p_type.id}" readonly="readonly">
										</div>
										
										<div class="form-group">
											<label for="inputName">Property Type Name</label> 
											<input
												type="text" class="form-control" id="inputName" name="name"
												value="${p_type.name}" required="required">
										</div>

										<div class="form-group">
											<label for="inputDescription">Description</label>
											<textarea class="form-control" id="inputDescription"
												name="description"
												placeholder="Enter property type description">${p_type.description}"</textarea>
										</div>

										<div class="form-group">
											<label for="inputEnable">Property Type Enable</label> <select
												class="form-control" id="inputEnable" name="enable">
												<option value="enable" ${p_type.enable.equals('enable')? "selected": "" } >Enable</option>
												<option value="disable" ${p_type.enable.equals('disable')? "selected": "" }>Disable</option>
											</select>
										</div>

										<div class="form-group">

											<input type="submit" class="btn btn-primary"
												value="Update Property Type">
										</div>
									</form>
								</div>
							</div>


						</div>

					</div>
					
						
						</c:otherwise>
						
					</c:choose>
	
					
					<div class="row">
						<div class="col">
							<div class="card" id="data_table">
								<div class="card-heading">All Properties</div>
								
								<div class="card-body">
								 	<table class="tbl tbl-responsive tbl-striped">
								 		<thead>
								 			<tr>
								 				<th>Property Type ID</th>
								 				<th>Name</th>
								 				<th>Description</th>
								 				<th>Enable</th>
								 				<th>Edit</th>
								 				<th>Delete</th>
								 			</tr>
								 		</thead>
								 		
								 		<tbody>
								 		<c:forEach items="${type_list }" var="type">
								 			<tr>
								 				<td>${type.id }</td>
								 				<th>${type.name }</th>
								 				<th>${type.description }</th>
								 				<th>${type.enable }</th>
								 				
								 				<th>
								 					<a class="btn btn-sm btn-primary" href="${pageContext.request.contextPath }/admin/type/edit/${type.id}">
								 					<i class="fa fa-edit"></i>
								 					</a>
								 				</th>
								 				
								 				<th>
								 					<a class="btn btn-sm btn-danger" href="${pageContext.request.contextPath }/admin/type/delete/${type.id}">
								 					<i class="fa fa-trash"></i>
								 					</a>
								 				</th>
								 			</tr>
								 			</c:forEach>
								 		</tbody>
								 	</table>
								</div>
							</div>
						</div>
					
					
					</div>
					
					<!--  Display all Properties or show properties  end -->
						
						
						
						
						
						
						
						
						


				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<jsp:include page="footer.jsp"></jsp:include>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	

	<!-- Logout Modal-->

	<jsp:include page="logout_modal.jsp"></jsp:include>

	<!-- Bootstrap core JavaScript-->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="${pageContext.request.contextPath}/assets/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath}/assets/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script
		src="${pageContext.request.contextPath}/assets/js/demo/chart-area-demo.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/demo/chart-pie-demo.js"></script>

</body>

</html>