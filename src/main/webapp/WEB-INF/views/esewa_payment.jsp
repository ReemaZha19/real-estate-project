<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Proceed to Payment</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
.realestate-payment-wrapper {
  max-width: 500px;
  margin: 70px auto;
  font-family: 'Segoe UI', sans-serif;
}

.realestate-payment-card {
  background: #fff;
  border-radius: 10px;
  padding: 30px;
  box-shadow: 0 6px 18px rgba(0,0,0,.1);
  text-align: center;
}

.realestate-payment-title {
  font-size: 22px;
  margin-bottom: 20px;
  font-weight: 600;
}

.realestate-payment-summary {
  text-align: left;
  margin-bottom: 20px;
}

.realestate-payment-row {
  display: flex;
  justify-content: space-between;
  padding: 8px 0;
  border-bottom: 1px dashed #ddd;
  font-size: 15px;
}

.realestate-payment-total {
  font-size: 18px;
  font-weight: bold;
  margin-top: 12px;
}

.realestate-payment-btn {
  width: 100%;
  padding: 12px;
  background: #60bb46;
  color: #fff;
  border: none;
  border-radius: 6px;
  font-size: 16px;
  cursor: pointer;
}

.realestate-payment-note {
  margin-top: 15px;
  font-size: 13px;
  color: #777;
}

@media(max-width:576px){
  .realestate-payment-wrapper{
    margin: 30px 15px;
  }
}
</style>
</head>

<body>

<div class="realestate-payment-wrapper">

  <div class="realestate-payment-card">

    <div class="realestate-payment-title">
      Confirm & Pay
    </div>

    <div class="realestate-payment-summary">
      <div class="realestate-payment-row">
        <span>Booking Fee</span>
        <span>Rs. ${pay.amount}</span>
      </div>

      <div class="realestate-payment-row">
        <span>Tax (13%)</span>
        <span>Rs. ${pay.tax_amount}</span>
      </div>

      <div class="realestate-payment-row realestate-payment-total">
        <span>Total</span>
        <span>Rs. ${pay.total_amount}</span>
      </div>
    </div>


    <form action="https://rc-epay.esewa.com.np/api/epay/main/v2/form" method="POST">
      
      <input type="hidden" name="amount" value="${pay.amount}">
      <input type="hidden" name="tax_amount" value="${pay.tax_amount}">
      <input type="hidden" name="total_amount" value="${pay.total_amount}">
      <input type="hidden" name="transaction_uuid" value="${pay.transaction_uuid}">
      <input type="hidden" name="product_code" value="EPAYTEST">
      <input type="hidden" name="product_service_charge" value="0">
      <input type="hidden" name="product_delivery_charge" value="0">
      <input type="hidden" name="success_url" value="${pay.success_url}">
      <input type="hidden" name="failure_url" value="${pay.failure_url}">
      <input type="hidden" name="signed_field_names" value="total_amount,transaction_uuid,product_code">
      <input type="hidden" name="signature" value="${pay.signature}">

      <button type="submit" class="realestate-payment-btn">
        Pay with eSewa
      </button>
    </form>

    <div class="realestate-payment-note">
      Secure payment powered by eSewa
    </div>

  </div>
</div>

</body>
</html>
