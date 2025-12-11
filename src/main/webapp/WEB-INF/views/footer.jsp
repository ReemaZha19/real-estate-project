<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
<!Doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Footer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <style>
    	.realestate-footer-main,
		.realestate-footer-title,
		.realestate-footer-bottom,
		.realestate-footer-list li a,
		.realestate-footer-newsletter-title {
		    font-family: 'Segoe UI', sans-serif !important;
		    letter-spacing: 1.5px !important;
		}
    	
    	.realestate-footer-container{
    		border-top:#6b6a6a 0.5px solid
    	}
    	
		.realestate-footer-newsletter {
		    margin-bottom: 1.5rem;
		}
		
		.realestate-footer-newsletter-title {
		    font-size: 18px;
		    margin-bottom: 0; 
		    font-weight: 300;
		}
		
		.realestate-footer-newsletter-form {
		    gap: 0.5rem;
		    flex-wrap: wrap;
		}
		
		.realestate-footer-newsletter-input {
		    padding: 0.5rem 1rem;
		    border-radius: 20px;
		    border: 1px solid #fff;
		    background-color: transparent;
		    color: #fff;
		    width: 250px;
		    font-size: 0.9rem;
		    letter-spacing: 1px;
		}
		
		
		 .realestate-footer-newsletter-input:focus{
			 outline: none !important;       
		    box-shadow: none !important;    
		    border-color: #fff;            
		    color: #fff; 
		}
		
		.realestate-footer-newsletter-btn {
		    padding: 0.50rem 1.5rem;
		    border-radius: 20px;
		    border: 1px solid #fff;
		    background-color: #fff;
		    color: #000;
		    font-weight: 400;
		    cursor: pointer;
		    letter-spacing: 1px;
		    transition: all 0.3s ease;
		    font-size:12px;
		}
		
		.realestate-footer-newsletter-btn:hover {
		    background-color: transparent;
		    color: #fff;
		    border-color: #fff;
		}
		.realestate-footer-divider {
		    border-color: #444;
		    margin: 1.5rem 0;
		}
		
		.realestate-footer-main {
		    font-family: 'Segoe UI', sans-serif;
		    color: #fff;
		    background-color: #000;
		    letter-spacing: 1.5px;
		}
		
		
		
		.realestate-footer-logo {
		    max-width: 100px;
		    height: auto;
		    margin: 0 auto;
		    cursor:pointer;
		    
		}
		
		@keyframes zoomInOut {
		    0% { transform: scale(1); }
		    50% { transform: scale(1.05); }
		    100% { transform: scale(1); }
		}
		
		.realestate-footer-contact p {
		     margin: 0.5rem 0;
		    font-size: 0.9rem;
		    cursor: pointer;
		    display: inline-block; 
		    transition: transform 0.3s, color 0.3s;
		}
		
		.realestate-footer-contact p:hover {
		    color: #ccc;
		    animation: zoomInOut 0.6s ease-in-out;
		}
		
		
		
		.realestate-footer-title {
		    font-weight: 600;
		    margin-bottom: 0.8rem;
		    font-size: 1rem;
		}
		
		.realestate-footer-list {
		    list-style: none;
		    padding: 0;
		}
		
		.realestate-footer-list li {
		    margin-bottom: 0.5rem;
		}
		
		.realestate-footer-list li a {
		    text-decoration: none;
		    color: #fff;
		   display: inline-block; 
		    transition: transform 0.3s, color 0.3s;
		    font-size: 14px;
		}
		
		.realestate-footer-list li a:hover {
			animation: zoomInOut 0.6s ease-in-out;
		    color: #ccc;
		}
		
		.realestate-footer-social a {
		    color: #fff;
		    margin-right: 10px;
		    font-size: 16px;
		    display: inline-block; 
		    transition: color 0.3s, transform 0.3s;
		}
		
		.realestate-footer-social a:hover {
		    color: #ccc;
		    transform: scale(1.5); 
		}
		
		.realestate-footer-bottom {
		    text-align: center;     
		    padding: 0.5rem 0;       
		    color: #fff;   
		    font-size:12px;           
		    font-family: 'Segoe UI', sans-serif;
		    letter-spacing: 2px;

		}
		
		.realestate-footer-col1 {
		    padding-left: 50px;
		}
		
		.realestate-footer-col2 {
		    padding-right: 50px;
		}
		
		.realestate-footer-col3,
		.realestate-footer-col4 {
		    padding: 0 20px; 
		}

	

		@media (max-width: 767px) {
		    .realestate-footer-main {
		        text-align: center;
		    }
		
		    .realestate-footer-social {
		        margin-top: 1rem;
		    }
		
		    .realestate-footer-col1,
		    .realestate-footer-col2,
		    .realestate-footer-col3,
		    .realestate-footer-col4 {
		        text-align: center !important;
		        padding-left: 0;
		        padding-right: 0;
		    }
		    
		    .realestate-footer-newsletter-form {
		    	flex-wrap: none;
		    	margin-top: 15px;
			}
			
			.realestate-footer-newsletter-btn {
			
			    padding: 0.50rem 1rem;
			    border-radius: 20px;
			    border: 1px solid #fff;
			    background-color: #fff;
			    color: #000;
			    font-weight: 400;
			    cursor: pointer;
			    letter-spacing: 1px;
			    transition: all 0.3s ease;
			    font-size: 12px;
			}
		
			.realestate-footer-newsletter {
			    margin-bottom: -1.5rem;
			}
			
			.realestate-footer-contact p {
				 display: block; 
			 
			}
	
	    }


	</style>
    
    </head>
  <body>
  
	  <footer class="realestate-footer-container mt-4 pt-4 bg-dark">
   
	    <div class="realestate-footer-newsletter container">
		    <div class="row align-items-center">
		       
		        <div class="col-md-6 col-sm-12">
		            <h4 class="realestate-footer-newsletter-title text-white px-3">Subscribe to our Newsletter</h4>
		        </div>
		       
		        <div class="col-md-6 col-sm-12">
		            <div class="realestate-footer-newsletter-form d-flex justify-content-end">
		                <input type="email" placeholder="Enter your email" class="realestate-footer-newsletter-input"/>
		                <button class="realestate-footer-newsletter-btn">Submit</button>
		            </div>
		        </div>
		    </div>
		</div>

    	<hr class="realestate-footer-divider"/>

	
		<div class="realestate-footer-main container py-5">
		    <div class="row">

		        <div class="col-12 col-md-3 mb-4 mb-md-0 realestate-footer-col1 text-center text-md-start">
		            <img src="https://img.freepik.com/premium-vector/abstract-silhouette-real-estate-building-logo-template_1277164-1359.jpg?semt=ais_hybrid&w=740&q=80" alt="Logo" class="img-fluid realestate-footer-logo mb-3"/>
		            <div class="realestate-footer-contact">
		                <p><i class="fas fa-envelope"></i> info@realestate.com</p>
		                <p><i class="fas fa-phone"></i> +977 9812345678</p>
		            </div>
		        </div>
		

		        <div class="col-12 col-md-3 mb-4 mb-md-0 realestate-footer-col2 text-center text-md-start">
		            <h5 class="realestate-footer-title">Property Types</h5>
		            <ul class="realestate-footer-list">
		                <li><a href="#">Residential</a></li>
		                <li><a href="#">Commercial</a></li>
		                <li><a href="#">Land</a></li>
		                <li><a href="#">Luxury</a></li>
		            </ul>
		        </div>
		

		        <div class="col-12 col-md-3 mb-4 mb-md-0 realestate-footer-col3 text-center text-md-start">
		            <h5 class="realestate-footer-title">Quick Links</h5>
		            <ul class="realestate-footer-list">
		                <li><a href="#">About Us</a></li>
		                <li><a href="#">Contact</a></li>
		                <li><a href="#">FAQs</a></li>
		            </ul>
		        </div>
		

		        <div class="col-12 col-md-3 mb-4 mb-md-0 realestate-footer-col4 text-center text-md-end">
		            <div class="realestate-footer-social">
		                <a href="#"><i class="fab fa-facebook-f"></i></a>
		                <a href="#"><i class="fab fa-twitter"></i></a>
		                <a href="#"><i class="fab fa-instagram"></i></a>
		                <a href="#"><i class="fab fa-linkedin-in"></i></a>
		            </div>
		        </div>
		    </div>
		</div>


	    <hr class="realestate-footer-divider"/>
	

	    <div class="realestate-footer-bottom">
	        <p>© 1995-2025 National Association of REALTORS</p>
	    </div>
	    
	</footer>

  
  </body>
</html>