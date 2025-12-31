<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Contact Us</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

        <style>
            .realestate-contact-wrapper {
                padding: 60px 0;
                background: #f8f9fa;
            }

            .realestate-contact-header {
                text-align: center;
                margin-bottom: 50px;
            }

            .realestate-contact-header h1 {
                font-size: 36px;
                font-weight: 700;
                letter-spacing: 1px;
            }

            .realestate-contact-header p {
                font-size: 16px;
                color: #555;
                letter-spacing: 1px;
            }

            .realestate-contact-info {
                margin-bottom: 50px;
                margin-top: 50px;
            }

            .realestate-contact-info h4 {
                font-size: 20px;
                font-weight: 600;
                margin-bottom: 20px;
                letter-spacing: 1px;
            }

            .realestate-contact-info p,
            .realestate-contact-info a {
                font-size: 15px;
                color: #555;
                margin-bottom: 10px;
                display: block;
                text-decoration: none;
                letter-spacing: 1px;
            }

            .realestate-contact-form {
                background: #fff;
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, .05);
            }

            .realestate-contact-form h4 {
                margin-bottom: 20px;
                letter-spacing: 1px;
            }

            .realestate-contact-form .form-control {
                margin-bottom: 15px;
                border-radius: 8px;
                letter-spacing: 1px;
                font-size: 14px;
            }

            .realestate-contact-form .form-control:focus {
                outline: none !important;
                box-shadow: none !important;
            }

            .realestate-contact-form button {
                border-radius: 30px;
                letter-spacing: 1px;
            }
        </style>
    </head>

    <body>

        <%@ include file="navbar.jsp" %>

            <section class="realestate-contact-wrapper">
                <div class="container">

                    <div class="realestate-contact-header">
                        <h1>Contact Us</h1>
                        <p>Have any questions or inquiries? Reach out to us and we’ll get back to you soon.</p>
                    </div>

                    <div class="row">

                        <div class="col-lg-1"></div>

                        <div class="col-lg-3">
                            <div class="realestate-contact-info">
                                <h4>Our Office</h4>
                                <p><i class="fa-solid fa-location-dot me-2"></i> Kathmandu, Nepal</p>
                                <p><i class="fa-solid fa-phone me-2"></i> +977-01-1234567</p>
                                <p><i class="fa-solid fa-envelope me-2"></i> info@realestate.com</p>
                                <h4 class="pt-4">Follow Us</h4>
                                <p><i class="fa-brands fa-facebook me-2"></i> Facebook</p>
                                <p><i class="fa-brands fa-instagram me-2"></i> Instagram</p>
                                <p><i class="fa-brands fa-linkedin me-2"></i> LinkedIn</p>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="realestate-contact-form">
                                <h4>Send a Message</h4>
                                <form action="send_message.jsp" method="post">
                                    <input type="text" name="name" class="form-control" placeholder="Your Name"
                                        required>
                                    <input type="email" name="email" class="form-control" placeholder="Your Email"
                                        required>
                                    <input type="text" name="subject" class="form-control" placeholder="Subject"
                                        required>
                                    <textarea name="message" rows="5" class="form-control" placeholder="Your Message"
                                        required></textarea>
                                    <button type="submit" class="btn btn-primary">Send Message</button>
                                </form>
                            </div>
                        </div>

                        <div class="col-lg-1"></div>
                    </div>

                </div>
            </section>

            <%@ include file="footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

    </body>

</html>