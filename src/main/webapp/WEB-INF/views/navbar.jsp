<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
<!Doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    
    <style>
	
	        .realesate-navbar {
	            padding: 22px 0;
	            font-family: 'Segoe UI', sans-serif;
	            letter-spacing: 2px;
	            background: #fff;
	            border-bottom: #6b6a6a 0.5px solid;
	        }
	
	        .nav-scrolled {
	            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.15);
	            background: #fff !important;
	        }
	
	        .realestate-nav-menu a {
	            color: #444;
	            text-decoration: none;
	            margin: 0 15px;
	            text-transform: uppercase;
	            font-size: 14px;
	        }
	
	        .realestate-nav-menu a:hover {
	            color: #000;
	        }
	
	        .realestate-navbar-logo img {
	            height: 55px;
	        }
	
	        .icon-btn {
	            margin-left: 12px;
	            font-size: 20px;
	            cursor: pointer;
	        }
	         @media (max-width: 768px) {
	            .realestate-navbar .row {
	                flex-direction: column;
	            }
	
	            .realestate-nav-menu {
	                justify-content: center !important;
	                text-align: center;
	                margin-top: 10px;
	            }
	
	            .realestate-nav-menu a {
	                margin: 8px;
	            }

    </style>
    
    
  </head>
  <body>

    <nav class="realesate-navbar sticky-top">
  <div class="container">
    <div class="row align-items-center">

      <!-- Left menu for desktop, hidden on small screens -->
      <div class="col-md-4 d-none d-md-flex realestate-nav-menu justify-content-start">
        <a href="#">Sale</a>
        <a href="#">Rent</a>
        <a href="#">Retail</a>
        <a href="#">Owners</a>
      </div>

      <!-- Logo always center on desktop, left on mobile -->
      <div class="col-6 col-md-4 text-start text-md-center realestate-navbar-logo">
        <img src="https://img.freepik.com/premium-vector/abstract-silhouette-real-estate-building-logo-template_1277164-1359.jpg?semt=ais_hybrid&w=740&q=80" alt="Logo" style="height:50px;">
        <div style="font-size:12px; color:#777;">Real-Estate Logo</div>
      </div>

      <!-- Right menu for desktop, hidden on small screens -->
      <div class="col-md-4 d-none d-md-flex realestate-nav-menu justify-content-end align-items-center">
        <a href="#">About Us</a>
        <a href="#">Contact</a>
        <i class="fa-regular fa-heart icon-btn ms-2"></i>
        <button class="btn btn-outline-dark ms-2" data-bs-toggle="modal" data-bs-target="#searchModal">
          <i class="fa-solid fa-magnifying-glass"></i>
        </button>
      </div>

      <!-- Hamburger button for small screens -->
      <div class="col-6 d-flex justify-content-end d-md-none">
        <button class="btn" type="button" data-bs-toggle="collapse" data-bs-target="#mobileMenu">
          <i class="fa-solid fa-bars fa-lg"></i>
        </button>
      </div>

    </div>

    <!-- Collapsible mobile menu -->
    <div class="collapse d-md-none mt-2" id="mobileMenu">
      <div class="realestate-nav-menu d-flex flex-column gap-2">
        <a href="#">Sale</a>
        <a href="#">Rent</a>
        <a href="#">Retail</a>
        <a href="#">Owners</a>
        <a href="#">About Us</a>
        <a href="#">Contact</a>
        <i class="fa-regular fa-heart icon-btn"></i>
        <button class="btn btn-outline-dark mt-2" data-bs-toggle="modal" data-bs-target="#searchModal">
          <i class="fa-solid fa-magnifying-glass"></i> Search
        </button>
      </div>
    </div>

  </div>
</nav>

<!-- Search Modal (unchanged) -->
<div class="modal fade" id="searchModal" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content border-0" style="border-radius:10px;">
      <div class="modal-header border-0">
        <h5 class="modal-title">Search Property</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <form>
          <input type="text" class="form-control mb-3" placeholder="Search by location, name, or type">
          <div class="mb-3 d-flex gap-2">
            <select class="form-select">
              <option selected>Sale</option>
              <option>Rent</option>
            </select>
            <select class="form-select">
              <option selected>All Types</option>
              <option>Retail</option>
              <option>Apartment</option>
              <option>House</option>
            </select>
          </div>
          <button type="submit" class="btn btn-dark w-100">Search</button>
        </form>
      </div>
    </div>
  </div>
</div>


 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script>
	    window.addEventListener("scroll", function () {
	        const nav = document.querySelector(".realesate-navbar");
	        if (window.scrollY > 10) nav.classList.add("nav-scrolled");
	        else nav.classList.remove("nav-scrolled");
	    });
    
    </script>
  </body>
</html>