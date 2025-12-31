<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Status</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.realestate-payment-wrapper {
  max-width: 480px;
  margin: 90px auto;
  font-family: 'Segoe UI', sans-serif;
  text-align: center;
}

.realestate-payment-box {
  padding: 40px 30px;
  border-radius: 14px;
  box-shadow: 0 10px 25px rgba(0,0,0,.12);
}

.realestate-payment-success {
  background: #e6f4ea;
}

.realestate-payment-failure {
  background: #f8d7da;
}

.realestate-payment-icon {
  font-size: 60px;
  margin-bottom: 15px;
}

.realestate-payment-title {
  font-size: 26px;
  font-weight: 600;
  margin-bottom: 10px;
}

.realestate-payment-msg {
  font-size: 15px;
  color: #333;
  margin-bottom: 25px;
}

.realestate-payment-btn {
  padding: 12px 26px;
  border-radius: 6px;
  color: #fff;
  text-decoration: none;
  display: inline-block;
}

.btn-success {
  background: #1e7e34;
}

.btn-failure {
  background: #dc3545;
}
</style>
</head>

<body>

<div class="realestate-payment-wrapper">

  <c:if test="${paymentStatus eq 'success'}">
    <div class="realestate-payment-box realestate-payment-success">
      <div class="realestate-payment-icon">✅</div>
      <div class="realestate-payment-title">Payment Successful</div>
      <div class="realestate-payment-msg">
        Your payment was completed successfully.  
        Your booking is now confirmed.
      </div>
      <a href="${pageContext.request.contextPath}/user/booking/show"
         class="realestate-payment-btn btn-success">
        View My Bookings
      </a>
    </div>
  </c:if>

  <c:if test="${paymentStatus eq 'failure'}">
    <div class="realestate-payment-box realestate-payment-failure">
      <div class="realestate-payment-icon">❌</div>
      <div class="realestate-payment-title">Payment Failed</div>
      <div class="realestate-payment-msg">
        Payment could not be completed.  
        Please try again.
      </div>
      <a href="${pageContext.request.contextPath}/user/bookings"
         class="realestate-payment-btn btn-failure">
        Try Again
      </a>
    </div>
  </c:if>

</div>

</body>
</html>
