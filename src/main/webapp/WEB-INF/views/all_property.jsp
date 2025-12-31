<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>All Properties</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

        <style>
            .realestate-allproperty-wrapper {
                background: #f8f9fa;
                padding: 40px 0;
            }

            .realestate-allproperty-toolbar {
                position: sticky;
                top: 70px;
                background: #f8f9fa;
                z-index: 5;
                padding: 10px 0;
            }

            .realestate-allproperty-card {
                background: #fff;
                border-radius: 14px;
                overflow: hidden;
                border: 1px solid #eee;
                transition: .3s;
                display: flex;
                flex-direction: column;
                height: 100%;
                max-height: 435px;
            }

            .realestate-allproperty-card:hover {
                box-shadow: 0 12px 28px rgba(0, 0, 0, .12);
                transform: translateY(-4px);
            }

            .realestate-allproperty-image {
                position: relative;
            }

            .realestate-allproperty-image img {
                width: 100%;
                height: 220px;
                object-fit: cover;
                border-radius: 14px 14px 0 0;
            }

            .realestate-allproperty-badge {
                position: absolute;
                top: 12px;
                left: 12px;
                background: #198754;
                color: #fff;
                font-size: 8px;
                padding: 4px 10px;
                border-radius: 20px;
            }

            .realestate-allproperty-fav {
                position: absolute;
                top: 12px;
                right: 12px;
                background: #fff;
                padding: 2px 6px;
                border-radius: 50%;
                cursor: pointer;
                box-shadow: 0 4px 12px rgba(0, 0, 0, .15);
            }

            .realestate-allproperty-fav.active i {
                color: red;
            }

            .realestate-allproperty-body {
                padding: 16px;
                flex: 1;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
            }

            .realestate-allproperty-price {
                font-size: 16px;
                font-weight: 600;
                letter-spacing: 0.5px;
            }

            .realestate-allproperty-title {
                font-weight: 500;
                margin: 4px 0;
                letter-spacing: 0.5px;
                font-size: 14px;
            }

            .realestate-allproperty-id {
                font-size: 13px;
                color: #777;
                margin-bottom: 6px;
            }

            .realestate-allproperty-location {
                font-size: 14px;
                color: #555;
                margin-bottom: 10px;
            }

            .realestate-allproperty-features {
                display: flex;
                justify-content: space-between;
                font-size: 13px;
                color: #444;
                margin-bottom: 12px;
            }

            .realestate-allproperty-btn {
                width: 100%;
                border-radius: 30px;
                margin-top: auto;
                letter-spacing: 1px;
            }

            .list-view-card {
                flex-direction: row;
                height: 220px;
            }

            .list-view-card .realestate-allproperty-image {
                width: 40%;
                margin-right: 16px;
                height: 100%;
            }

            .list-view-card .realestate-allproperty-body {
                width: 60%;
                padding: 16px;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                height: 100%;
            }

            .list-view-card .realestate-allproperty-image img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                border-radius: 14px 0 0 14px;
            }

            .grid-col {
                flex: 0 0 25%;
                max-width: 25%;
            }

            .list-col {
                flex: 0 0 100%;
                max-width: 100%;
            }

            @media (min-width: 992px) {
                .list-view-card-parent .property-col.list-col {
                    flex: 0 0 50%;
                    max-width: 50%;
                }
            }

            @media (max-width: 992px) {
                .grid-col {
                    flex: 0 0 50%;
                    max-width: 50%;
                }
            }

            @media (max-width: 576px) {
                .grid-col {
                    flex: 0 0 50%;
                    max-width: 50%;
                }

                .list-view-card {
                    flex-direction: column;
                    height: auto;
                }

                .list-view-card .realestate-allproperty-image,
                .list-view-card .realestate-allproperty-body {
                    width: 100%;
                    margin-right: 0;
                }

                .list-view-card .realestate-allproperty-image img {
                    height: 160px;
                }
            }
        </style>
    </head>

    <body>

        <%@ include file="navbar.jsp" %>

            <section class="realestate-allproperty-wrapper">
                <div class="container">

                    <div class="realestate-allproperty-toolbar mb-4">
                        <div class="d-flex justify-content-between align-items-center flex-wrap gap-2">
                            <span class="text-muted showing-count" style="letter-spacing:1px;"></span>
                            <div class="d-flex gap-2">
                                <select class="form-select form-select-sm">
                                    <option>Sort By</option>
                                    <option>Newest</option>
                                    <option>Price: Low to High</option>
                                    <option>Price: High to Low</option>
                                </select>
                                <button class="btn btn-outline-secondary btn-sm" id="gridView"><i
                                        class="fa-solid fa-border-all"></i></button>
                                <button class="btn btn-outline-secondary btn-sm" id="listView"><i
                                        class="fa-solid fa-list"></i></button>
                            </div>
                        </div>
                    </div>

                    <div class="row g-4 list-view-card-parent">
                        <% String[] images={ "https://images.unsplash.com/photo-1568605114967-8130f3a36994"
                            , "https://images.unsplash.com/photo-1570129477492-45c003edd2be"
                            , "https://images.unsplash.com/photo-1600585154340-be6161a56a0c"
                            , "https://images.unsplash.com/photo-1598928506311-c55ded91a20c"
                            , "https://images.unsplash.com/photo-1600047509807-ba8f99d2cdde"
                            , "https://images.unsplash.com/photo-1600585154526-990dced4db0d"
                            , "https://images.unsplash.com/photo-1605146769289-440113cc3d00"
                            , "https://images.unsplash.com/photo-1600566753376-12c8ab7fb75b" }; %>

                            <% for(int i=0;i<8;i++){ %>
                                <div class="property-col grid-col">
                                    <a href="property_detail.jsp" class="text-decoration-none text-dark">
                                        <div class="realestate-allproperty-card">
                                            <div class="realestate-allproperty-image">
                                                <img src="<%= images[i] %>">
                                                <span class="realestate-allproperty-badge">NEW</span>
                                                <span class="realestate-allproperty-fav"><i
                                                        class="fa-regular fa-heart"></i></span>
                                            </div>
                                            <div class="realestate-allproperty-body">
                                                <div class="realestate-allproperty-price">
                                                    <%= 2 + i %> Crore <%= 50 + (i*5) %> Lakh
                                                </div>
                                                <div class="realestate-allproperty-title">Modern House for Sale</div>
                                                <div class="realestate-allproperty-id">Property ID: 85<%= 50 + i %>
                                                </div>
                                                <div class="realestate-allproperty-location"><i
                                                        class="fa-solid fa-location-dot me-1"></i> Kathmandu | Nepal
                                                </div>
                                                <div class="realestate-allproperty-features">
                                                    <span><i class="fa-solid fa-ruler-combined"></i> 3 Aana</span>
                                                    <span><i class="fa-solid fa-road"></i>
                                                        <%= 13+i %> Feet
                                                    </span>
                                                    <span><i class="fa-solid fa-bed"></i>
                                                        <%= 4+(i%3) %>
                                                    </span>
                                                </div>
                                                <button
                                                    class="btn btn-outline-secondary btn-sm realestate-allproperty-btn">View
                                                    Details</button>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                                <% } %>
                    </div>

                    <nav aria-label="Page navigation example" class="mt-5">
                        <ul class="pagination justify-content-center">
                            <li class="page-item ">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#" data-page="1">1</a></li>
                            <li class="page-item"><a class="page-link" href="#" data-page="2">2</a></li>
                            <li class="page-item"><a class="page-link" href="#" data-page="3">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>



                </div>
            </section>

        <%@ include file="footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            $(document).ready(function () {

                var itemsPerPage = 6;
                var $items = $('.property-col');
                var totalItems = $items.length;
                var totalPages = Math.ceil(totalItems / itemsPerPage);

                function showPage(page) {
                    var start = (page - 1) * itemsPerPage;
                    var end = start + itemsPerPage;

                    $items.hide();
                    $items.slice(start, end).fadeIn(200);

                    var showingStart = start + 1;
                    var showingEnd = end > totalItems ? totalItems : end;
                    $('.showing-count').html('Showing <strong>' + showingStart + '-' + showingEnd + '</strong> of <strong>' + totalItems + '</strong> properties');
                }

                function buildPagination() {
                    var html = '';
                    html += '<li class="page-item"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>';
                    for (var i = 1; i <= totalPages; i++) {
                        html += '<li class="page-item' + (i === 1 ? ' active' : '') + '">';
                        html += '<a href="#" class="page-link" data-page="' + i + '">' + i + '</a>';
                        html += '</li>';
                    }
                    html += '<li class="page-item"><a class="page-link" href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>';
                    $('.pagination').html(html);
                }

                buildPagination();
                showPage(1);

                $(document).on('click', '.pagination .page-link[data-page]', function (e) {
                    e.preventDefault();
                    var page = parseInt($(this).data('page'));
                    showPage(page);
                    $('.pagination .page-item').removeClass('active');
                    $(this).parent().addClass('active');
                });

                $(document).on('click', '.pagination .page-link[aria-label="Previous"]', function (e) {
                    e.preventDefault();
                    var currentPage = parseInt($('.pagination .page-item.active .page-link').data('page'));
                    var page = currentPage > 1 ? currentPage - 1 : 1;
                    showPage(page);
                    $('.pagination .page-item').removeClass('active');
                    $('.pagination .page-link[data-page="' + page + '"]').parent().addClass('active');
                });

                $(document).on('click', '.pagination .page-link[aria-label="Next"]', function (e) {
                    e.preventDefault();
                    var currentPage = parseInt($('.pagination .page-item.active .page-link').data('page'));
                    var page = currentPage < totalPages ? currentPage + 1 : totalPages;
                    showPage(page);
                    $('.pagination .page-item').removeClass('active');
                    $('.pagination .page-link[data-page="' + page + '"]').parent().addClass('active');
                });

                $(document).on('click', '.realestate-allproperty-fav', function (e) {
                    e.preventDefault();
                    $(this).toggleClass('active');
                    $(this).find('i').toggleClass('fa-regular fa-solid');
                });

                $('#listView').on('click', function () {
                    $('.realestate-allproperty-card').addClass('list-view-card');
                    $('.property-col').removeClass('grid-col').addClass('list-col');
                    $('#gridView, #listView').removeClass('btn-primary').addClass('btn-outline-secondary');
                    $(this).removeClass('btn-outline-secondary').addClass('btn-primary');
                });

                $('#gridView').on('click', function () {
                    $('.realestate-allproperty-card').removeClass('list-view-card');
                    $('.property-col').removeClass('list-col').addClass('grid-col');
                    $('#gridView, #listView').removeClass('btn-primary').addClass('btn-outline-secondary');
                    $(this).removeClass('btn-outline-secondary').addClass('btn-primary');
                });

            });

        </script>

    </body>

 </html>