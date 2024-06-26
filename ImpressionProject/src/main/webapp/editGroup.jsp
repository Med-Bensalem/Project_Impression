<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


   <head>
 <%@ include file="cssfiles.jsp" %>
 <title>Modifier Groupe</title>
</head>

   <div id="db-wrapper">
        <!-- navbar vertical -->

        <!-- navbar vertical -->
        <!-- Sidebar -->
        <%@ include file="admin-sidebar.jsp" %>


        <!-- Page Content -->
        <main id="page-content">
            <div class="header">
                <!-- navbar -->
                
                 <%@ include file="admin-header.jsp" %>
              </div>

            <!-- Container fluid -->
             <section class="container-fluid p-4">
                    <div class="row">
                        <!-- Page header -->
                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="border-bottom pb-3 mb-3 d-md-flex align-items-center justify-content-between">
                                <div class="mb-3 mb-md-0">
                                    <h1 class="mb-1 h2 fw-bold">Modifier Groupe</h1>
                                    <!-- Breadcrumb -->
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="admin-dashboard.html">Dashboard</a>
                                            </li>
                                             <li class="breadcrumb-item active" aria-current="page">Gestion Groupes</li>
                                          
                                            <li class="breadcrumb-item active" aria-current="page">Modifier Groupe</li>
                                        </ol>
                                    </nav>
                                </div>
                                <div>
                                    <a href="GroupServlet" class="btn btn-outline-secondary">Retour</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                            <!-- Card -->
                            <div class="card border-0 mb-4">
                                <!-- Card header -->
                                <div class="card-header">
                                    <h4 class="mb-0">Modifier Groupe</h4>
                                </div>
                                <form action="GroupServlet" method="post" class="needs-validation" novalidate>
                                    <!-- Card body -->
                                    <div class="card-body">

                                        <!-- Add the "Upload" button -->
                                        <div class="mt-4">
                                            <!-- Form -->
                                            <div class="row">
                                                <!-- Date -->
                                                  <input type="hidden" name="action" value="update">
                                               	<input type="hidden" name="id" value="${group.id}">
                                                <div class="mb-3 col-md-12">
                                                    <!-- Title -->
                                                    
                                                    <label for="postTitle" class="form-label">Nom du groupe</label>
                                                    <input type="text" id="nom" name="nom" value="${group.nom}" class="form-control text-dark" placeholder="Nom du matiere" required >
                                                   
                                                    <div class="invalid-feedback">Please enter title.</div>
                                                </div>
                                                <!-- Slug -->
                                              
                                                <!-- Excerpt -->
                                                <div class="mb-3 col-md-12">
                                                    <label for="Excerpt" class="form-label">Nombre d etudiant</label>
                                                     <input type="text" value="${group.nbetudiants}" id="nbetudiants" name="nbetudiants" class="form-control text-dark" placeholder="nbetudiants" required >
                                                   
                                                </div>

                                            </div>
                                        </div>
                                        <!-- Editor -->
                                       
                                        <!-- button -->
                                        <button type="submit" class="btn btn-primary" value="Enregistrer">Enregister</button>
                                       
                                    </div>
                                </form>
                            </div>
                        </div>
                       </div>
                </section>
            </main>
    </div>
         
  <%@ include file="jsfiles.jsp" %>

