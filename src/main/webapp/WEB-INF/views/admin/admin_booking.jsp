<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Admin | Booking Management</title>
<link
	href="${pageContext.request.contextPath}/assets/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/css/sb-admin-2.min.css"
	rel="stylesheet">
</head>

<body id="page-top">

	<div id="wrapper">

		<jsp:include page="sidebar.jsp" />

		<div id="content-wrapper" class="d-flex flex-column">

			<div id="content">

				<jsp:include page="navbar.jsp" />

				<div class="container-fluid">

					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Booking Management</h1>
					</div>

					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">All Bookings</h6>
						</div>

						<div class="card-body">

							<div class="table-responsive"
								style="max-height: 520px; overflow-y: auto;">
								<table class="table table-bordered table-hover text-center">
									<thead class="thead-dark sticky-top">
										<tr>
											<th>Booking ID</th>
											<th>Property</th>
											<th>Location</th>
											<th>Date</th>
											<th>Status</th>
											<th>Payment</th>
											<th>Process</th>
											<th>View</th>
											<th>Edit</th>
											<th>Delete</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items="${booking_list}" var="book">
											<tr>
												<td>${book.id}</td>
												<td>${book.property.name}</td>
												<td>${book.property.address}</td>
												<td>${book.bookingDate}</td>

												<td><span class="badge badge-warning">${book.status}</span>
												</td>

												<td><span class="badge badge-danger">${book.payment.status}</span>
												</td>

												<td>
												    <c:choose>
												      
												        <c:when test="${book.status eq 'PROCESSED'}">
												            <span class=" btn btn-sm btn-success">
												                <i class="fas fa-check"></i>
												            </span>
												        </c:when>
												
												        <c:otherwise>
												            <a href="${pageContext.request.contextPath}/admin/booking/process/${book.id}"
												               class="btn btn-sm btn-success"
												               title="Process Booking">
												                Process
												            </a>
												        </c:otherwise>
												    </c:choose>
												</td>



												<td><a href="#" class="btn btn-sm btn-info"
													title="View Details"> <i class="fas fa-eye"></i>
												</a></td>

												<td><a href="#" class="btn btn-sm btn-primary"
													title="Edit Booking"> <i class="fas fa-edit"></i>
												</a></td>

												<td><a href="#" class="btn btn-sm btn-danger"
													title="Delete Booking"> <i class="fas fa-trash"></i>
												</a></td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>

			<jsp:include page="footer.jsp" />

		</div>

	</div>

	<jsp:include page="logout_modal.jsp" />

	<script
		src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/sb-admin-2.min.js"></script>

</body>
</html>
