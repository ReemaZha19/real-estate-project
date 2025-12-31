<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Collection Properties</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>
.realestate-collections-header-title{
	letter-spacing: 1px;
	font-weight:300;
	font-family: 'Segoe UI', sans-serif;
	font-size:30px;
	border-top: 0.5px solid #888 ;
}

.realestate-collections h5 {
    font-weight: 600;
    letter-spacing: 1px;
    font-family: 'Segoe UI', sans-serif;
    border-bottom: 1px solid #888 ;
    
}

.realestate-collection-scroll {
    display: flex;
    gap: 1.2rem;
    overflow-x: auto;
    padding-bottom: 10px;
}

.realestate-collection-scroll::-webkit-scrollbar {
    height: 6px;
}
.realestate-collection-scroll::-webkit-scrollbar-thumb {
    background: #ccc;
    border-radius: 10px;
}

.realestate-collection-card {
    min-width: 260px;
    background: #fff;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 8px 20px rgba(0,0,0,0.12);
    transition: transform 0.3s ease;
}

.realestate-collection-card:hover {
    transform: translateY(-6px);
}

.realestate-collection-card img {
    width: 100%;
    height: 170px;
    object-fit: cover;
}

.realestate-collection-card h6 {
    margin-bottom: 4px;
    font-weight: 600;
    letter-spacing: 1px;
    font-family: 'Segoe UI', sans-serif;
}

.realestate-collection-address, .realestate-collection-price{
	letter-spacing:1px;
	font-family: 'Segoe UI', sans-serif;
}

.realestate-collection-view-btn{
	color: #000;
	letter-spacing:1px;
	font-size: 16px;
	font-family: 'Segoe UI', sans-serif;
	border-bottom: 1px solid #888;
	transition: transform 0.3s ease;
}

.realestate-collection-view-btn:hover{
	transform: translateY(-6px);
	border-bottom: none;
}

</style>
</head>
<body>

    <section class="container my-5 realestate-collections">
    <h3 class="text-center mb-4 realestate-collections-header-title pt-4">Property Collections</h3>

    <div class="realestate-collection mb-5">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5 class="mb-0">💰 Best Deals</h5>
            <a href="#" class="text-decoration-none fw-semibold realestate-collection-view-btn">View All</a>
        </div>

        <div class="realestate-collection-scroll">
            <div class="realestate-collection-card">
                <img src="https://images.unsplash.com/photo-1600585154340-be6161a56a0c" />
                <div class="p-3">
                    <h6>Affordable Apartment</h6>
                    <p class="text-muted mb-1">City Center</p>
                    <strong>$95,000</strong>
                </div>
            </div>

            <div class="realestate-collection-card">
                <img src="https://images.unsplash.com/photo-1570129477492-45c003edd2be" />
                <div class="p-3">
                    <h6>Budget House</h6>
                    <p class="text-muted mb-1 realestate-collection-address">Suburb</p>
                    <strong class="realestate-collection-price">$140,000</strong>
                </div>
            </div>

            <div class="realestate-collection-card">
                <img src="https://images.unsplash.com/photo-1599423300746-b62533397364" />
                <div class="p-3">
                    <h6>Value Villa</h6>
                    <p class="text-muted mb-1">Outskirts</p>
                    <strong>$210,000</strong>
                </div>
            </div>
        </div>
    </div>

    <div class="realestate-collection">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5 class="mb-0">🏙️ Luxury Living</h5>
            <a href="#" class="text-decoration-none fw-semibold realestate-collection-view-btn">View All</a>
        </div>

        <div class="realestate-collection-scroll">
            <div class="realestate-collection-card luxury">
                <img src="https://images.unsplash.com/photo-1600607687939-ce8a6c25118c" />
                <div class="p-3">
                    <h6>Luxury Penthouse</h6>
                    <p class="text-muted mb-1">Downtown</p>
                    <strong>$520,000</strong>
                </div>
            </div>

            <div class="realestate-collection-card luxury">
                <img src="https://images.unsplash.com/photo-1599423300746-b62533397364" />
                <div class="p-3">
                    <h6>Beach Villa</h6>
                    <p class="text-muted mb-1">Seaside</p>
                    <strong>$680,000</strong>
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
