<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Real Estate Banner</title>

      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

      <style>
          .realestate-banner-hero {
              position: relative;
          }

          .realestate-banner-hero-slide {
              height: 85vh;
              background-size: cover;
              background-position: center;
              position: relative;
          }

          .realestate-banner-hero-overlay {
              position: absolute;
              inset: 0;
              background: rgba(0, 0, 0, 0.55);
          }

          .realestate-banner-hero-center-content {
              position: absolute;
              top: 50%;
              left: 50%;
              transform: translate(-50%, -50%);
              width: 100%;
              z-index: 10;
              text-align: center;
          }

          .realestate-banner-hero-title {
              font-size: 40px;
              font-weight: 500;
              color: #fff;
              margin-bottom: 10px;
              letter-spacing: 2px;
          }

          .realestate-banner-hero-subtitle {
              font-size: 14px;
              color: #f1f1f1;
              max-width: 650px;
              margin: 0 auto 30px;
              letter-spacing: 1.5px;
          }

          .realestate-banner-search-form {
              max-width: 1100px;
              margin: 0 auto;
          }

          .realestate-banner-search-form form {
              display: grid;
              grid-template-columns: repeat(4, 1fr);
              gap: 10px;
              background: #fff;
              padding: 8px;
              border-radius: 8px;
              box-shadow: 0 3px 10px rgba(0, 0, 0, 0.15);
          }

          .realestate-banner-form-control,
          .realestate-banner-dropdown .dropdown-toggle,
          .realestate-banner-button {
              height: 42px;
              border-radius: 8px;
              font-size: 13px;
              letter-spacing: 1px;
              color: #888;
              background-color: #fff;
              border: 1px solid #ccc;
              padding: 0 12px;
              display: flex;
              align-items: center;
          }

          .realestate-banner-form-control::placeholder {
              color: #888;
          }

          .realestate-banner-dropdown .dropdown-toggle {
              justify-content: flex-start;
              color: #888;
          }

          .realestate-banner-form-control:focus,
          .realestate-banner-dropdown .dropdown-toggle:focus,
          .realestate-banner-button:focus {
              outline: none;
              box-shadow: none;
              border-color: #ccc;
          }

          .realestate-banner-button {
              background-color: #000;
              color: #fff;
              justify-content: center;
          }

          .realestate-banner-button i {
              margin-right: 5px;
          }

          .realestate-banner-dropdown .dropdown-menu .dropdown-item {
              font-size: 13px;
              color: #333;
              letter-spacing: 1px;
          }

          @media (max-width: 767px) {
              .realestate-banner-hero-slide {
                  height: 65vh;
              }

              .realestate-banner-hero-title {
                  font-size: 30px;
              }

              .realestate-banner-hero-subtitle {
                  font-size: 14px;
                  padding: 0 15px;
              }

              .realestate-banner-search-form form {
                  grid-template-columns: 1fr;
                  gap: 8px;
                  padding: 10px;
              }

              .realestate-banner-form-control,
              .realestate-banner-dropdown .dropdown-toggle,
              .realestate-banner-button {
                  width: 100%;
                  height: 42px;
                  font-size: 13px;
                  letter-spacing: 1px;
              }
          }
      </style>
  </head>

  <body>

      <section class="realestate-banner-hero">
          <div id="realestateBannerSlider" class="carousel slide" data-bs-ride="carousel" data-bs-interval="4500">
              <div class="carousel-inner">
            
                  <div class="carousel-item active realestate-banner-hero-slide"
                      style="background-image:url('https://images.unsplash.com/photo-1568605114967-8130f3a36994');">
                      <div class="realestate-banner-hero-overlay"></div>
                  </div>

                  <div class="carousel-item realestate-banner-hero-slide"
                      style="background-image:url('https://images.unsplash.com/photo-1501183638710-841dd1904471');">
                      <div class="realestate-banner-hero-overlay"></div>
                  </div>

                  <div class="carousel-item realestate-banner-hero-slide"
                      style="background-image:url('https://images.unsplash.com/photo-1600585154340-be6161a56a0c');">
                      <div class="realestate-banner-hero-overlay"></div>
                  </div>

              </div>

              <div class="realestate-banner-hero-center-content container">
                  <h1 class="realestate-banner-hero-title">Find Your Dream Property</h1>
                  <p class="realestate-banner-hero-subtitle">
                      Buy, rent, or invest in premium properties across the best locations
                  </p>

                  <div class="realestate-banner-search-form">
                      <form>
                          <input type="text" class="realestate-banner-form-control"
                              placeholder="Location or Property Name">

                          <div class="dropdown realestate-banner-dropdown">
                              <button id="realestateBannerPropertyTypeBtn" class="btn btn-light dropdown-toggle w-100"
                                  type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                  Property Type
                              </button>
                              <ul class="dropdown-menu">
                                  <li><a class="dropdown-item" href="#">Apartment</a></li>
                                  <li><a class="dropdown-item" href="#">House</a></li>
                                  <li><a class="dropdown-item" href="#">Villa</a></li>
                                  <li><a class="dropdown-item" href="#">Land</a></li>
                              </ul>
                          </div>

                          <div class="dropdown realestate-banner-dropdown">
                              <button id="realestateBannerStatusBtn" class="btn btn-light dropdown-toggle w-100"
                                  type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                  Status
                              </button>
                              <ul class="dropdown-menu">
                                  <li><a class="dropdown-item" href="#">For Sale</a></li>
                                  <li><a class="dropdown-item" href="#">For Rent</a></li>
                              </ul>
                          </div>

                          <button type="submit" class="realestate-banner-button">
                              <i class="fa fa-search"></i> Search
                          </button>
                      </form>
                  </div>
              </div>
          </div>
      </section>


      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>

      <script>
          $(document).ready(function () {

              $('#realestateBannerPropertyTypeBtn').siblings('.dropdown-menu').find('.dropdown-item').click(function (e) {
                  e.preventDefault();
                  var selected = $(this).text();
                  $('#realestateBannerPropertyTypeBtn').html(selected + ' <span class="caret"></span>');
              });

              $('#realestateBannerStatusBtn').siblings('.dropdown-menu').find('.dropdown-item').click(function (e) {
                  e.preventDefault();
                  var selected = $(this).text();
                  $('#realestateBannerStatusBtn').html(selected + ' <span class="caret"></span>');
              });

          });
      </script>


  </body>
</html>