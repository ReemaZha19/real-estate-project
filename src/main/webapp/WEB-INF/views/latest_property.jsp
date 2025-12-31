<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Latest Properties</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

    <style>
		
		.realestate-landing-title{
			letter-spacing: 1px;
			font-weight:300;
			font-family: 'Segoe UI', sans-serif;
			font-size:30px;
			
		}

        .realestate-landingproperty-card {
            border-radius: 10px;
            overflow: hidden;
            background: #fff;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
            height: 100%;
        }

        .realestate-landingproperty-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.15);
        }

        .realestate-landingproperty-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .realestate-landingproperty-card-body {
            flex: 1 1 auto;
            padding: 1rem;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .realestate-landingproperty-card-body h5{
        	margin: 0.2rem 0;
            font-size: 18px;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            letter-spacing:0.5px;
            font-family: 'Segoe UI', sans-serif;
        }
        
        .realestate-landingproperty-card-body p {
            margin: 0.2rem 0;
            font-size: 14px;
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            letter-spacing:0.5px;
            font-family: 'Segoe UI', sans-serif;
        }

        .realestate-landingview-details-btn {
            margin-top: 0.5rem;
            font-weight: 500;
            border-radius: 6px;
            letter-spacing: 1.5px;
            font-family: 'Segoe UI', sans-serif;
        }


        .realestate-landingview-all-btn {
            margin-top: 30px;
            letter-spacing: 1px;
            font-family: 'Segoe UI', sans-serif;
        }
    </style>
</head>
<body>

<section class="container my-5">
    <h2 class="mb-4 text-center realestate-landing-title">Latest Properties</h2>

    <div class="row g-4">
        <c:forEach items="${property_list}" var="p">
            <div class="col-6 col-sm-6 col-md-4 col-lg-3">
                <div class="realestate-landingproperty-card">
                    <img src="${cp}/property_image/${p.image1}" alt="${p.name}"/>
                    <div class="realestate-landingproperty-card-body">
                        <div>
                            <h5>${p.name}</h5>
                            <p>${p.address}</p>
                            <p class="fw-bold">${p.price}</p>
                        </div>
                        <a href="${cp}/property_detail/${p.id}" class="btn btn-dark realestate-landingview-details-btn">View Details</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <div class="text-center realestate-landingview-all-btn">
        <a href="${cp}/all_properties" class="btn btn-outline-dark btn-lg fs-6">View All Properties</a>
    </div>
</section>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

</body>
</html>
