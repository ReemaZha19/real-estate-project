<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" 
				integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
		<title>Property Detail Page</title>
		
	<style>	
			.realestate-propertydetail-multi-slider-container {
			    position: relative;
			    width: 100%;
			    overflow: hidden;
			    
			}
			
			.realestate-propertydetail-multi-slider-wrapper {
			    display: flex;
			    transition: transform 0.5s ease-in-out;
			    padding: 0 10px !important; 
			    box-sizing: border-box;
			}

			.realestate-propertydetail-slider-img {
			    flex: 0 0 calc((100% - 60px) / 3);
			    height: 350px;
			    object-fit: cover;
			    border-radius: 8px;
			    cursor: pointer;
			    padding: 0 0 0 10px;
			}


			.realestate-propertydetail-multi-slider-btn {
			    position: absolute;
			    top: 50%;
			    transform: translateY(-50%);
			    background-color: gray; 
			    color: #fff; 
			    border: none;
			    width: 45px;
			    height: 45px;
			    font-size: 20px;
			    border-radius: 50%;
			    display: flex;
			    justify-content: center;
			    align-items: center;
			    cursor: pointer;
			    z-index: 10;
			}
			
			.realestate-propertydetail-multi-slider-btn.prev { left: 20px; }
			.realestate-propertydetail-multi-slider-btn.next { right: 20px; }

	        .realestate-propertydetail-details {
	            font-family: 'Segoe UI', sans-serif;
	            border-top: 1px solid #e0e0e0;
	            padding-top: 60px;
	
	        }
	
	        .realestate-propertydetail-name,
			.realestate-propertydetail-authority {
			    font-size: 28px;
			    font-weight: 300;
			    margin-bottom: 5px;
			    color: #222;
			    border-bottom: 1px solid #444;
			    display: inline-block;
			    padding-bottom: 2px;
			    letter-spacing: 0.5px;
			    font-family: 'Segoe UI', sans-serif;
			    transition: color 0.3s ease, transform 0.3s ease;
			}
			
			.realestate-propertydetail-name:hover,
			.realestate-propertydetail-name:active,
			.realestate-propertydetail-name:focus,
			.realestate-propertydetail-authority:hover,
			.realestate-propertydetail-authority:active,
			.realestate-propertydetail-authority:focus {
			    color: black;
			    transform: translateY(-3px);
			    cursor: pointer;
			    border-bottom: none;
			}

	
	        .realestate-propertydetail-description {
	            font-size: 16px;
	            color: #555;
	            margin-top: 10px;
	            letter-spacing: 1px;
	            font-family: 'Segoe UI', sans-serif;
	        }

	
	        .realestate-propertydetail-contact-section h4 {
	            font-weight: 600;
	            letter-spacing: 1px;
	        }
	
	
	        .prealestate-propertydetail-contact-input {
	            background-color: #111;
	            color: #fff;
	            border: 1px solid #fff;
	            border-radius: 5px;
	            padding: 8px 12px;
	             }
	
	        .realestate-propertydetail-contact-input::placeholder {
	            color: #ccc;
	        }
	
	        .realestate-propertydetail-contact-input:focus {
	            outline: none;
	
	        }
	
			 @media (max-width: 768px) {
			 	.realestate-propertydetail-multi-slider-btn{
			    top: 50%;
			    transform: translateY(-50%);
			 	background-color: gray; 
			    color: #fff; 
			    border: none;
			    width: 35px;
			    height: 35px;
			    font-size: 14px;
			    border-radius: 50%;
			    display: flex;
			    justify-content: center;
			    align-items: center;
			    cursor: pointer;
			    z-index: 10;
			}
			
			.realestate-propertydetail-slider-img {
				border-radius:0px;
				padding:0 0 0 0px;
			}
			
			.realestate-propertydetail-multi-slider-btn.prev { left: 0px; }
			.realestate-propertydetail-multi-slider-btn.next { right: 0px; }
			 }
			 
			 .realestate-propertydetail-multi-slider-wrapper {
			    display: flex;
			    transition: transform 0.5s ease-in-out;
			    padding: 0 !important;
			    box-sizing: border-box;
			}
			 
	            
	
    	</style>
    	
	</head>
	
	<body>
	
	 
<%@include file="navbar.jsp" %>
  

<section class="pt-5 mt-sm-0 py-5" style="font-family: 'Segoe UI', sans-serif;">
    <div class="realestate-propertydetail-multi-slider-container">
        <div class="realestate-propertydetail-multi-slider-wrapper" id="realestatePropertyDetailMultiSlider">

            <img src="${cp}/property_image/${property.image1}" class="realestate-propertydetail-slider-img">
            <img src="${cp}/property_image/${property.image2}" class="realestate-propertydetail-slider-img">
            <img src="${cp}/property_image/${property.image3}" class="realestate-propertydetail-slider-img">
            <img src="${cp}/property_image/${property.image1}" class="realestate-propertydetail-slider-img">
            <img src="${cp}/property_image/${property.image2}" class="realestate-propertydetail-slider-img">
            <img src="${cp}/property_image/${property.image3}" class="realestate-propertydetail-slider-img">

        </div>

        <button class="realestate-propertydetail-multi-slider-btn prev" id="prevBtn">
		    <i class="fa-solid fa-angle-left"></i>
		</button>
		<button class="realestate-propertydetail-multi-slider-btn next" id="nextBtn">
		    <i class="fa-solid fa-angle-right"></i>
		</button>

    </div>
</section>


<div class="modal fade" id="realestatePropertyDetailImageModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-lg"> 
        <div class="modal-content  border-0">
            <div class="modal-body d-flex justify-content-center align-items-center p-0">
                <img id="realestatePropertyDetailModalImage" style="width: 100%; object-fit: contain; cursor:pointer;" >
            </div>
        </div>
    </div>
</div>





    <section class="realestate-propertydetail-details mt-4 " style="font-family: 'Segoe UI', sans-serif; ">
        <div class="container">
            <div class="d-flex flex-column flex-md-row justify-content-between align-items-start">

                <div class="property-info">
                    <h2 class="realestate-propertydetail-name">${property.name}</h2>
                    <p class="realestate-propertydetail-description text-muted">
                       ${property.address }
                    </p>
                    <p class="realestate-propertydetail-description text-muted">
                       ${property.description }
                    </p>
                    
                    <p class="realestate-propertydetail-description text-muted">
	                       ${property.status }
	                </p>
                    
                    
                    <p class="realestate-propertydetail-description text-muted">
	                       ${property.price }
	                </p>
                    
                      <h3 class="realestate-propertydetail-authority"> 
                    	<c:if test="${not empty property.owner}"> Owner: ${ property.owner.username }</c:if>
                    	<c:if test="${not empty property.agent}"> Agent: ${ property.agent.username }</c:if>
                    
                    </h3>
                    
                </div>

                

            </div>
        </div>
    </section>


    <section class="realestate-propertydetail-contact-section py-5" style="background-color:#f8f8f8; font-family: 'Segoe UI', sans-serif; letter-spacing:1px;">
        <div class="container">
            <div class="row g-4">

                <div class="col-md-8">
                    <div class="description-box p-3 border" style="background-color:#fff; border-radius:8px;">
                        <h4 class="mb-3" style="font-family:'Segoe UI', sans-serif; color:#222;">Property Details</h4>
                        <p style="font-family:'Segoe UI', sans-serif; color:#555; line-height:1.6;">
                            ${property.description }
                        </p>
                        <p style="font-family:'Segoe UI', sans-serif; color:#555; line-height:1.6;">
                            ${property.propertyType.description }
                        </p>
                        
                        <a class="btn btn-sm btn-dark text-light" href="${cp}/user/book/property/${property.id}">Book This Property</a>
                    </div>
                    
                    
                </div>


                <div class="col-md-4">
                    <div class="contact-form p-4" style="background-color:#000; color:#fff; border-radius:8px;">
                        <h4 class="mb-3" style="font-family:'Segoe UI', sans-serif;">Contact for Inquiry</h4>
                        <form action="${cp}/inquiry_message" method="post">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control realestate-propertydetail-contact-input" id="name" placeholder="Your Name">
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control realestate-propertydetail-contact-input" id="email"
                                    placeholder="you@example.com">
                            </div>
                            <div class="mb-3">
                                <label for="message" class="form-label">Message</label>
                                <textarea class="form-control realestate-propertydetail-contact-input" id="message" rows="6"
                                    placeholder="Your message..."></textarea>
                            </div>
                            <button type="submit" class="btn btn-light w-100">Send Inquiry</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </section>

  
	
	<%@include file="similar_product.jsp" %>
	
	<%@include file="footer.jsp" %>
	
	

	
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" 
			integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/jquery-3.7.1.min.js"
        	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
			
			<script>
				$(document).ready(function() {
				    const $bannerWrapper = $("#realestatePropertyDetailMultiSlider");
				    const $bannerImages = $(".realestate-propertydetail-slider-img");
				    let bannerIndex = 0;
				
				    function getBannerWidth() {
				        return $bannerImages.first().outerWidth(true);
				    }
				
				    function bannerNext() {
				        bannerIndex++;
				        $bannerWrapper.css({
				            "transition": "transform 0.5s ease-in-out",
				            "transform": "translateX(-" + (bannerIndex * getBannerWidth()) + "px)"
				        });
				
				        if (bannerIndex === $bannerImages.length - 3) {
				            setTimeout(function() {
				                $bannerWrapper.css("transition", "none");
				                bannerIndex = 0;
				                $bannerWrapper.css("transform", "translateX(0px)");
				            }, 500);
				        }
				    }
				
				    function bannerPrev() {
				        if (bannerIndex === 0) {
				            bannerIndex = $bannerImages.length - 3;
				            $bannerWrapper.css({
				                "transition": "none",
				                "transform": "translateX(-" + (bannerIndex * getBannerWidth()) + "px)"
				            });
				            setTimeout(function() {
				                bannerIndex--;
				                $bannerWrapper.css({
				                    "transition": "transform 0.5s ease-in-out",
				                    "transform": "translateX(-" + (bannerIndex * getBannerWidth()) + "px)"
				                });
				            }, 20);
				        } else {
				            bannerIndex--;
				            $bannerWrapper.css({
				                "transition": "transform 0.5s ease-in-out",
				                "transform": "translateX(-" + (bannerIndex * getBannerWidth()) + "px)"
				            });
				        }
				    }
				
				    $("#nextBtn").click(bannerNext);
				    $("#prevBtn").click(bannerPrev);
				
				    let bannerAutoPlay = setInterval(bannerNext, 1200);
				
				    $bannerWrapper.hover(
				        function() { clearInterval(bannerAutoPlay); },
				        function() { bannerAutoPlay = setInterval(bannerNext, 2000); }
				    );

				    const modal = new bootstrap.Modal($("#realestatePropertyDetailImageModal")[0]);
				    const $modalImage = $("#realestatePropertyDetailModalImage");
				
				    $bannerImages.click(function() {
				        $modalImage.attr("src", $(this).attr("src"));
				        modal.show();
				    });
				});
			</script>
	</body>
</html>