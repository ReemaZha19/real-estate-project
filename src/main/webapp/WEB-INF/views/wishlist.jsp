<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Wishlist</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

        <style>
            .realestate-wishlist-wrapper {
                padding: 40px 0;
                background: #f8f9fa;
            }

            .realestate-wishlist-header {
                margin-bottom: 30px;
                display: flex;
                justify-content: space-between;
                align-items: center;
                flex-wrap: wrap;
            }

            .realestate-wishlist-header h2 {
                font-size: 24px;
                font-weight: 600;
                letter-spacing: 0.5px;
            }

            .realestate-wishlist-property-card {
                background: #fff;
                border-radius: 12px;
                overflow: hidden;
                border: 1px solid #eee;
                transition: .3s;
                display: flex;
                flex-direction: column;
                height: 100%;
            }

            .realestate-wishlist-property-card:hover {
                box-shadow: 0 12px 28px rgba(0, 0, 0, .12);
                transform: translateY(-4px);
            }

            .realestate-wishlist-property-image {
                position: relative;
            }

            .realestate-wishlist-property-image img {
                width: 100%;
                height: 220px;
                object-fit: cover;
                border-radius: 12px 12px 0 0;
            }

            .realestate-wishlist-property-badge {
                position: absolute;
                top: 12px;
                left: 12px;
                background: #198754;
                color: #fff;
                font-size: 10px;
                padding: 4px 8px;
                border-radius: 20px;
            }

            .realestate-wishlist-property-fav {
                position: absolute;
                top: 12px;
                right: 12px;
                background: #fff;
                padding: 6px 8px;
                border-radius: 50%;
                cursor: pointer;
                box-shadow: 0 4px 12px rgba(0, 0, 0, .15);
            }

            .realestate-wishlist-property-fav.active i {
                color: red;
            }

            .realestate-wishlist-property-body {
                padding: 16px;
                flex: 1;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
            }

            .realestate-wishlist-property-price {
                font-size: 16px;
                font-weight: 600;
            }

            .realestate-wishlist-property-title {
                font-size: 14px;
                font-weight: 500;
                margin: 4px 0;
            }

            .realestate-wishlist-property-location {
                font-size: 13px;
                color: #555;
                margin-bottom: 10px;
            }

            .realestate-wishlist-property-details {
                display: flex;
                justify-content: space-between;
                font-size: 13px;
                color: #444;
                margin-bottom: 12px;
            }

            .realestate-wishlist-property-details span {
                display: flex;
                align-items: center;
                gap: 4px;
            }

            .realestate-wishlist-property-btn {
                width: 100%;
                border-radius: 30px;
                letter-spacing: 1px;
            }

            .realestate-wishlist-empty-state {
                text-align: center;
                padding: 80px 20px;
                color: #555;
            }

            .realestate-wishlist-empty-state i {
                font-size: 60px;
                margin-bottom: 20px;
                color: #bbb;
            }
        </style>
    </head>

    <body>

        <%@ include file="navbar.jsp" %>

            <section class="realestate-wishlist-wrapper">
                <div class="container">

                    <div class="realestate-wishlist-header">
                        <h2>My Wishlist</h2>
                        <span class="text-muted">You have <strong>3</strong> properties in your wishlist</span>
                    </div>

                    <div class="row g-3">
                        <%-- Example property cards in wishlist --%>
                            <% String[] images={ "https://images.unsplash.com/photo-1568605114967-8130f3a36994"
                                , "https://images.unsplash.com/photo-1570129477492-45c003edd2be"
                                , "https://images.unsplash.com/photo-1600585154340-be6161a56a0c" }; %>

                                <% for(int i=0;i<images.length;i++){ %>
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="realestate-wishlist-property-card">
                                            <div class="realestate-wishlist-property-image">
                                                <img src="<%= images[i] %>" alt="Property Image">
                                                <span class="realestate-wishlist-property-badge">NEW</span>
                                                <span class="realestate-wishlist-property-fav active"><i
                                                        class="fa-solid fa-heart"></i></span>
                                            </div>
                                            <div class="realestate-wishlist-property-body">
                                                <div>
                                                    <div class="realestate-wishlist-property-price">
                                                        <%= 2+i %> Crore <%= 50 + i*5 %> Lakh
                                                    </div>
                                                    <div class="realestate-wishlist-property-title">Modern House for
                                                        Sale</div>
                                                    <div class="realestate-wishlist-property-location"><i
                                                            class="fa-solid fa-location-dot me-1"></i> Kathmandu | Nepal
                                                    </div>
                                                    <div class="realestate-wishlist-property-details">
                                                        <span><i class="fa-solid fa-ruler-combined"></i> 3 Aana</span>
                                                        <span><i class="fa-solid fa-road"></i> 13 Feet</span>
                                                        <span><i class="fa-solid fa-bed"></i> 4</span>
                                                    </div>
                                                </div>
                                                <button
                                                    class="btn btn-outline-secondary btn-sm realestate-wishlist-property-btn">View
                                                    Details</button>
                                            </div>
                                        </div>
                                    </div>
                                <% } %>

                                <%-- Empty state example (uncomment if wishlist is empty) --%>
                        <!--
                        <div class="col-12">
                            <div class="realestate-wishlist-empty-state">
                                <i class="fa-regular fa-heart"></i>
                                <h4>Your wishlist is empty</h4>
                                <p>Start adding properties to your wishlist to see them here.</p>
                                <a href="browse_properties.jsp" class="btn btn-primary mt-3">Browse Properties</a>
                            </div>
                        </div>
                        -->

                    </div>

                </div>
            </section>

        <%@ include file="footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.realestate-wishlist-property-fav').on('click', function () {
                    $(this).toggleClass('active');

                    if (!$(this).hasClass('active')) {
                        $(this).closest('.col-lg-4, .col-md-6, .col-sm-6, .col-12').fadeOut(300, function () {
                            $(this).remove();
                        });
                    }
                });
            });


        </script>

    </body>

</html>