<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>User Registration</title>
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

   <div class="container-fluid mt-4">
	<div class= "row">
	
	<div class="col-1"></div>
	<div class="col-10">
    <h1 class="h3 mb-4 text-gray-800">Add New Property</h1>

    <div class="card shadow mb-4">
        <div class="card-header font-weight-bold mx-auto pt-3 px-5">
            Property Details Form
        </div>

        <div class="card-body">

            <form action="${pageContext.request.contextPath}/property/save" method="post" enctype="multipart/form-data">

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">

                <!-- Row 1 -->
                <div class="row mb-3">

                    <div class="col-lg-6">
                        <label>Property Name</label>
                        <input type="text" name="name" class="form-control" placeholder="Enter property name">
                    </div>

                    <div class="col-lg-6">
                        <label>Address</label>
                        <input type="text" name="address" class="form-control" placeholder="Enter address">
                    </div>

                </div>

                <!-- Row 2 -->
                <div class="row mb-3">

                    <div class="col-lg-6">
                        <label>Property Type</label>
                        <select name="propertyType" class="form-control">
                            <option disabled selected>-- Select Property Type --</option>

                            <c:forEach var="pt" items="${propertyTypes}">
                                <option value="${pt.id}">${pt.name}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="col-lg-6">
                        <label>Price</label>
                        <input type="number" step="0.01" name="price" class="form-control" placeholder="Enter price">
                    </div>

                </div>

                <!-- Row 3 -->
                <div class="row mb-3">

                    <div class="col-lg-6">
                        <label>Owner</label>
                        <select name="owner" class="form-control">
                            <option disabled selected>-- Select Owner --</option>
                            <c:forEach var="o" items="${owners}">
                                <option value="${o.id}">${o.firstname} ${o.lastname}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="col-lg-6">
                        <label>Agent</label>
                        <select name="agent" class="form-control">
                            <option disabled selected>-- Select Agent --</option>
                            <c:forEach var="a" items="${agents}">
                                <option value="${a.id}">${a.firstname} ${a.lastname}</option>
                            </c:forEach>
                        </select>
                    </div>

                </div>

                <!-- Description -->
                <div class="row mb-3">
                    <div class="col-lg-12">
                        <label>Description</label>
                        <textarea name="description" class="form-control" rows="4"
                                  placeholder="Enter property description"></textarea>
                    </div>
                </div>

                <!-- Features Dynamic -->
                <div class="row mb-3">
                    <div class="col-lg-12">
                        <label class="fw-bold">Features</label>

                        <div id="features-container">
                            <div class="row mb-2">
                                <div class="col-lg-5">
                                    <input type="text" name="featureKey[]" class="form-control" placeholder="Feature Name">
                                </div>
                                <div class="col-lg-5">
                                    <input type="text" name="featureValue[]" class="form-control" placeholder="Feature Value">
                                </div>
                                <div class="col-lg-2">
                                    <button type="button" class="btn btn-danger remove-feature">Remove Feature</button>
                                </div>
                            </div>
                        </div>

                        <button type="button" id="add-feature" class="btn btn-secondary btn-sm"> Add Feature</button>
                    </div>
                </div>

                <!-- Image Upload -->
                <div class="row mb-3">
                    <div class="col-lg-12">
                        <label>Upload Images</label>
                        <input type="file" name="images" class="form-control" multiple>
                        <small class="text-muted">Upload Images</small>
                    </div>
                </div>

                <!-- Status -->
                <div class="row mb-3">
                    <div class="col-lg-6">
                        <label>Status</label>
                        <select name="status" class="form-control">
                            <option value="ACTIVE">Active</option>
                            <option value="INACTIVE">Inactive</option>
                            <option value="SOLD">Sold</option>
                        </select>
                    </div>
                </div>

                <!-- Buttons -->
                <div class="form-group mt-4">
                    <input class="btn btn-primary" type="submit" value="Save Property">
                    <input class="btn btn-warning" type="reset" value="Reset Form">
                </div>

            </form>

        </div>

    </div>
    </div>
    <div class="col-1"></div>
    </div>

</div>

    <!-- Logout Modal-->
   
     <jsp:include page="admin/logout_modal.jsp"></jsp:include>
     
     
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/assets/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/demo/chart-pie-demo.js"></script>
    
    <script>
    document.getElementById("add-feature").onclick = function () {
        const row = `
            <div class="row mb-2">
                <div class="col-lg-5">
                    <input type="text" name="featureKey[]" class="form-control" placeholder="Feature Name">
                </div>
                <div class="col-lg-5">
                    <input type="text" name="featureValue[]" class="form-control" placeholder="Feature Value">
                </div>
                <div class="col-lg-2">
                    <button type="button" class="btn btn-danger remove-feature">Remove Feature</button>
                </div>
            </div>`;
        document.getElementById("features-container").insertAdjacentHTML('beforeend', row);
    };

    document.addEventListener("click", function(e) {
        if (e.target.classList.contains("remove-feature")) {
            e.target.closest(".row").remove();
        }
    });
    </script>

</body>

</html>