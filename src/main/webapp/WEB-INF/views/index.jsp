<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!Doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg bg-primary sticky-top py-3 shadow-sm">
        <div class="container">


            <a class="navbar-brand fw-bold fs-4" href="#">
                <img src="#" alt="Logo" width="100" height="50" class="me-2">

            </a>


            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navMenu">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navMenu">


                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">




                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Home</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown" href="#">Properties</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Buy</a></li>
                            <li><a class="dropdown-item" href="#">Rent</a></li>
                            <li><a class="dropdown-item" href="#">Commercial</a></li>
                            <li><a class="dropdown-item" href="#">Land / Plots</a></li>
                            <li><a class="dropdown-item" href="#">New Projects</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown" href="#">Locations</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Kathmandu</a></li>
                            <li><a class="dropdown-item" href="#">Lalitpur</a></li>
                            <li><a class="dropdown-item" href="#">Bhaktapur</a></li>
                            <li><a class="dropdown-item" href="#">Pokhara</a></li>
                            <li><a class="dropdown-item" href="#">Biratnagar</a></li>
                        </ul>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown" href="#">Services</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Property Management</a></li>
                            <li><a class="dropdown-item" href="#">Interior & Renovation</a></li>
                            <li><a class="dropdown-item" href="#">Home Loan Assistance</a></li>
                            <li><a class="dropdown-item" href="#">Legal Support</a></li>
                        </ul>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">About Us</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Contact</a>
                    </li>
                </ul>


                <div class="d-flex align-items-center gap-3">


                    <div class="dropdown">
                        <button class="btn btn-outline-light dropdown-toggle" data-bs-toggle="dropdown">
                            🌐 EN
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="#">English (EN)</a></li>
                            <li><a class="dropdown-item" href="#">Nepali (NP)</a></li>
                        </ul>
                    </div>


                    <div class="dropdown">
                        <button class="btn btn-outline-light dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="bi bi-person"></i> Login
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#userLoginModal">User
                                    Login</a></li>

                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#ownerLoginModal">Owner
                                    / Agent Login</a></li>

                            <li><a class="dropdown-item" data-bs-toggle="modal"
                                    data-bs-target="#userRegisterModal">Register as User</a></li>

                            <li><a class="dropdown-item" data-bs-toggle="modal"
                                    data-bs-target="#ownerRegisterModal">Register as Owner / Agent</a></li>

                        </ul>
                    </div>


                </div>

            </div>
        </div>
    </nav>

    <div class="modal fade" id="userLoginModal" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content p-3">

                <div class="modal-header">
                    <h5 class="modal-title">User Login</h5>
                    <button class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label>Email</label>
                            <input type="email" class="form-control" placeholder="Enter email" required>
                        </div>

                        <div class="mb-3">
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="Enter password" required>
                        </div>

                        <button class="btn btn-primary w-100">Login</button>
                    </form>
                </div>

            </div>
        </div>
    </div>

    <div class="modal fade" id="ownerLoginModal" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content p-3">

                <div class="modal-header">
                    <h5 class="modal-title">Owner / Agent Login</h5>
                    <button class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label>Email</label>
                            <input type="email" class="form-control" placeholder="Enter email" required>
                        </div>

                        <div class="mb-3">
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="Enter password" required>
                        </div>

                        <button class="btn btn-primary w-100">Login</button>
                    </form>
                </div>

            </div>
        </div>
    </div>

    <div class="modal fade" id="userRegisterModal" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content p-3">

                <div class="modal-header">
                    <h5 class="modal-title">User Registration</h5>
                    <button class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <form>

                        <div class="mb-3">
                            <label>Full Name</label>
                            <input type="text" class="form-control" placeholder="Enter full name" required>
                        </div>

                        <div class="mb-3">
                            <label>Email</label>
                            <input type="email" class="form-control" placeholder="Enter email" required>
                        </div>

                        <div class="mb-3">
                            <label>Phone Number</label>
                            <input type="text" class="form-control" placeholder="98XXXXXXXX" required>
                        </div>

                        <div class="mb-3">
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="Enter password" required>
                        </div>

                        <div class="mb-3">
                            <label>Confirm Password</label>
                            <input type="password" class="form-control" required>
                        </div>

                        <button class="btn btn-success w-100">Register</button>

                    </form>
                </div>

            </div>
        </div>
    </div>

    <div class="modal fade" id="ownerRegisterModal" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content p-3">

                <div class="modal-header">
                    <h5 class="modal-title">Owner / Agent Registration</h5>
                    <button class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <div class="modal-body">
                    <form>

                        <div class="mb-3">
                            <label>Full Name</label>
                            <input type="text" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label>Email</label>
                            <input type="email" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label>Phone Number</label>
                            <input type="text" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label>Agency / Company Name (Optional)</label>
                            <input type="text" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label>Experience (in years)</label>
                            <input type="number" class="form-control" required>
                        </div>

                        <div class="mb-3">
                            <label>Password</label>
                            <input type="password" class="form-control" required>
                        </div>

                        <button class="btn btn-success w-100">Register</button>

                    </form>
                </div>

            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
  </body>
</html>