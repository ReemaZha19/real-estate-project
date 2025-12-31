<!DOCTYPE html>
<html>
<head>
    <title>Booking Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-dark text-white">
            Booking Details
        </div>
        <div class="card-body">
            <p><strong>Booking ID:</strong> ${booking.id}</p>
            <p><strong>User Name:</strong> ${booking.userDetail.name}</p>
            <p><strong>Email:</strong> ${booking.userDetail.email}</p>
            <p><strong>Property:</strong> ${booking.property.title}</p>
            <p><strong>Status:</strong> ${booking.status}</p>

            <a href="/admin/booking/show" class="btn btn-secondary mt-3">
                Back
            </a>
        </div>
    </div>
</div>

</body>
</html>
