<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>User Profile</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

        <style>
            .realestate-userprofile-wrapper {
                max-width: 1100px;
                margin: 30px auto;
                display: grid;
                grid-template-columns: 300px 1fr;
                gap: 25px;
                font-family: 'Segoe UI', sans-serif;
                letter-spacing: 1px;
            }

            .realestate-userprofile-card {
                background: #fff;
                padding: 25px;
                border-radius: 8px;
                text-align: center;
                box-shadow: 0 4px 12px rgba(0, 0, 0, .08);
            }

            .realestate-userprofile-avatar {
                width: 90px;
                height: 90px;
                background: #2c7be5;
                color: #fff;
                border-radius: 50%;
                font-size: 40px;
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0 auto 15px;
            }

            .realestate-userprofile-role {
                color: #666;
                margin-bottom: 8px;
            }

            .realestate-userprofile-status.active {
                color: green;
                font-weight: 600;
            }

            .realestate-userprofile-details {
                background: #fff;
                padding: 25px;
                border-radius: 8px;
                box-shadow: 0 4px 12px rgba(0, 0, 0, .08);
            }

            .realestate-userprofile-section {
                margin-bottom: 25px;
            }

            .realestate-userprofile-section h4 {
                border-bottom: 1px solid #eee;
                padding-bottom: 8px;
                margin-bottom: 15px;

            }

            .realestate-userprofile-view-row {
                display: grid;
                grid-template-columns: 180px 1fr;
                margin-bottom: 10px;
            }

            .realestate-userprofile-label {
                font-weight: 600;
                color: #555;
            }

            .realestate-userprofile-grid {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                gap: 15px;
            }

            .realestate-userprofile-grid input {
                letter-spacing: 1px;
            }

            .realestate-userprofile-grid .full {
                grid-column: span 2;
            }

            input,
            textarea,
            select {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            .realestate-userprofile-actions {
                display: flex;
                gap: 10px;
            }

            .realestate-userprofile-btn {
                background: #000;
                color: white;
                border: none;
                padding: 10px 18px;
                border-radius: 4px;
                cursor: pointer;
                letter-spacing: 1px;
            }

            .realestate-userprofile-btn:hover {
                background: #fff;
                color: #000;
                border: 1px solid #000;
            }
            
            .realestate-userprofile-booking-btn{
            	background: #000;
                color: white;
                border: none;
                padding: 10px 18px;
                border-radius: 4px;
                cursor: pointer;
                letter-spacing: 1px;
                text-decoration: none;
            }
            
            .realestate-userprofile-booking-btn:hover{
            	background: #fff;
                color: #000;
                border: 1px solid #000;
            }

            .realestate-userprofile-btn-cancel {
                background: #ccc;
                color: #000;
            }

            @media (max-width: 992px) {

                .realestate-userprofile-wrapper {
                    grid-template-columns: 1fr;
                }

                .realestate-userprofile-card {
                    text-align: center;
                }


                .realestate-userprofile-avatar {
                    width: 60px;
                    height: 60px;
                    font-size: 20px;
                }

            }

            @media (max-width: 576px) {

                .realestate-userprofile-grid {
                    grid-template-columns: 1fr;
                }

                .realestate-userprofile-view-row {
                    grid-template-columns: 1fr;
                }

                .realestate-userprofile-label {
                    margin-bottom: 4px;
                }

                .realestate-userprofile-actions {
                    flex-direction: column;
                }

                .realestate-userprofile-btn {
                    width: 100%;
                }

            }
        </style>

    </head>

    <body>

        <%@ include file="navbar.jsp" %>

            <div class="mt-5">
                <div class="row">
                    <div class="col">
                        <h1 class="text-center" style="letter-spacing:1px;">
                            Welcome ${user_detail.username }
                        </h1>
                    </div>
                </div>


                <div class="realestate-userprofile-wrapper my-5">

                    <div class="realestate-userprofile-card ">

                        <div class="realestate-userprofile-avatar">👤</div>

                        <h3>${user_detail.firstname} ${user_detail.lastname}</h3>
                        <p class="realestate-userprofile-role">${user_detail.userRole.role}</p>

                        <span class="realestate-userprofile-status ${user_detail.active == 'Y' ? 'active' : ''}">
                            ${user_detail.active == 'Y' ? 'Active Account' : 'Inactive'}
                        </span>

                        <br><br>
                        <button id="editBtn" class="realestate-userprofile-btn">Edit Profile</button>
                        
                        <a href="${pageContext.request.contextPath}/user/booking/show"
							   class="realestate-userprofile-booking-btn d-inline-block mt-2">
							    <i class="fas fa-calendar-check me-1"></i> My Bookings
							</a>
                        
                    </div>

                    <div class="realestate-userprofile-details">

                        <div id="viewMode">

                            <div class="realestate-userprofile-section">
                                <h4>Personal Information</h4>

                                <div class="realestate-userprofile-view-row">
                                    <div class="realestate-userprofile-label">Name</div>
                                    <div>${user_detail.firstname} ${user_detail.lastname}</div>
                                </div>

                                <div class="realestate-userprofile-view-row">
                                    <div class="realestate-userprofile-label">Gender</div>
                                    <div>${user_detail.gender}</div>
                                </div>

                                <div class="realestate-userprofile-view-row">
                                    <div class="realestate-userprofile-label">Date of Birth</div>
                                    <div>${user_detail.dob}</div>
                                </div>
                            </div>

                            <div class="realestate-userprofile-section">
                                <h4>Contact Information</h4>

                                <div class="realestate-userprofile-view-row">
                                    <div class="realestate-userprofile-label">Email</div>
                                    <div>${user_detail.email}</div>
                                </div>

                                <div class="realestate-userprofile-view-row">
                                    <div class="realestate-userprofile-label">Phone</div>
                                    <div>${user_detail.phone}</div>
                                </div>

                                <div class="realestate-userprofile-view-row">
                                    <div class="realestate-userprofile-label">Address</div>
                                    <div>${user_detail.address}</div>
                                </div>
                            </div>

                            <div class="realestate-userprofile-section">
                                <h4>Account</h4>

                                <div class="realestate-userprofile-view-row">
                                    <div class="realestate-userprofile-label">Username</div>
                                    <div>${user_detail.username}</div>
                                </div>
                            </div>
                        </div>
                        <form id="editMode" style="display:none;" method="post" action="updateProfile">

                            <div class="realestate-userprofile-section">
                                <h4>Edit Profile</h4>

                                <div class="realestate-userprofile-grid">
                                    <input type="text" name="firstname" value="${user_detail.firstname}">
                                    <input type="text" name="lastname" value="${user_detail.lastname}">

                                    <select name="gender">
                                        <option ${user_detail.gender=='Male' ?'selected':''}>Male</option>
                                        <option ${user_detail.gender=='Female' ?'selected':''}>Female</option>
                                        <option ${user_detail.gender=='Other' ?'selected':''}>Other</option>
                                    </select>

                                    <input type="date" name="dob" value="${user_detail.dob}">

                                    <input type="email" name="email" value="${user_detail.email}">
                                    <input type="text" name="phone" value="${user_detail.phone}">

                                    <textarea name="address" class="full">${user_detail.address}</textarea>
                                </div>
                            </div>

                            <div class="realestate-userprofile-actions">
                                <button type="submit" class="realestate-userprofile-btn">Save</button>
                                <button type="button" id="cancelBtn"
                                    class="realestate-userprofile-btn realestate-userprofile-btn-cancel">
                                    Cancel
                                </button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        <%@ include file="footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            $(function () {

                $('#editBtn').click(function () {
                    $('#viewMode').hide();
                    $('#editMode').show();
                    $(this).hide();
                });

                $('#cancelBtn').click(function () {
                    location.reload();
                });

            });
        </script>
    </body>

 </html>