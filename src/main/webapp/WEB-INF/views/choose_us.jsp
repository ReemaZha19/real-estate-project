<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Why Choose Us</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>

.realestate-why-header-title{
	letter-spacing: 1px;
	font-family: 'Segoe UI', sans-serif;
	font-size:30px;
	border-top: 0.5px solid #888 ;
}

.realestate-why-header-p{
	letter-spacing: 0.5px;
	font-family: 'Segoe UI', sans-serif;
	font-size:16px;
}

.realestate-why-us {
    background-color: #f8f9fa;
}

.realestate-why-card {
    background: #ffffff;
    padding: 30px 20px;
    border-radius: 12px;
    height: 100%;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.realestate-why-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 12px 25px rgba(0, 0, 0, 0.12);
}

.realestate-why-icon {
    width: 65px;
    height: 65px;
    margin: 0 auto 15px;
    border-radius: 50%;
    background-color: #000;
    color: #fff;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 26px;
}

.realestate-why-card h5 {
    font-weight: 600;
    margin-bottom: 10px;
    letter-spacing: 1px;
	font-family: 'Segoe UI', sans-serif;
}

.realestate-why-card p {
    font-size: 14px;
    color: #555;
    margin-bottom: 0;
    letter-spacing: 0.5px;
	font-family: 'Segoe UI', sans-serif;
}


</style>
</head>
<body>

<section class="realestate-why-us py-5">
    <div class="container">
        <div class="text-center mb-5">
            <h3 class="fw-bold realestate-why-header-title pt-5">Why Choose Us</h3>
            <p class="text-muted mt-2 realestate-why-header-p">
                We help you find the perfect property with trust, transparency, and ease.
            </p>
        </div>

        <div class="row g-4">
            <div class="col-md-6 col-lg-3">
                <div class="realestate-why-card text-center">
                    <div class="realestate-why-icon">
                        <i class="fa-solid fa-house-circle-check"></i>
                    </div>
                    <h5>Verified Properties</h5>
                    <p>
                        All listings are verified to ensure authenticity and reliability.
                    </p>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="realestate-why-card text-center">
                    <div class="realestate-why-icon">
                        <i class="fa-solid fa-user-tie"></i>
                    </div>
                    <h5>Trusted Agents</h5>
                    <p>
                        Connect with experienced agents who understand your needs.
                    </p>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="realestate-why-card text-center">
                    <div class="realestate-why-icon">
                        <i class="fa-solid fa-tags"></i>
                    </div>
                    <h5>Best Pricing</h5>
                    <p>
                        Transparent pricing with no hidden charges or surprises.
                    </p>
                </div>
            </div>

            <div class="col-md-6 col-lg-3">
                <div class="realestate-why-card text-center">
                    <div class="realestate-why-icon">
                        <i class="fa-solid fa-headset"></i>
                    </div>
                    <h5>24/7 Support</h5>
                    <p>
                        Our team is always available to assist you at every step.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
   

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>

</script>

</body>
</html>
