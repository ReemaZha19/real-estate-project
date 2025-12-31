<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:set var="cp" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Real Estate Navbar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

        <style>
        	
        	html, body {
			    overflow-x: hidden;
			}

            .realestate-navbar {
                background: #fff;
                border-bottom: 1px solid #e0e0e0;
                transition: 0.5s ease;
                z-index: 9999;
                padding: 0 0 10px 0;
                letter-spacing: 1px;               
			    width: 100%;
			    left: 0;
			    right: 0;
			}
			
			.realestate-navbar .row {
			    margin-left: 0;
			    margin-right: 0;
			}
			
            .navbar-toggler {
                padding: 0.25rem 0.75rem;
                font-size: 1.25rem;
                line-height: 1;
                background-color: transparent;
                border: 1px solid rgba(0, 0, 0, .2);
                border-radius: 0.375rem;
            }

            .navbar-toggler-icon {
                display: inline-block;
                width: 1.5em;
                height: 1.5em;
                vertical-align: middle;
                background-repeat: no-repeat;
                background-position: center;
                background-size: 100%;
            }

            .navbar-light .navbar-toggler-icon {
                background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%280,0,0,0.75%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
            }

            .mobile-menu-close {
                font-size: 32px;
                cursor: pointer;
                display: block;
                text-align: right;
                margin-bottom: 15px;
            }

            .nav-scrolled {
                box-shadow: 0 3px 10px rgba(0, 0, 0, 0.15);
            }

            .realestate-nav-menu a {
                color: #575757 ;
                text-decoration: none;
                margin: 0 15px;
                text-transform: uppercase;
                font-size: 14px;
                transition: .3s;
                font-weight:350;
                letter-spacing:1.5px;
            }

            .realestate-nav-menu a:hover {
                color: #444;
                letter-spacing: 1px;
            }

            .realestate-navbar-logo img {
                height: 55px;
            }

            .realestate-nav-dropdown a {
                letter-spacing: 1px;
            }

            .realestate-nav-dropdown-menu li {
                letter-spacing: 0.5px;
            }

            .realestate-nav-dropdown:hover>.realestate-nav-dropdown-menu {
                display: block;
                margin-top: 0;
            }

            .realestate-nav-dropdown-menu {
                position: absolute;
                min-width: 200px;
                padding: 0;
                margin: 0;
                overflow: hidden;
                background-color: #fff;
                border: 1px solid #ddd;
                border-radius: 5px;
                z-index: 1000;
            }

            .realestate-nav-dropdown-item {
                padding: 8px 15px;
                transition: background 0.3s ease;
            }

            .realestate-nav-dropdown-item:hover {
                background-color: #f5f5f5;
                color: #000;
                overflow: hidden;
            }

            .realestate-navbar-mobile-slide-menu {
                position: fixed;
                top: 0;
                left: -260px;
                width: 260px;
                height: 100%;
                background: #fff;
                padding: 20px;
                box-shadow: 2px 0 10px rgba(0, 0, 0, 0.2);
                transition: 0.3s ease-in-out;
                z-index: 99999;
            }

            .realestate-navbar-mobile-slide-menu.open {
                left: 0;
            }

            .realestate-navbar-mobile-slide-menu a {
                margin: 10px 0;
                display: block;
                color: #000;
            }

            .realestate-navbar-search-slide-down {
                position: absolute;
                top: -200px;
                left: 0;
                width: 100%;
                background: #fff;
                border-bottom: 1px solid #ddd;
                border-top: 1px solid #ddd;
                padding: 20px;
                transition: 0.4s ease;
                z-index: 9999;
            }

            .realestate-navbar-search-slide-down.active {
                top: 100%;
            }

            .realestate-navbar-search-slide-down input {
                border-radius: 10px;
                height: 45px;
                width: 100%;
            }

            .realestate-navbar-search-slide-down input:focus {
                box-shadow: none !important;
                outline: none !important;
            }

            .realestate-navbar-search-slide-down button {
                height: 45px;
            }

            .realestate-navbar-close-search {
                position: absolute;
                right: 35px;
                top: 15px;
                font-size: 35px;
                cursor: pointer;
            }
            
            .realestate-navbar-close-searchBtn{
            	width:100%;
            }

            .realestate-nav-login-modal-content {
                font-family: 'Segoe UI', sans-serif !important;
                width: 80%;
                margin-inline: auto;
            }

            .realestate-nav-login-modal-close-btn {
                position: absolute;
                right: 0px;
                padding: 2em !important;
            }

            .realestate-nav-login-modal-close-btn:focus,
            .realestate-nav-modal-login-form-control:focus {
                outline: none !important;
                box-shadow: none !important;
                border: none !important;
            }

            .realestate-nav-login-modal-body {
                padding: 0 !important;
            }

            .realestate-nav-login-myform {
                padding: 2em;
                max-width: 100%;
                color: #fff;
                box-shadow: 0 4px 6px 0 rgba(0, 0, 0, 0.5);
                letter-spacing: 1.5px;
            }

            .realestate-nav-modal-login-form-control {
                background-color: inherit;
                color: #fff;
                padding-left: 0;
                border: 0;
                border-radius: 0;
                border-bottom: 1px solid #fff;

            }

            .realestate-nav-login-myform .realestate-nav-modal-login-btn {
                width: 100%;
                font-weight: 800;
                background-color: #fff;
                padding: 0.5em 0;
                letter-spacing: 2px;
            }

            .realestate-nav-login-myform .realestate-nav-modal-login-btn.hover {
                background-color: inherit;
                color: #fff;
                border-color: #fff;
                transition: color 0.3s, transform 0.3s;
            }

            .realestate-nav-modal-login-signup {
                display: inline-block;
                color: #ffffff;
                transition: color 0.3s, transform 0.3s;
                cursor: pointer;
            }

            .realestate-nav-modal-login-signup:hover {
                color: #f5d15d;
                transform: scale(1.1);
            }

            .realestate-nav-dropdown-menu-items-mob {
                list-style: none;
                padding-left: 0;
                max-height: 0;
                overflow: hidden;
                transition: max-height 0.3s ease;
            }

            .realestate-nav-menu-mob {
                letter-spacing: 2px;
                font-size: 20px;
                text-decoration: none;

            }

            .mobile-dropdown.open .realestate-nav-dropdown-menu-items-mob {
                max-height: 1000px;
                text-decoration: none;
                padding: 10px;
                font-size: 18px;
            }

            .realestate-nav-dropdown-menu-items-mob li a:hover {
                background: #eaeaea;
            }

            .mobile-dropdown.open .mobile-dropdown-toggle i {
                transform: rotate(180deg);
                transition: transform 0.3s;
            }


            @media (max-width: 767px) {

                .realestate-navbar .row {
                    display: flex !important;
                    align-items: center !important;
                    justify-content: space-between !important;
                }

                .realestate-mobile-icons {
                    display: flex !important;
                    align-items: center;
                    gap: 18px;
                    font-size: 20px;
                    cursor: pointer;
                }

                .realestate-navbar-logo {
                    padding-left: 5px;
                }

                .realestate-nav-menu {
                    display: none !important;
                }

                .realestate-mobile-right {
                    display: flex !important;
                    justify-content: flex-end;
                    align-items: center;
                    gap: 20px;
                }

                .realestate-navbar-close-search {
                    right: 7px;
                }

                .realestate-navbar-search-slide-down button {
                    height: 40px;
                    width: 75px;
                }
            }
        </style>
    </head>

    <body>

        <nav class="realestate-navbar sticky-top navbar-light pt-3 pb-3">
            <div class="container">
                <div class="row align-items-center">

                    <div class="col-6 d-flex d-md-none realestate-navbar-logo">
                        <img class=" mx-1" src="https://img.freepik.com/premium-vector/abstract-silhouette-real-estate-building-logo-template_1277164-1359.jpg?w=740&q=80">
                    </div>

                    <div class="col-6 d-md-none d-flex justify-content-end">

                        <a class=" " href="${pageContext.request.contextPath }/wishlist">
                        	<i class="fa-regular fa-heart  fs-5 text-dark pt-1"></i>
                        </a>
                        <i class="fa-solid fa-magnifying-glass ms-3 fs-5 pt-1 d-md-none"
                            id="realestateNavOpenSearchMobile"></i>
                        <i class="fa-regular fa-user ms-3 fs-5 pt-1 " data-bs-toggle="modal"
                            data-bs-target="#exampleModal"></i>
                        <button class="navbar-toggler ms-3" id="mobileMenuBtn" type="button">
                            <span class="navbar-toggler-icon fs-5"></span>
                        </button>


                    </div>

                    <div class="col-lg-5 d-none d-md-flex realestate-nav-menu justify-content-start ">
                        <a href="#" class="pt-1">Home</a>

                        <div class="dropdown realestate-nav-dropdown">
                            <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown">Properties</a>
                            <ul class="realestate-nav-dropdown-menu dropdown-menu">
                                <c:forEach var="item" items="${propertiesList}">
                                    <li><a class="dropdown-item" href="#">${item}</a></li>
                                </c:forEach>
                                <li><a class="dropdown-item realestate-nav-dropdown-item" href="${pageContext.request.contextPath}/all_property">All
                                        Properties</a></li>
                                <li><a class="dropdown-item realestate-nav-dropdown-item" href="#">For Sale</a></li>
                                <li><a class="dropdown-item realestate-nav-dropdown-item" href="#">For Rent</a></li>
                                <li><a class="dropdown-item realestate-nav-dropdown-item" href="#">New
                                        Properties</a></li>
                                <li><a class="dropdown-item realestate-nav-dropdown-item" href="#">Popular
                                        Properties</a></li>
                                <li><a class="dropdown-item realestate-nav-dropdown-item" href="#">Luxury
                                        Properties</a></li>
                            </ul>
                        </div>

                        <div class="dropdown realestate-nav-dropdown ms-3">
                            <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown">Property Types</a>
                            <ul class="realestate-nav-dropdown-menu dropdown-menu bg-light">
                                <c:forEach var="type" items="${propertyTypeList}">
                                    <li><a class="dropdown-item" href="#">${type}</a></li>
                                </c:forEach>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/filter_property">Apartment</a></li>
                                <li><a class="dropdown-item" href="#">House</a></li>
                                <li><a class="dropdown-item" href="#">Land / Plot</a></li>
                                <li><a class="dropdown-item" href="#">Commercial</a></li>
                                <li><a class="dropdown-item" href="#">Office Space</a></li>
                                <li><a class="dropdown-item" href="#">Villa</a></li>
                                <li><a class="dropdown-item" href="#">Studio</a></li>
                                <li><a class="dropdown-item" href="#">Shop / Retail</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-2 d-none d-md-flex justify-content-center realestate-navbar-logo">
                        <img
                            src="https://img.freepik.com/premium-vector/abstract-silhouette-real-estate-building-logo-template_1277164-1359.jpg?w=740&q=80">
                    </div>


                    <div
                        class="col-lg-5 d-none d-md-flex realestate-nav-menu justify-content-end align-items-center">
                        <a href="${pageContext.request.contextPath }/about">About Us</a>
                        <a href="${pageContext.request.contextPath }/contact">Contact</a>
                        <button type="button" class="btn btn-dark btn-sm ms-2 " data-bs-toggle="modal"
                            data-bs-target="#exampleModal" style="letter-spacing:1px;">Login/Signup</button>
                        <a class=" " href="${pageContext.request.contextPath }/wishlist">
                        	<i class="fa-regular fa-heart  fs-5 text-dark"></i>
                        </a>
                        <i class="fa-solid fa-magnifying-glass d-none d-md-block"
                            id="realestateNavOpenSearchDesktop" style="cursor:pointer; font-size:18px;"></i>
                    </div>


                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                        aria-hidden="true" data-bs-backdrop="false">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content realestate-nav-login-modal-content">

                                <div class="modal-body realestate-nav-login-modal-body ">
                                    <button type="button"
                                        class="btn-close btn-close-white realestate-nav-login-modal-close-btn"
                                        data-bs-dismiss="modal" aria-label="Close"></button>
                                    <div class="myform bg-dark p-4 rounded realestate-nav-login-myform">
                                        <h1 class="text-center text-light"
                                            style="letter-spacing:1px; font-size:18px;">Login Form</h1>
                                        <form action="${pageContext.request.contextPath}/login" method="post">
                                            <div class="mb-3">
                                                <label for="username" class="form-label text-light">Username</label>
                                                <input type="text"
                                                    class="form-control realestate-nav-modal-login-form-control"
                                                    id="username" name="username" required>
                                            </div>
                                            <div class="mb-3">
                                                <label for="password" class="form-label text-light">Password</label>
                                                <input type="password"
                                                    class="form-control realestate-nav-modal-login-form-control"
                                                    id="password" name="password" required>
                                            </div>

                                            <div class="realestate-nav-modal-login-button-div">
                                                <button type="submit"
                                                    class="btn btn-light w-100 realestate-nav-modal-login-btn">Login</button>
                                                <p class="mt-2 text-light realestate-nav-modal-login-p">Not a
                                                    member?
                                                    <a href="${pageContext.request.contextPath}/signup"
                                                        class="realestate-nav-modal-login-signup">Signup now</a>
                                                </p>

                                            </div>

                                        </form>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="realestate-navbar-search-slide-down pt-4 pb-4" id="searchBar">
                <span class="realestate-navbar-close-search" id="closeSearch">&times;</span>
                <div class="container">
                    <div class="row">
                        <div class="col-9">
                            <input type="text" class="form-control" placeholder="Search properties...">
                        </div>
                        <div class="col-3">
                            <button class="btn btn-dark realestate-navbar-close-searchBtn"
                                id="searchBtn">Search</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="realestate-navbar-mobile-slide-menu" id="mobileMenu">
                <span class="mobile-menu-close" id="closeMobileMenu">&times;</span>

                <a href="#" class="realestate-nav-menu-mob">Home</a>

                <div class="realestate-nav-mobile-dropdown mobile-dropdown">
                    <a href="#" class="mobile-dropdown-toggle realestate-nav-menu-mob">Properties <i
                            class="fa fa-chevron-down float-end"></i></a>
                    <ul class="realestate-nav-dropdown-menu-items-mob bg-body-tertiary">
                        <c:forEach var="item" items="${propertiesList}">
                            <li><a href="#">${item}</a></li>
                        </c:forEach>
                        <li><a href="#">All Properties</a></li>
                        <li><a href="#">For Sale</a></li>
                        <li><a href="#">For Rent</a></li>
                        <li><a href="#">New Properties</a></li>
                        <li><a href="#">Popular Properties</a></li>
                        <li><a href="#">Luxury Properties</a></li>
                    </ul>
                </div>

                <div class="realestate-nav-mobile-dropdown mobile-dropdown">
                    <a href="#" class="mobile-dropdown-toggle realestate-nav-menu-mob">Property Types <i
                            class="fa fa-chevron-down float-end"></i></a>
                    <ul class="realestate-nav-dropdown-menu-items-mob bg-body-tertiary">
                        <c:forEach var="type" items="${propertyTypeList}">
                            <li><a href="#">${type}</a></li>
                        </c:forEach>
                        <li><a href="#">Apartment</a></li>
                        <li><a href="#">House</a></li>
                        <li><a href="#">Land / Plot</a></li>
                        <li><a href="#">Commercial</a></li>
                        <li><a href="#">Office Space</a></li>
                        <li><a href="#">Villa</a></li>
                        <li><a href="#">Studio</a></li>
                        <li><a href="#">Shop / Retail</a></li>
                    </ul>
                </div>

                <a href="#" class="realestate-nav-menu-mob">About Us</a>
                <a href="#" class="realestate-nav-menu-mob">Contact</a>

            </div>
        </nav>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


        <script>
	        $(document).ready(function () {

	            $(window).on('scroll', function () {
	                $('.realestate-navbar').toggleClass('nav-scrolled', $(this).scrollTop() > 10);
	            });

	            var $searchBar = $('#searchBar');
	
	            $('#realestateNavOpenSearchMobile, #realestateNavOpenSearchDesktop').on('click', function () {
	                $searchBar.toggleClass('active');
	            });
	
	            $('#closeSearch, #searchBtn').on('click', function () {
	                $searchBar.removeClass('active');
	            });

	            var $mobileMenu = $('#mobileMenu');

	            $('#mobileMenuBtn').on('click', function (e) {
	                e.stopPropagation();
	                $mobileMenu.toggleClass('open');
	            });

	            $('#closeMobileMenu').on('click', function () {
	                $mobileMenu.removeClass('open');
	            });

	            $('#mobileMenu').on('click', function (e) {
	                e.stopPropagation();
	            });

	            $(document).on('click', function () {
	                $mobileMenu.removeClass('open');
	            });

	            $('.mobile-dropdown-toggle').on('click', function (e) {
	                e.preventDefault();
	                $(this).parent('.mobile-dropdown').toggleClass('open');
	            });

	            $('#mobileMenu a').not('.mobile-dropdown-toggle').on('click', function () {
	                $mobileMenu.removeClass('open');
	            });
	
	        });


        </script>
    </body>

</html>