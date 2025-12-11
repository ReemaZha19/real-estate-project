<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>Similar Products</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"/>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
	
	    <style>
			
			.realestate-similar-products-card {
			    border-radius: 10px;
			    overflow: hidden;
			    height: 390px !important; 
			    display: flex;
			    flex-direction: column;
			    background-color: #fff;
			}
			
			.realestate-similar-products-card-img {
			    height: 200px !important; 
			    width: 100% !important;
			    object-fit: cover !important;
			    display: block;
			}
			
			.realestate-similar-products-card-body {
			    flex: 1 1 auto; 
			    padding: 1rem;
			    display: flex;
			    flex-direction: column;
			    justify-content: space-between; 
			}
			
			.realestate-similar-products-card-body h5,
			.realestate-similar-products-card-body p {
			    margin: 0.2rem 0;
			    font-size: 0.9rem;
			    overflow: hidden;
			    text-overflow: ellipsis;
			    display: -webkit-box;
			    -webkit-line-clamp: 1; 
			    -webkit-box-orient: vertical;
			    letter-spacing: 0.5px;
			}
			
			.realestate-similar-products-card-body h5 {
			    font-size: 1.05rem;
			    font-weight: 600;
			}
			
			.realestate-similar-products-view-btn {
			    width: 100%;
			    padding: 0.4rem 0;
			    font-weight: 500;
			    border-radius: 6px;
			    border: none;
			    letter-spacing: 1px;
			    text-align: center;
			}
			
			.realestate-similar-products-view-btn:hover {
			    background-color: #fff !important;
			    color: #000 !important;
			    border: 1px solid #000 !important;
			}
			
			
			#realestateSimilarProductDesktopCarousel, #realestateSimilarProductMobileCarousel {
			    position: relative;
			}
			
			.realestate-similar-product-carousel-control-prev-des,
			.realestate-similar-product-carousel-control-next-des {
			    position: absolute !important; 
			    top: 50% !important;
			    transform: translateY(-50%);
			    width: 50px;
			    height: 50px;
			    background: #000;
			    border-radius: 50%;
			    display: flex;
			    align-items: center;
			    justify-content: center;
			    z-index: 9999 !important;
			    color: #fff;
			    cursor: pointer;
			    border:none;
			}
			
			.realestate-similar-product-carousel-control-prev-des {
			    left: -30px !important;  
			}
			
			.realestate-similar-product-carousel-control-next-des {
			    right: -30px !important;
			}
			
			
			
			.realestate-similar-product-carousel-control-prev-des:hover,
			.realestate-similar-product-carousel-control-next-des:hover {
			    opacity: 10;
			}
			
			.realestate-similar-product-carousel-control-prev-mob,
			.realestate-similar-product-carousel-control-next-mob {
			    position: absolute !important;
			    top: 45% !important;
			    transform: translateY(-50%);
			    width: 30px;
			    height: 30px;
			    background-color: black !important; 
			    color: #fff; 
			    border: none;
			    border-radius: 50%;
			    font-size: 14px;
			    display: flex;
			    justify-content: center;
			    align-items: center;
			    cursor: pointer;
	   
			}
			
			.realestate-similar-product-carousel-control-prev-mob {
			    left: 0px !important;
			}
			
			.realestate-similar-product-carousel-control-next-mob {
			    right: 0px !important;
			}
			
			#realestateSimilarProductDesktopCarousel .carousel-inner .carousel-item .row {
			    display: flex;
			    flex-wrap: nowrap;
			}
			
			#realestateSimilarProductDesktopCarousel .carousel-item .col-md-4 {
			    display: flex;
			}
	
	        
	    </style>
	    
	</head>
	
	<body>

		<section class="similar-products-section container my-5">
		    <h3 class="mb-4">Similar Properties</h3>
		
		    <!-- Desktop Carousel  -->
		    
		   <div id="realestateSimilarProductDesktopCarousel" class="carousel slide d-none d-md-block" data-bs-ride="carousel">
		       <div class="carousel-inner">
		           <c:forEach var="i" begin="0" end="${fn:length(property_list)-1}" step="3" varStatus="slide">
		               <div class="carousel-item ${slide.first ? 'active' : ''}">
		                   <div class="row g-3">
		                       <c:forEach var="j" begin="${i}" end="${i+2}">
		                           <c:if test="${j < fn:length(property_list)}">
		                               <c:set var="p" value="${property_list[j]}"/>
		                               <div class="col-md-4">
		                                   <div class="card realestate-similar-products-card">
		                                       <img src="${cp}/property_image/${p.image1}" class="realestate-similar-products-card-img img-fluid"/>
		                                       <div class="realestate-similar-products-card-body">
		                                           <h5>${p.name}</h5>
		                                           <p>${p.address}</p>
		                                           <p>${p.description}</p>
		                                           <p>${p.price}</p>
		                                           
		                                           <a href="${cp}/property_detail/${p.id}" class="btn realestate-similar-products-view-btn bg-dark text-white">View Details</a>
		                                       </div>
		                                   </div>
		                               </div>
		                           </c:if>
		                       </c:forEach>
		                   </div>
		               </div>
		           </c:forEach>
		       </div>
		       
		      <button class="realestate-similar-product-carousel-control-prev-des  d-none d-sm-block" type="button" data-bs-target="#realestateSimilarProductDesktopCarousel" data-bs-slide="prev">
		           <span><i class="fas fa-chevron-left"></i></span>
		       </button>
		       <button class=" realestate-similar-product-carousel-control-next-des d-none d-sm-block" type="button" data-bs-target="#realestateSimilarProductDesktopCarousel" data-bs-slide="next">
		           <span><i class="fas fa-chevron-right"></i></span>
		       </button>
		      </div>
		       
		    	
		    
		
		    <!-- Mobile Carousel  -->
		    
		    <div id="realestateSimilarProductMobileCarousel" class="carousel slide d-md-none" data-bs-ride="carousel">
		        <div class="carousel-inner">
		            <c:forEach items="${property_list}" var="p" varStatus="status">
		                <div class="carousel-item ${status.first ? 'active' : ''}">
		                    <div class="col-12">
		                        <div class="card realestate-similar-products-card">
		                            <img src="${cp}/property_image/${p.image1}" class="realestate-similar-products-card-img img-fluid"/>
		                            <div class="realestate-similar-products-card-body">
		                                <h5>${p.name}</h5>
		                                <p>${p.address}</p>
		                                <p>${p.description}</p>
		                                <p>${p.price}</p>
		                                <a href="${cp}/property_detail/${p.id}" class="btn realestate-similar-products-view-btn bg-dark text-white">View Details</a>
		                            </div>
		                        </div>
		                    </div>
		                </div>
		            </c:forEach>
		        </div>
		        <button class="realestate-similar-product-carousel-control-prev-mob" type="button" data-bs-target="#realestateSimilarProductMobileCarousel" data-bs-slide="prev">
		            <span><i class="fas fa-chevron-left"></i></span>
		        </button>
		        <button class="realestate-similar-product-carousel-control-next-mob" type="button" data-bs-target="#realestateSimilarProductMobileCarousel" data-bs-slide="next">
		            <span><i class="fas fa-chevron-right"></i></span>
		        </button>
		    </div>
		</section>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
		        
			<script>
			   
			    var desktopCarousel = document.querySelector("#realestateSimilarProductDesktopCarousel");
			    if(desktopCarousel) {
			        new bootstrap.Carousel(desktopCarousel, { interval: 4000, ride: "carousel", pause: false, wrap: true });
			    }
			
			    var mobileCarousel = document.querySelector("#realestateSimilarProductMobileCarousel");
			    if(mobileCarousel) {
			        new bootstrap.Carousel(mobileCarousel, { interval: 4000, ride: "carousel", pause: false, wrap: true });
			    }
			</script>
	
	</body>
</html>
