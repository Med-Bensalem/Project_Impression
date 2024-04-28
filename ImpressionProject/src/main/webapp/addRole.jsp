<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.models.Matiere" %>
<%@ page import="com.example.models.Role" %>
<%@ page import="java.util.List" %>
  <%@ include file="cssfiles.jsp" %>

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
                                    <h1 class="mb-1 h2 fw-bold">Ajouter un rôle</h1>
                                    <!-- Breadcrumb -->
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                          
                                         
                                            <li class="breadcrumb-item active" aria-current="page">Ajouter un rôle</li>
                                        </ol>
                                    </nav>
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
                                    <h4 class="mb-0">Ajouter un rôle</h4>
                                </div>
                                <form  class="needs-validation" novalidate action="Role" method="post" >
                                    <!-- Card body -->
                                    <div class="card-body">

                                        <!-- Add the "Upload" button -->
                                        <div class="mt-4">
                                            <!-- Form -->
                                            <div class="row">
                                                <!-- Date -->
                                            	 <input type="hidden" name="action" value="add">
                                                
                                                 <div class=" col-md-12">
                                                    <!-- Title -->
                                                    <label for="dateImpression"  class="form-label">Nom du rôle :</label>
       												<input type="text" name="roleName" id="roleName" class="form-control">
                                                </div>
                                                
                                                
                                           
                                              

                                            </div>
                                        </div>
                                        <!-- Editor -->
                                       <div class="text-end mt-5">
                                       <button type="submit" class="btn btn-primary" value="Ajouter">Enregister</button>
                                       </div>
                                        <!-- button -->
                                        
                                       
                                    </div>
                                </form>
                            </div>
                        </div>
                       </div>
                </section>
            </main>
    </div>
         
  <%@ include file="jsfiles.jsp" %>

