<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Map and FAQs</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>
.realestate-landing-map-header{
    font-weight: 300;
    font-family: 'Segoe UI', sans-serif;
    font-size: 30px;
    letter-spacing: 1px;
    margin-bottom: 30px;
}

.realestate-landing-faqs-header{
    font-weight: 300;
    font-family: 'Segoe UI', sans-serif;
    font-size: 30px;
    letter-spacing: 1px;
    margin-bottom: 20px;
}

.realestate-landing-faqs .faq-item {
    margin-bottom: 10px;
}

.realestate-landing-faqs .faq-btn {
    font-family: 'Segoe UI', sans-serif;
    letter-spacing:1px;
    font-size:18px;
    text-align: left;
    width: 100%;
    background-color: #f8f9fa;
    border: 1px solid #ddd;
    border-radius: 6px;
    padding: 10px 15px;
    position: relative;
    display: flex;
    justify-content: space-between;
    align-items: center;
    cursor: pointer;
}

.realestate-landing-faqs .faq-btn:hover{
    background-color: #e9ecef;
}

.realestate-landing-faqs .faq-body{
    font-family: 'Segoe UI', sans-serif;
    font-size: 16px;
    letter-spacing:1px;
    padding: 10px 15px;
    border-left: 1px solid #ddd;
    border-right: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
    border-radius: 0 0 6px 6px;
    margin-bottom: 5px;
    display: none; 
}

.realestate-landing-faqs .faq-arrow {
    transition: transform 0.3s;
}
.realestate-landing-faqs .faq-arrow.open {
    transform: rotate(180deg);
}

.realestate-landing-property-map {
    width: 100%;
    height: 500px; 
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
}
</style>
</head>
<body>

<section class="py-5 bg-light">
  <div class="container">
    <h3 class="mx-4 realestate-landing-map-header">Our Location</h3>
    <div class="row g-4 align-items-start">

      <div class="col-lg-7">
        <div id="propertyMap" class="realestate-landing-property-map"></div>
      </div>

      <div class="col-lg-5 realestate-landing-faqs">
        <h5 class="realestate-landing-faqs-header pt-4">Frequently Asked Questions.</h5>

        <div class="faq-item">
          <div class="faq-btn">
            How can I visit your office?
            <i class="fas fa-chevron-down faq-arrow fs-6"></i>
          </div>
          <div class="faq-body">
            Our office is located in Kathmandu city center, easily accessible by public transport.
          </div>
        </div>

        <div class="faq-item">
          <div class="faq-btn">
            What are the office hours?
            <i class="fas fa-chevron-down faq-arrow fs-6"></i>
          </div>
          <div class="faq-body">
            Monday to Friday: 9 AM - 6 PM, Saturday: 10 AM - 3 PM
          </div>
        </div>

        <div class="faq-item">
          <div class="faq-btn">
            Do you provide property consultation?
            <i class="fas fa-chevron-down faq-arrow fs-6"></i>
          </div>
          <div class="faq-body">
            Yes! Our expert team can guide you to find the best properties according to your budget and preferences.
          </div>
        </div>

      </div>

    </div>
  </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>

<script>

  var map = L.map('propertyMap').setView([27.7172, 85.3240], 13);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; OpenStreetMap contributors'
  }).addTo(map);

  var properties = [
      { coords: [27.7172, 85.3240], title: "Apartment 1" },
      { coords: [27.7210, 85.3110], title: "House 1" },
      { coords: [27.7100, 85.3200], title: "Villa 1" },
      { coords: [27.7300, 85.3300], title: "Land 1" }
  ];

  properties.forEach(function(prop){
      L.marker(prop.coords).addTo(map).bindPopup(prop.title);
  });

  setTimeout(function() {
      map.invalidateSize();
  }, 100);

  const faqBtns = document.querySelectorAll('.realestate-landing-faqs .faq-btn');
  faqBtns.forEach(btn => {
    btn.addEventListener('click', () => {
      const body = btn.nextElementSibling;
      const arrow = btn.querySelector('.faq-arrow');
      const isOpen = body.style.display === 'block';

      document.querySelectorAll('.realestate-landing-faqs .faq-body').forEach(b => b.style.display = 'none');
      document.querySelectorAll('.realestate-landing-faqs .faq-arrow').forEach(a => a.classList.remove('open'));

      if (!isOpen) {
        body.style.display = 'block';
        arrow.classList.add('open');
      }
    });
  });
</script>

</body>
</html>
