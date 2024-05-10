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
        <title>Authentification</title>
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
                                <div class="mb-4 text-center">
                                    <a href="../index.html"><img src="${pageContext.request.contextPath}/assets/logoISB2.png" class="mb-4 logo-img" alt="logo-icon"></a>
                                    <h1 class="mb-1 fw-bold">Log In</h1>
                                    	 <style>
								              .logo-img {
												    height: 15rem; 
												}
								              
								              </style>	
                                </div>
                                <%-- Check if errorMessage exists in request scope --%>
							    <% if (request.getAttribute("errorMessage") != null) { %>
							        <p style="color: red;"><%= request.getAttribute("errorMessage") %></p>
							    <% } %>
                                <!-- Form -->
                                <form action="Login" method="post" class="needs-validation" novalidate>
                                    <!-- Username -->
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Adresse E-mail</label>
                                        <input type="text" id="email" name="email" class="form-control"  placeholder="Adresse E-mail" required>
                                        <div class="invalid-feedback">Veuillez saisir un Adresse E-mail.</div>
                                    </div>
                                    <!-- Password -->
                                    <div class="mb-3">
                                        <label for="password" class="form-label">Mot de Passe</label>
                                        <input type="password" id="password" name="password" class="form-control" name="password" placeholder="**************" required>
                                        <div class="invalid-feedback">Veuillez saisir un Mot de passe.</div>
                                    </div>
                                  
                                    
                                    <div>
                                        <!-- Button -->
                                        <div class="d-grid mt-2">
                                            <button type="submit" value="login" class="btn btn-primary">Login</button>
                                        </div>
                                    </div>
                                    <hr class="my-4">
                                    
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
           
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

