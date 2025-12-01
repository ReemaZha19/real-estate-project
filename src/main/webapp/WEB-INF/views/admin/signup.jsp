<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/assets/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        
        <%@include file = "sidebar.jsp" %>
       
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
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Register Admin Account</h1>
                        
                    </div>
                    
                    <div class=" row">
                    	<div class="col col-lg-12">
                    		<div class="card">
                    			<div class="card-heading font-weight-bold mx-auto pt-3 px-5">
                    				Add New Admin Detail
                    			</div>
                    			
                    			<div class="card-body">
                    			
                    				<form action = "${pageContext.request.contextPath }/admin/register" method="post">
                    					<input type="hidden" name=${_csrf.parameterName } value="${_csrf.token }">
	                    				<div class="row">
		                    				<div class="col col-lg-6">
		                    				
		                    					<div class="form-group">
		                    						<label for="firstname">First Name</label> 
		                    						<input type="text" id="firstname" name="firstname" class="form-control" placeholder="Enter First Name ">
		                    					</div>
		                    				
		                    				</div>
		                    				
		                    				<div class="col col-lg-6">
		                    					<div class="form-group">
		                    						<label for="lastname">Last Name</label> 
		                    						<input type="text" id="lastname" name="lastname" class="form-control" placeholder="Enter Last Name ">
		                    					</div>
		                    				</div>
	                    				
	                    				</div>
	                    				
	                    				<div class="row">
		                    				<div class="col col-lg-6">
		                    				
		                    					<div class="form-group">
		                    						<label for="email">Email</label> 
		                    						<input type="text" id="email" name="email" class="form-control" placeholder="Enter Email ">
		                    					</div>
		                    				
		                    				</div>
		                    				
		                    				<div class="col col-lg-6">
		                    					<div class="form-group">
		                    						<label for="phone">Phone</label> 
		                    						<input type="text" id="phone" name="phone" class="form-control" placeholder="Enter Phone ">
		                    					</div>
		                    				</div>
	                    				
	                    				</div>
	                    				
	                    				<div class="row">
		                    				<div class="col col-lg-6">
		                    				
		                    					<div class="form-group">
												    <label for="gender">Gender</label>
												    <select id="gender" name="gender" class="form-control">
												        <option value="" disabled selected>-- Select Gender --</option>
												        <option value="Male">Male</option>
												        <option value="Female">Female</option>
												        <option value="Other">Other</option>
												    </select>
												</div>

		                    				
		                    				</div>
		                    				
		                    				<div class="col col-lg-6">
		                    					<div class="form-group">
		                    						<label for="dob">Date Of Birth</label> 
		                    						<input type="date" id="dob" name="dob" class="form-control" placeholder="Enter date of birth ">
		                    					</div>
		                    				</div>
	                    				
	                    				</div>
	                    				
	                    				<div class="row">
		                    				<div class="col col-lg-12">
		                    					<div class="form-group">
		                    						<label for="address">Address</label> 
		                    						<input type="text" id="address" name="address" class="form-control" placeholder="Enter Address ">
		                    					</div>
		                    				</div>
	                    				</div>
	                    				
	                    				<div class="row">
	                    				
	                    				<div class="col col-lg-6">
		                    					<div class="form-group">
		                    						<label for="authority">Authority</label> 
		                    						<select id="authority" name="authority" class="form-control" >
		                    							<option disabled> -- Select the role -- </option>
		                    							<option value="ROLE_AGENT">Agent</option>
		                    							<option value="ROLE_ADMIN">Admin</option>
		                    						</select>
		                    					</div>
		                    				</div>
	                    				
		                    				<div class="col col-lg-6">
		                    					<div class="form-group">
		                    						<label for="username">Username</label> 
		                    						<input type="text" id="username" name="username" class="form-control" placeholder="Enter Username ">
		                    					</div>
		                    				</div>
	                    				</div>
	                    				
	                    				<div class="row">
		                    				<div class="col col-lg-6">
		                    				
		                    					<div class="form-group">
		                    						<label for="password">Password</label> 
		                    						<input type="password" id="password" name="password" class="form-control" placeholder="Enter Password ">
		                    					</div>
		                    				
		                    				</div>
		                    				
		                    				<div class="col col-lg-6">
		                    					<div class="form-group">
		                    						<label for="cpassword">Confirm Password</label> 
		                    						<input type="password" id="cpassword" name="cpassword" class="form-control" placeholder="Confirm Password ">
		                    					</div>
		                    				</div>
	                    				
	                    				</div>
	                    				
	                    				<div class="form-group">
	                    					<input class="btn btn-primary" type="submit" value="Save User Detail">
	                    					<input class="btn btn-warning" type="reset" value="Reset Form">
	                    				</div>
	                    			</form>
	                    				
                    		
                    		</div>
                    	
                    	</div>
                    
                    </div>

                    

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

    <!-- Scroll to Top Button-->

    <!-- Logout Modal-->
   
     <jsp:include page="logout_modal.jsp"></jsp:include>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/assets/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/demo/chart-pie-demo.js"></script>

</body>

</html>