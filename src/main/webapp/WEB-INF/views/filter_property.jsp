<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Browse Properties</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

        <style>
            .realestate-filterpage-sidebar,
            .offcanvas-body {
                background: #fff;
            }

            .realestate-filterpage-group {
                margin-bottom: 20px;
            }

            .realestate-filterpage-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                width: 100%;
                font-size: 15px;
                font-weight: 600;
                cursor: pointer;
                background: none;
                border: none;
                padding: 0;
                letter-spacing: 1px;
                border-bottom: 0.5px solid #888;
                transition: transform 0.3s ease;
            }

            .realestate-filterpage-header:hover {
                border-bottom: none;
                transform: translateY(-6px);

            }

            .realestate-filterpage-header-budget {
                display: flex;
                justify-content: space-between;
                align-items: center;
                width: 100%;
                font-size: 15px;
                font-weight: 600;
                cursor: pointer;
                background: none;
                border-bottom: none;
                padding: 0;
                letter-spacing: 1px;
                transition: transform 0.3s ease;

            }

            .realestate-filterpage-header-budget:hover {
                border-bottom: 0.5px solid #888;
                transform: translateY(-6px);
            }

            .realestate-filterpage-item {
                border: 0.5px solid #888;
                letter-spacing: 0.5px;
                font-size: 14px;
                background-color: white;
                border-radius: 8px;
                padding: 5px;

            }

            .realestate-filterpage-radiobutton {
                letter-spacing: 0.5px;
                font-size: 14px;
                padding: 5px;
            }

            .realestate-filterpage-header i {
                transition: transform .3s ease;
            }

            .realestate-filterpage-h {
                letter-spacing: 1.5px;
                font-weight: 500;
            }


            .rotate {
                transform: rotate(180deg);
            }


            .realestate-filterpage-card {
                background: #fff;
                border-radius: 10px;
                border: 1px solid #eee;
                overflow: hidden;
                transition: .3s;
                height: 350px; /* fixed card height */
			    display: flex;
			    flex-direction: column;
            }

            .realestate-filterpage-card:hover {
                box-shadow: 0 8px 25px rgba(0, 0, 0, .08);
            }

            .realestate-filterpage-card img {
                 width: 100%;
			     height: 200px; 
			     object-fit: cover;
			     border-radius: 10px 10px 0 0;
            }
            
            .realestate-filterpage-card .p-3 {
			    flex: 1; 
			    display: flex;
			    flex-direction: column;
			    justify-content: space-between;
			    
			}
            

            .realestate-filterpage-price {
                color: #000;
                font-weight: 700;
                letter-spacing: 1px;
            }

            .realestate-filterpage-info {
                font-size: 13px;
                color: #777;
            }

            .realestate-filterpage-details {
                font-size: 12px;
                color: #555;
                margin-top: 5px;
                display: flex;
                flex-wrap: wrap;
                gap: 10px;
            }

            .realestate-filterpage-details span {
                display: flex;
                align-items: center;
                gap: 4px;
            }

            .realestate-filterpage-search {
                max-width: 320px;
            }

            @media (max-width: 768px) {
                .realestate-filterpage-sidebar {
                    display: none;
                }
            }

            @media (max-width: 576px) {
                .realestate-filterpage-card img {
                    height: 160px;
                }
            }
        </style>
    </head>

    <body>

        <%@include file="navbar.jsp" %>

            <div class="container-fluid pt-5 px-0">
                <div class="row mx-lg-4">

                    <div class="col-lg-3 col-md-4">
                        <div class="realestate-filterpage-sidebar mx-5 mt-5">

                            <div class="realestate-filterpage-group">
                                <div class="realestate-filterpage-header pt-2"><span>Properties By</span><i
                                        class="fa-solid fa-chevron-down"></i></div>
                                <div class="collapse mt-2">
                                    <button class=" w-100 mb-2 realestate-filterpage-item">By Lalpurja</button>
                                    <button class=" w-100 realestate-filterpage-item">By Owners</button>
                                </div>
                            </div>

                            <div class="realestate-filterpage-group">
                                <div class="realestate-filterpage-header pt-2"><span>Property Status</span><i
                                        class="fa-solid fa-chevron-down"></i></div>
                                <div class="collapse mt-2">
                                    <button class=" w-100 mb-2 realestate-filterpage-item">For Sale</button>
                                    <button class=" w-100 realestate-filterpage-item">Rent</button>
                                </div>
                            </div>

                            <div class="realestate-filterpage-group">
                                <div class="realestate-filterpage-header pt-2"><span>Property Type</span><i
                                        class="fa-solid fa-chevron-down"></i></div>
                                <div class="collapse mt-2">
                                    <button class=" w-100 mb-2 realestate-filterpage-item">Residential</button>
                                    <button class="  w-100 mb-2 realestate-filterpage-item">Commercial</button>
                                    <button class=" w-100 realestate-filterpage-item ">Semi-commercial</button>
                                </div>
                            </div>

                            <div class="realestate-filterpage-group">
                                <div class="realestate-filterpage-header pt-2"><span>Property Category</span><i
                                        class="fa-solid fa-chevron-down"></i></div>
                                <div class="collapse mt-2">
                                    <button class=" w-100 mb-2 realestate-filterpage-item">House</button>
                                    <button class=" w-100 mb-2 realestate-filterpage-item">Land</button>
                                    <button class=" w-100 realestate-filterpage-item">Apartment</button>
                                </div>
                            </div>

                            <div class="realestate-filterpage-group">
                                <h6 class=" realestate-filterpage-header-budget">Budget Range</h6>
                                <div class="form-check realestate-filterpage-radiobutton px-5"><input
                                        class="form-check-input" type="radio" name="budget" id="budgetAll"
                                        checked><label class="form-check-label" for="budgetAll">All Range</label></div>
                                <div class="form-check realestate-filterpage-radiobutton px-5"><input
                                        class="form-check-input" type="radio" name="budget" id="budget1"><label
                                        class="form-check-label" for="budget1">Less than 1 Crore</label></div>
                                <div class="form-check realestate-filterpage-radiobutton px-5"><input
                                        class="form-check-input" type="radio" name="budget" id="budget2"><label
                                        class="form-check-label" for="budget2">1 – 2 Crores</label></div>
                            </div>

                        </div>
                    </div>

                    <div class="col-lg-9 col-md-8">
                        <div class="d-flex justify-content-between align-items-center mb-3 flex-wrap gap-2">
                            <h5 class="pb-sm-2 realestate-filterpage-h ">Browse Properties</h5>
                            <div class="d-flex gap-2 align-items-center mx-lg-5">
                                <input class="form-control form-control-sm realestate-filterpage-search"
                                    placeholder="Search by property name or address">
                                <select class="form-select form-select-sm">
                                    <option>Sort By</option>
                                    <option>Low to High</option>
                                    <option>High to Low</option>
                                </select>
                                <button class="btn btn-outline-secondary btn-sm d-md-none" data-bs-toggle="offcanvas"
                                    data-bs-target="#filterCanvas"><i class="fa-solid fa-filter"></i></button>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-lg-4 col-md-6 col-sm-6 col-6 mb-4">
                                <a href="property_detail.jsp" class="text-decoration-none text-dark">
                                    <div class="realestate-filterpage-card">
                                        <img src="https://images.unsplash.com/photo-1568605114967-8130f3a36994">
                                        <div class="p-3">
                                            <div class="realestate-filterpage-price">2 Crore 80 Lakh</div>
                                            <p class="fw-semibold mb-1">House for Sale at Sitapaila</p>
                                            <div class="realestate-filterpage-info">Property ID: 8550</div>
                                            <div class="realestate-filterpage-details">
                                                <span><i class="fa-solid fa-location-dot"></i> Sitapaila | Kumari
                                                    Mandir</span>
                                                <span><i class="fa-solid fa-ruler"></i> 3 Aana</span>
                                                <span><i class="fa-solid fa-arrows-left-right"></i> 13 Feet</span>
                                                <span><i class="fa-solid fa-bed"></i> 5</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <div class="col-lg-4 col-md-6 col-sm-6 col-6 mb-4">
                                <a href="property_detail.jsp" class="text-decoration-none text-dark">
                                    <div class="realestate-filterpage-card">
                                        <img src="https://images.unsplash.com/photo-1570129477492-45c003edd2be">
                                        <div class="p-3">
                                            <div class="realestate-filterpage-price">3 Crore 75 Lakh</div>
                                            <p class="fw-semibold mb-1">House at Sunakothi</p>
                                            <div class="realestate-filterpage-info">Property ID: 8564</div>
                                            <div class="realestate-filterpage-details">
                                                <span><i class="fa-solid fa-location-dot"></i> Sunakothi | Main
                                                    Road</span>
                                                <span><i class="fa-solid fa-ruler"></i> 2.5 Aana</span>
                                                <span><i class="fa-solid fa-arrows-left-right"></i> 12 Feet</span>
                                                <span><i class="fa-solid fa-bed"></i> 3</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <div class="col-lg-4 col-md-6 col-sm-6 col-6 mb-4">
                                <a href="property_detail.jsp" class="text-decoration-none text-dark">
                                    <div class="realestate-filterpage-card">
                                        <img src="https://images.unsplash.com/photo-1600585154340-be6161a56a0c">
                                        <div class="p-3">
                                            <div class="realestate-filterpage-price">3 Crore 15 Lakh</div>
                                            <p class="fw-semibold mb-1">House at Sunakothi</p>
                                            <div class="realestate-filterpage-info">Property ID: 8563</div>
                                            <div class="realestate-filterpage-details">
                                                <span><i class="fa-solid fa-location-dot"></i> Sunakothi | Near
                                                    Park</span>
                                                <span><i class="fa-solid fa-ruler"></i> 2 Aana</span>
                                                <span><i class="fa-solid fa-arrows-left-right"></i> 10 Feet</span>
                                                <span><i class="fa-solid fa-bed"></i> 3</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>

                        </div>
                    </div>

                </div>

                <div class="offcanvas offcanvas-start" id="filterCanvas">
                    <div class="offcanvas-header">
                        <h5 class="realestate-filterpage-h pt-2">Filter Properties</h5>
                        <button class="btn-close" data-bs-dismiss="offcanvas"></button>
                    </div>
                    <div class="offcanvas-body">


                        <div class="realestate-filterpage-group">
                            <div class="realestate-filterpage-header pt-2"><span>Properties By</span><i
                                    class="fa-solid fa-chevron-down"></i></div>
                            <div class="collapse mt-2">
                                <button class="realestate-filterpage-item w-100 mb-2">By Lalpurja</button>
                                <button class="realestate-filterpage-item w-100">By Owners</button>
                            </div>
                        </div>

                        <div class="realestate-filterpage-group">
                            <div class="realestate-filterpage-header pt-2"><span>Property Status</span><i
                                    class="fa-solid fa-chevron-down"></i></div>
                            <div class="collapse mt-2">
                                <button class="realestate-filterpage-item w-100 mb-2">For Sale</button>
                                <button class="realestate-filterpage-item w-100">Rent</button>
                            </div>
                        </div>

                        <div class="realestate-filterpage-group">
                            <div class="realestate-filterpage-header pt-2"><span>Property Type</span><i
                                    class="fa-solid fa-chevron-down"></i></div>
                            <div class="collapse mt-2">
                                <button class="realestate-filterpage-item w-100 mb-2">Residential</button>
                                <button class="realestate-filterpage-item w-100 mb-2">Commercial</button>
                                <button class="realestate-filterpage-item w-100">Semi-commercial</button>
                            </div>
                        </div>

                        <div class="realestate-filterpage-group">
                            <div class="realestate-filterpage-header pt-2"><span>Property Category</span><i
                                    class="fa-solid fa-chevron-down"></i></div>
                            <div class="collapse mt-2">
                                <button class="realestate-filterpage-item w-100 mb-2">House</button>
                                <button class="realestate-filterpage-item w-100 mb-2">Land</button>
                                <button class="realestate-filterpage-item w-100">Apartment</button>
                            </div>
                        </div>


                        <div class="realestate-filterpage-group">
                            <h6 class=" realestate-filterpage-header-budget">Budget Range</h6>
                            <div class="form-check realestate-filterpage-radiobutton px-5"><input
                                    class="form-check-input" type="radio" name="mobileBudget" id="mobileBudgetAll"
                                    checked><label class="form-check-label" for="mobileBudgetAll">All Range</label>
                            </div>
                            <div class="form-check realestate-filterpage-radiobutton px-5"><input
                                    class="form-check-input" type="radio" name="mobileBudget" id="mobileBudget1"><label
                                    class="form-check-label" for="mobileBudget1">Less than 1 Crore</label></div>
                            <div class="form-check realestate-filterpage-radiobutton px-5"><input
                                    class="form-check-input" type="radio" name="mobileBudget" id="mobileBudget2"><label
                                    class="form-check-label" for="mobileBudget2">1 – 2 Crores</label></div>
                        </div>

                    </div>
                </div>

            <%@include file="footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous">
            </script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            function initFilterToggles(container) {

                if (!container || !container.length) return;

                container.find('.realestate-filterpage-group').each(function () {

                    const group = $(this);
                    const header = group.find('.realestate-filterpage-header');
                    const collapseEl = group.find('.collapse');

                    if (collapseEl.length && header.length) {

                        header.on('click', function () {
                            collapseEl.collapse('toggle');
                        });

                        collapseEl.on('show.bs.collapse', function () {
                            header.find('i').addClass('rotate');
                        });

                        collapseEl.on('hide.bs.collapse', function () {
                            header.find('i').removeClass('rotate');
                        });
                    }
                });
            }

            initFilterToggles($('.realestate-filterpage-sidebar'));

            initFilterToggles($('#filterCanvas .offcanvas-body'));
        </script>

    </body>

</html>