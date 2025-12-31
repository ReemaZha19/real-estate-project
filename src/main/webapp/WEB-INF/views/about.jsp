<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>About Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

    <style>
        body {
            background: #fff;
            color: #111;
            font-family: Arial, sans-serif;
            letter-spacing: 1px;
        }

        .realestate-aboutus-wrapper {
            margin-top: 80px;
        }

        .realestate-aboutus-section {
            padding: 40px 0;
        }

        .realestate-aboutus-section img {
            width: 100%;
            border-radius: 8px;
            object-fit: cover;
        }

        .realestate-aboutus-text h3 {
            font-size: 22px;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .realestate-aboutus-text p {
            font-size: 15px;
            line-height: 1.6;
            color: #333;
        }

        .realestate-aboutus-text i {
            font-size: 18px;
            margin-bottom: 6px;
        }

        .realestate-aboutus-features {
            padding: 30px 0;
            text-align: center;
        }

        .feature-item i {
            font-size: 34px;
            margin-bottom: 10px;
        }

        .feature-item h5 {
            font-size: 17px;
            font-weight: 600;
        }

        .feature-item p {
            font-size: 14px;
            color: #444;
        }

        .realestate-aboutus-team {
            padding: 40px 0;
            text-align: center;
        }

        .realestate-aboutus-team h3 {
            font-size: 28px;
            margin-bottom: 30px;
        }

        .team-row {
            display: flex;
            flex-wrap: wrap;
        }

        .col-team {
            flex: 0 0 25%;
            padding: 8px;
        }

        .realestate-aboutus-member {
            background: #f9f9f9;
            border-radius: 8px;
            overflow: hidden;
            position: relative;
            transition: 0.3s;
        }

        .realestate-aboutus-member:hover {
            box-shadow: 0 8px 25px rgba(0,0,0,0.1);
            transform: translateY(-4px);
        }

        .realestate-aboutus-member img {
            width: 100%;
            height: 200px;
            object-fit: contain;    
            background: #eee;
            display: block;
        }

        .realestate-aboutus-member h5 {
            font-size: 16px;
            font-weight: 600;
            margin-top: 12px;
        }

        .realestate-aboutus-member p {
            font-size: 13px;
            color: #555;
            margin-bottom: 35px;
        }

        .social-links {
            position: absolute;
            bottom: 10px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            gap: 10px;
        }

        .social-links a {
            font-size: 14px;
            color: #111;
        }

        .social-links a:hover {
            color: #666;
        }
        
        @media (max-width: 991px) {
            .col-team {
                flex: 0 0 50%;
            }
        }

        @media (max-width: 576px) {
            .col-team {
                flex: 0 0 100%;
            }
        }
    </style>
</head>

<body>

<%@ include file="navbar.jsp" %>

<div class="realestate-aboutus-wrapper">

    <section class="realestate-aboutus-section container">
        <div class="row align-items-center">
            <div class="col-lg-6 mb-3">
                <img src="https://images.unsplash.com/photo-1600585154340-be6161a56a0c" alt="About">
            </div>
            <div class="col-lg-6 realestate-aboutus-text">
                <i class="fa-solid fa-bullseye"></i>
                <h3>Our Mission</h3>
                <p>We provide honest, transparent, and reliable real estate solutions to help clients find their perfect property.</p>

                <i class="fa-solid fa-eye mt-3"></i>
                <h3>Our Vision</h3>
                <p>To become Nepal’s most trusted real estate platform with modern and customer-focused services.</p>
            </div>
        </div>
    </section>

    <section class="realestate-aboutus-features container">
        <h3 class="mb-4">Why Choose Us</h3>
        <div class="row">
            <div class="col-md-4 feature-item">
                <i class="fa-solid fa-handshake"></i>
                <h5>Trusted Service</h5>
                <p>Transparent and professional property solutions.</p>
            </div>
            <div class="col-md-4 feature-item">
                <i class="fa-solid fa-clock"></i>
                <h5>Fast Process</h5>
                <p>Quick property listing and response.</p>
            </div>
            <div class="col-md-4 feature-item">
                <i class="fa-solid fa-house"></i>
                <h5>Wide Choices</h5>
                <p>Properties across prime locations.</p>
            </div>
        </div>
    </section>

    <section class="realestate-aboutus-team container">
        <h3>Meet Our Team</h3>

        <div class="team-row">
            <div class="col-team">
                <div class="realestate-aboutus-member">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT566UD1v5uOrASrwpcDwOC87WngQPLPwIeKA&s">
                    <h5>Rima Bijay</h5>
                    <p>Founder & CEO</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-team">
                <div class="realestate-aboutus-member">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs-lHPCs0-HL8Qm7NYdkl-KFKaMGGj6SyHUQ&s">
                    <h5>Samir Shrestha</h5>
                    <p>Marketing Head</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-team">
                <div class="realestate-aboutus-member">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF2C-7MpVnDwwCsoZeRfxFF5uv648u0ir5aw&s">
                    <h5>Priya Koirala</h5>
                    <p>Property Consultant</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-team">
                <div class="realestate-aboutus-member">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX4nCcoz0j4tGQYrSpx2rAq9sO5l3U0HqXjFg&s">
                    <h5>John Doe</h5>
                    <p>Designer</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>

<%@ include file="footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
