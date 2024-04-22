<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    
  



<head>
        <!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Codescandy" />


 

  <%@ include file="cssfiles.jsp" %>


        <link rel="canonical" href="sign-in.html">
        <title>Sign in | Geeks - Bootstrap 5 Template</title>
    </head>

    <body>
        <!-- Page content -->
        <main>
            <section class="container d-flex flex-column vh-100">
                <div class="row align-items-center justify-content-center g-0 h-lg-100 py-8">
                    <div class="col-lg-5 col-md-8 py-8 py-xl-0">
                        <!-- Card -->
                        <div class="card shadow">
                            <!-- Card body -->
                            <div class="card-body p-6">
                                <div class="mb-4">
                                    <a href="../index.html"><img src="${pageContext.request.contextPath}/assets/images/brand/logo/logo-icon.svg" class="mb-4" alt="logo-icon"></a>
                                    <h1 class="mb-1 fw-bold">Sign in</h1>
                                    
                                </div>
                                <!-- Form -->
                                <form action="Login" method="post" class="needs-validation" novalidate>
                                    <!-- Username -->
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Username</label>
                                        <input type="text" id="username" name="username" class="form-control" name="email" placeholder="username here" required>
                                        <div class="invalid-feedback">Please enter valid username.</div>
                                    </div>
                                    <!-- Password -->
                                    <div class="mb-3">
                                        <label for="password" class="form-label">Password</label>
                                        <input type="password" id="password" name="password" class="form-control" name="password" placeholder="**************" required>
                                        <div class="invalid-feedback">Please enter valid password.</div>
                                    </div>
                                    <!-- Checkbox -->
                                    <div class="d-lg-flex justify-content-between align-items-center mb-4">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="rememberme" required>
                                            <label class="form-check-label" for="rememberme">Remember me</label>
                                            <div class="invalid-feedback">You must agree before submitting.</div>
                                        </div>
                                       
                                    </div>
                                    <div>
                                        <!-- Button -->
                                        <div class="d-grid">
                                            <button type="submit" value="login" class="btn btn-primary">Sign in</button>
                                        </div>
                                    </div>
                                    <hr class="my-4">
                                    
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div class="position-absolute bottom-0 m-4">
                <div class="dropdown">
                    <button class="btn btn-light btn-icon rounded-circle d-flex align-items-center" type="button" aria-expanded="false" data-bs-toggle="dropdown" aria-label="Toggle theme (auto)">
                        <i class="bi theme-icon-active"></i>
                        <span class="visually-hidden bs-theme-text">Toggle theme</span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bs-theme-text">
                        <li>
                            <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
                                <i class="bi theme-icon bi-sun-fill"></i>
                                <span class="ms-2">Light</span>
                            </button>
                        </li>
                        <li>
                            <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
                                <i class="bi theme-icon bi-moon-stars-fill"></i>
                                <span class="ms-2">Dark</span>
                            </button>
                        </li>
                        <li>
                            <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
                                <i class="bi theme-icon bi-circle-half"></i>
                                <span class="ms-2">Auto</span>
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
        </main>
    
        <!-- Scripts -->
        <!-- Libs JS -->
             <script src="${pageContext.request.contextPath}/assets/libs/@popperjs/core/dist/umd/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/libs/simplebar/dist/simplebar.min.js"></script>
    <!-- Include theme JS -->
    <script src="${pageContext.request.contextPath}/assets/js/theme.min.js"></script>
    <!-- Include validation JS -->
    <script src="${pageContext.request.contextPath}/assets/js/vendors/validation.js"></script>
	   <%@ include file="jsfiles.jsp" %>
    </body>

<!-- Mirrored from geeksui.codescandy.com/geeks/pages/sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 22 Apr 2024 20:37:21 GMT -->
</html>

