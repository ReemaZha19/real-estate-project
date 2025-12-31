<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>My Bookings</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .realestate-userbooking-wrapper {
            max-width: 1100px;
            margin: 60px auto;
            font-family: 'Segoe UI', sans-serif;
            letter-spacing: 1px;
        }

        .realestate-userbooking-table {
            width: 100%;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, .08);
            overflow: hidden;
        }

        .realestate-userbooking-table th {
            background: #000;
            color: #fff;
            padding: 14px;
        }

        .realestate-userbooking-table td {
            padding: 14px;
            vertical-align: middle;
        }

        .realestate-userbooking-status {
            padding: 6px 14px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 600;
            text-transform: capitalize;
        }

        .status-confirmed {
            background: #e6f4ea;
            color: #1e7e34;
        }

        .status-pending {
            background: #fff3cd;
            color: #856404;
        }

        .status-cancelled {
            background: #f8d7da;
            color: #842029;
        }

        .realestate-userbooking-btn {
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }

        .realestate-userbooking-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }
        
        .realestate-userbooking-btn-confirmed{
        	padding: 6px 12px;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            text-align: center;
            background-color: green;
            color:white;
            letter-spacing: 0.5px;
        }

        .btn-confirm {
            background: #000;
            color: #fff;
        }

        .btn-edit {
            background: #6c757d;
            color: #fff;
        }

        .btn-delete {
            background: #dc3545;
            color: #fff;
        }

        .realestate-userbooking-card {
            display: none;
            background: #fff;
            padding: 18px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, .08);
            margin-bottom: 15px;
        }

        @media (max-width: 768px) {
            .realestate-userbooking-table {
                display: none;
            }

            .realestate-userbooking-card {
                display: block;
            }
        }
    </style>
</head>

<body>

    <%@ include file="navbar.jsp" %>

    <div class="realestate-userbooking-wrapper">

        <h2 class="text-center mb-4">My Bookings</h2>

        <table class="realestate-userbooking-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Property</th>
                    <th>Owner / Agent</th>
                    <th>Date</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach var="booking" items="${bookings}">
                    <tr>
                        <td>#${booking.id}</td>
                        <td>${booking.property.name}</td>
                        <td>
                            <c:if test="${booking.property.owner != null}">
                                ${booking.property.owner.username}
                            </c:if>
                            <c:if test="${booking.property.agent != null}">
                                ${booking.property.agent.username}
                            </c:if>
                        </td>
                        <td>${booking.bookingDate}</td>
                        <td>
                            <span class="realestate-userbooking-status status-${fn:toLowerCase(booking.status)}">
                                ${booking.status}
                            </span>
                        </td>
                        <td class="d-flex gap-2">

                            <c:choose>
							    <c:when test="${booking.payment == null || booking.payment.status eq 'PENDING'}">
							        <a href="${pageContext.request.contextPath}/user/booking/confirm/${booking.id}"
							           class="realestate-userbooking-btn btn-confirm">
							            Confirm
							        </a>
							        
							        <c:if test="${booking.status ne 'CANCELLED'}">
		                                <a href="${pageContext.request.contextPath}/user/booking/edit/${booking.id}"
		                                   class="realestate-userbooking-btn btn-edit">
		                                    Edit
		                                </a>
		                            </c:if>
		
		                            <c:if test="${booking.status ne 'CANCELLED'}">
		                                <button class="realestate-userbooking-btn btn-delete cancelBooking"
		                                        data-id="${booking.id}">
		                                    Cancel
		                                </button>
		                            </c:if>
							        
							    </c:when>
							    <c:otherwise>
							        <button class="realestate-userbooking-btn-confirmed btn-confirmed">
							            Confirmed
							        </button>
							   
							    </c:otherwise>
							</c:choose> 

                            

                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Mobile Card View -->
        <c:forEach var="booking" items="${bookings}">
            <div class="realestate-userbooking-card">
                <h5>${booking.property.name}</h5>
                <p><strong>Date:</strong> ${booking.bookingDate}</p>
                <p>
                    <span class="realestate-userbooking-status status-${fn:toLowerCase(booking.status)}">
                        ${booking.status}
                    </span>
                </p>

                <div class="d-flex flex-column gap-2">
                  
                    <c:choose>
					    <c:when test="${booking.payment != null || booking.payment.status eq 'PENDING'}">
					        <a href="${pageContext.request.contextPath}/user/confirm/booking/${booking.id}"
					           class="realestate-userbooking-btn btn-confirm">
					            CONFIRM
					        </a>
					    </c:when>
					    <c:otherwise>
					        <a href="${pageContext.request.contextPath}/user/booking/confirm/${booking.id}"
					           class="realestate-userbooking-btn btn-confirm">
					            Confirmed
					        </a>
					    </c:otherwise>
					</c:choose>

                    <c:if test="${booking.status ne 'CANCELLED'}">
                        <a href="${pageContext.request.contextPath}/user/booking/edit/${booking.id}"
                           class="realestate-userbooking-btn btn-edit w-100">
                            Edit
                        </a>
                    </c:if>

                    <c:if test="${booking.status ne 'CANCELLED'}">
                        <button class="realestate-userbooking-btn btn-delete w-100 cancelBooking"
                                data-id="${booking.id}">
                            Cancel
                        </button>
                    </c:if>
                </div>
            </div>
        </c:forEach>

    </div>

    <%@ include file="footer.jsp" %>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(function () {
            $('.cancelBooking').click(function () {
                if (confirm('Are you sure you want to cancel this booking?')) {
                    window.location.href =
                        '${pageContext.request.contextPath}/user/booking/cancel/' + $(this).data('id');
                }
            });
        });
    </script>

</body>

</html>
