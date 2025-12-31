<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Confirm Booking</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .realestate-confirmbooking-wrapper {
            max-width: 900px;
            margin: 60px auto;
            padding: 15px;
            font-family: 'Segoe UI', sans-serif;
        }

        .realestate-confirmbooking-card {
            background: #ffffff;
            border-radius: 14px;
            padding: 35px;
            box-shadow: 0 12px 30px rgba(0, 0, 0, .08);
            transition: all 0.3s ease;
        }

        .realestate-confirmbooking-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 18px 40px rgba(0, 0, 0, .12);
        }

        .realestate-confirmbooking-title {
            text-align: center;
            font-weight: 600;
            margin-bottom: 30px;
            letter-spacing: 1px;
        }

        .realestate-confirmbooking-row {
            display: flex;
            justify-content: space-between;
            padding: 14px 0;
            border-bottom: 1px dashed #e6e6e6;
        }

        .realestate-confirmbooking-label {
            font-weight: 600;
            color: #222;
        }

        .realestate-confirmbooking-value {
            color: #555;
            text-align: right;
        }

        .realestate-confirmbooking-notice {
            background: linear-gradient(135deg, #fff3cd, #ffefb3);
            border-left: 5px solid #ffc107;
            padding: 18px;
            border-radius: 8px;
            margin: 30px 0;
            font-size: 14px;
            color: #856404;
        }

        .realestate-confirmbooking-actions {
            display: flex;
            justify-content: center;
            gap: 18px;
            margin-top: 30px;
        }

        .realestate-confirmbooking-btn {
            padding: 12px 28px;
            border-radius: 6px;
            font-size: 15px;
            font-weight: 500;
            text-decoration: none;
            transition: all 0.25s ease;
            text-align: center;
        }

        .btn-confirm {
            background: #000;
            color: #fff;
        }

        .btn-confirm:hover {
            background: #222;
            transform: translateY(-2px);
            box-shadow: 0 8px 18px rgba(0, 0, 0, 0.25);
        }

        .btn-cancel {
            background: #dc3545;
            color: #fff;
        }

        .btn-cancel:hover {
            background: #bb2d3b;
            transform: translateY(-2px);
            box-shadow: 0 8px 18px rgba(220, 53, 69, 0.35);
        }

        .realestate-confirmbooking-btn:active {
            transform: scale(0.95);
        }

        .status-completed {
            color: #1e7e34;
            font-weight: bold;
        }

        .status-failed {
            color: #842029;
            font-weight: bold;
        }

        .status-pending {
            color: #856404;
            font-weight: bold;
        }

        @media (max-width: 576px) {
            .realestate-confirmbooking-card {
                padding: 25px 20px;
            }

            .realestate-confirmbooking-row {
                flex-direction: column;
                gap: 6px;
            }

            .realestate-confirmbooking-value {
                text-align: left;
                font-size: 14px;
            }

            .realestate-confirmbooking-actions {
                flex-direction: column;
            }

            .realestate-confirmbooking-btn {
                width: 100%;
            }
        }
    </style>
</head>

<body>

    <%@ include file="navbar.jsp" %>

    <div class="realestate-confirmbooking-wrapper">

        <div class="realestate-confirmbooking-card">

            <h2 class="realestate-confirmbooking-title">
                Confirm Your Booking
            </h2>

            <div class="realestate-confirmbooking-row">
                <div class="realestate-confirmbooking-label">Booking ID</div>
                <div class="realestate-confirmbooking-value">#${booking.id}</div>
            </div>

            <div class="realestate-confirmbooking-row">
                <div class="realestate-confirmbooking-label">Property</div>
                <div class="realestate-confirmbooking-value">
                    ${booking.property.name} / ${booking.property.propertyType}
                </div>
            </div>

            <div class="realestate-confirmbooking-row">
                <div class="realestate-confirmbooking-label">Owner</div>
                <div class="realestate-confirmbooking-value">
                    ${booking.property.owner.username}
                </div>
            </div>

            <div class="realestate-confirmbooking-row">
                <div class="realestate-confirmbooking-label">Agent</div>
                <div class="realestate-confirmbooking-value">
                    ${booking.property.agent.username}
                </div>
            </div>

            <div class="realestate-confirmbooking-row">
                <div class="realestate-confirmbooking-label">Booking Date</div>
                <div class="realestate-confirmbooking-value">
                    ${booking.bookingDate}
                </div>
            </div>

            <div class="realestate-confirmbooking-row">
                <div class="realestate-confirmbooking-label">Status</div>
                <div class="realestate-confirmbooking-value">
                    ${booking.status}
                </div>
            </div>

            <div class="realestate-confirmbooking-row">
                <div class="realestate-confirmbooking-label">Booking Payment</div>
                <div class="realestate-confirmbooking-value">
                    <c:choose>
                        <c:when test="${booking.payment ne null}">
                            <span class="status-${fn:toLowerCase(booking.payment.status)}">
                                ${booking.payment.status}
                            </span>
                        </c:when>
                        <c:otherwise>
                            NOT PAID
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            <!-- Show note and buttons only if payment is not completed -->
            <c:if test="${booking.payment eq null || booking.payment.status ne 'COMPLETED'}">
                <div class="realestate-confirmbooking-notice">
                    <strong>Note:</strong><br>
                    You will be charged <strong>Rs. 1000</strong> as a confirmation and visit fee.
                    This confirms your booking and schedules a property visit.
                </div>

                <div class="realestate-confirmbooking-actions">
                    <a href="${pageContext.request.contextPath}/user/confirm/booking/${booking.id}"
                       class="realestate-confirmbooking-btn btn-confirm">
                        Pay Booking Fee
                    </a>

                    <a href="${pageContext.request.contextPath}/user/bookings"
                       class="realestate-confirmbooking-btn btn-cancel">
                        Cancel
                    </a>
                </div>
            </c:if>

        </div>

    </div>

    <%@ include file="footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
