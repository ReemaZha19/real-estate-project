<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Category Properties</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>
.realestate-category-header--title{
	letter-spacing: 1px;
	font-weight:300;
	font-family: 'Segoe UI', sans-serif;
	font-size:30px;
	border-top: 0.5px solid #888 ;
}

.realestate-category-btn { 
	margin: 5px; 
	font-size:16px;
	font-weight: 500; 
	cursor: pointer;
	letter-spacing: 1px; 
	font-family: 'Segoe UI', sans-serif;
	
}
.realestate-category-btn.active {
	 background-color: #000; 
	 color: #fff;
}

.realestate-category-card {
    border-radius: 10px; 
    overflow: hidden; 
    display: flex; 
    flex-direction: column;
    height: 100%; 
    background: #fff; 
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.realestate-category-card:hover { 
	transform: translateY(-5px); 
	box-shadow: 0 12px 25px rgba(0,0,0,0.18); 
}

.realestate-category-card img {
	 width: 100%; 
	 height: 200px; 
	 object-fit: cover; 
}

.realestate-category-card-body { 
	padding: 1rem; 
	display: flex; 
	flex-direction: column; 
	justify-content: space-between; 
}

.realestate-category-card-body h5 { 
	font-size: 18px; 
	font-weight: 500; 
	margin: 0.2rem 0; 
	letter-spacing:0.5px;
	font-family: 'Segoe UI', sans-serif;
}

.realestate-category-card-body p { 
	margin: 0.2rem 0; 
	font-size: 16px; 
	color: #555; 
	letter-spacing:0.5px;
	font-family: 'Segoe UI', sans-serif;
}

.realestate-category-view-btn {
    width: 100%; 
    padding: 0.4rem 0; 
    font-weight: 500; 
    border-radius: 6px; 
    border: none;
    text-align: center; 
    background: #000; 
    color: #fff;
    letter-spacing:1.5px;
	font-family: 'Segoe UI', sans-serif;
	text-decoration:none;
}
.realestate-category-view-btn:hover { 
	background: #fff; 
	color: #000; 
	border: 1px solid #000; 
}

.realestate-category-carousel .carousel-control-prev,
.realestate-category-carousel .carousel-control-next {
    width: 40px; 
    height: 40px; 
    background-color: black; 
    border-radius: 50%;
    display: flex; 
    justify-content: center; 
    align-items: center;
    top:40%;
}

</style>
</head>
<body>

<section class="container my-5">
<h3 class="mb-4 text-center realestate-category-header--title pt-4" >Categories</h3>

<div class="text-center mb-4">
    <button class="btn btn-outline-dark realestate-category-btn active" data-category="All">All</button>
    <button class="btn btn-outline-dark realestate-category-btn" data-category="Apartment">Apartment</button>
    <button class="btn btn-outline-dark realestate-category-btn" data-category="House">House</button>
    <button class="btn btn-outline-dark realestate-category-btn" data-category="Villa">Villa</button>
    <button class="btn btn-outline-dark realestate-category-btn" data-category="Land">Land</button>
</div>

<div id="realestateCategoryCarousel" class="carousel slide realestate-category-carousel" data-bs-ride="carousel">
    <div class="carousel-inner" id="carouselContent">

        <div class="realestate-category-item" data-category="Apartment">
            <div class="realestate-category-card">
                <img src="https://static.vecteezy.com/system/resources/thumbnails/046/371/307/small/big-custom-made-luxury-house-with-nicely-landscaped-front-yard-and-driveway-to-garage-in-the-suburbs-photo.jpg" alt="Apartment 1"/>
                <div class="realestate-category-card-body">
                    <h5>Apartment 1</h5><p>Downtown City</p><p>$120,000</p>
                    <a href="#" class="realestate-category-view-btn">View Details</a>
                </div>
            </div>
        </div>
        <div class="realestate-category-item" data-category="House">
            <div class="realestate-category-card">
                <img src="https://images.unsplash.com/photo-1600585154340-be6161a56a0c?auto=format&fit=crop&w=400&h=200&q=80" alt="House 1"/>
                <div class="realestate-category-card-body">
                    <h5>House 1</h5><p>Green Suburb</p><p>$250,000</p>
                    <a href="#" class="realestate-category-view-btn">View Details</a>
                </div>
            </div>
        </div>
        <div class="realestate-category-item" data-category="Villa">
            <div class="realestate-category-card">
                <img src="https://images.unsplash.com/photo-1599423300746-b62533397364?auto=format&fit=crop&w=400&h=200&q=80" alt="Villa 1"/>
                <div class="realestate-category-card-body">
                    <h5>Villa 1</h5><p>Beachfront</p><p>$500,000</p>
                    <a href="#" class="realestate-category-view-btn">View Details</a>
                </div>
            </div>
        </div>
        <div class="realestate-category-item" data-category="Land">
            <div class="realestate-category-card">
                <img src="https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=400&h=200&q=80" alt="Land 1"/>
                <div class="realestate-category-card-body">
                    <h5>Land 1</h5><p>Countryside</p><p>$80,000</p>
                    <a href="#" class="realestate-category-view-btn">View Details</a>
                </div>
            </div>
        </div>
        <div class="realestate-category-item" data-category="Apartment">
            <div class="realestate-category-card">
                <img src="https://static.vecteezy.com/system/resources/thumbnails/046/371/299/small_2x/pour-house-and-lots-of-golden-leaves-in-the-fall-photo.jpg" alt="Apartment 2"/>
                <div class="realestate-category-card-body">
                    <h5>Apartment 2</h5><p>City Center</p><p>$140,000</p>
                    <a href="#" class="realestate-category-view-btn">View Details</a>
                </div>
            </div>
        </div>
        <div class="realestate-category-item" data-category="House">
            <div class="realestate-category-card">
                <img src="https://images.unsplash.com/photo-1570129477492-45c003edd2be?auto=format&fit=crop&w=400&h=200&q=80" alt="House 2"/>
                <div class="realestate-category-card-body">
                    <h5>House 2</h5><p>Suburban Area</p><p>$270,000</p>
                    <a href="#" class="realestate-category-view-btn">View Details</a>
                </div>
            </div>
        </div>
        <div class="realestate-category-item" data-category="Villa">
            <div class="realestate-category-card">
                <img src="https://images.unsplash.com/photo-1599423300746-b62533397364?auto=format&fit=crop&w=400&h=200&q=80" alt="Villa 2"/>
                <div class="realestate-category-card-body">
                    <h5>Villa 2</h5><p>Seaside</p><p>$550,000</p>
                    <a href="#" class="realestate-category-view-btn">View Details</a>
                </div>
            </div>
        </div>
        <div class="realestate-category-item" data-category="Land">
            <div class="realestate-category-card">
                <img src="https://images.unsplash.com/photo-1518152006812-edab29b069ac?auto=format&fit=crop&w=400&h=200&q=80" alt="Land 2"/>
                <div class="realestate-category-card-body">
                    <h5>Land 2</h5><p>Green Field</p><p>$90,000</p>
                    <a href="#" class="realestate-category-view-btn">View Details</a>
                </div>
            </div>
        </div>
    </div>

    <button class="carousel-control-prev" type="button" data-bs-target="#realestateCategoryCarousel" data-bs-slide="prev">
        <span><i class="fas fa-chevron-left"></i></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#realestateCategoryCarousel" data-bs-slide="next">
        <span><i class="fas fa-chevron-right"></i></span>
    </button>
</div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
function groupItems(items) {
    var width = $(window).width();
    var itemsPerSlide = width >= 992 ? 4 : (width >= 768 ? 2 : 1);

    var carouselInner = $('#carouselContent');
    carouselInner.empty();

    for (var i = 0; i < items.length; i += itemsPerSlide) {
        var slideDiv = $('<div class="carousel-item"></div>');
        if (i === 0) slideDiv.addClass('active');

        var rowDiv = $('<div class="row g-3 "></div>');
        for (var j = 0; j < itemsPerSlide; j++) {
            if (items[i + j]) {
                var colDiv = $('<div class="col-12 col-md-' + (12 / itemsPerSlide) + '"></div>');
                colDiv.append($(items[i + j]).html());
                rowDiv.append(colDiv);
            }
        }
        slideDiv.append(rowDiv);
        carouselInner.append(slideDiv);
    }
}

$(document).ready(function () {
    var allItems = $('.realestate-category-item').toArray();

    groupItems(allItems);

    var carouselEl = document.querySelector('#realestateCategoryCarousel');
    new bootstrap.Carousel(carouselEl, { interval: 4000, wrap: true });

    $('.realestate-category-btn').click(function () {
        var category = $(this).data('category');
        $('.realestate-category-btn').removeClass('active');
        $(this).addClass('active');

        var filteredItems;
        if (category === 'All') {
            filteredItems = allItems;
        } else {
            filteredItems = allItems.filter(function (item) {
                return $(item).data('category') === category;
            });
        }

        groupItems(filteredItems);
el
        new bootstrap.Carousel(carouselEl, { interval: 4000, wrap: true });
    });

    $(window).resize(function () {
        var visibleItems = $('#carouselContent .carousel-item .realestate-category-card').parent().toArray();
        groupItems(visibleItems);
    });
});

</script>

</body>
</html>
