<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


  <head>
 <%@ include file="cssfiles.jsp" %>
 <title>Listes des Groupes</title>
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
                    <!-- Page Header -->
                    <div class="col-lg-12 col-md-12 col-12">
                        <div class="border-bottom pb-3 mb-3 d-flex align-items-center justify-content-between">
                            <div>
                                <h1 class="mb-1 h2 fw-bold">Listes des Groupes</h1>
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="admin-dashboard.html">Dashboard</a>
                                        </li>
                                        
                                        <li class="breadcrumb-item active" aria-current="page">Gestion Groupes</li>
                                      
                                        <li class="breadcrumb-item active" aria-current="page">Listes Groupes</li>
                                    </ol>
                                </nav>
                            </div>
                            <div>
                                <a href="addGroup.jsp" class="btn btn-primary">Ajouter un Groupe</a>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="row">
                        <!-- basic table -->
                        <div class="col-md-12 col-12 mb-5">
                            <div class="card">
                              
                                <div class="card-body">
                                    <div class="table-card">
                                        <table id="dataTableBasic" class="table table-hover" style="width: 100%">
                                            <thead class="table-light">
                                                <tr>
                                                    <th>Groupe</th>
                                                     
                                                        <th>Nombre Etudiants</th>
                                                        
                                                        <th>Action</th>
                                                   
                                                </tr>
                                            </thead>
                                            <tbody>
                                             <c:forEach var="group" items="${groups}">
                                                <tr>
                                                    <td>${group.nom}</td>
                                                    <td>${group.nbetudiants}</td>
                                                    <td>
                                                    		<span class="dropdown dropstart">
                                                                <a class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                                    href="#" role="button" id="courseDropdown1"
                                                                    data-bs-toggle="dropdown" data-bs-offset="-20,20"
                                                                    aria-expanded="false">
                                                                    <i class="fe fe-more-vertical"></i>
                                                                </a>
                                                                <span class="dropdown-menu"
                                                                    aria-labelledby="courseDropdown1">
                                                                    <span class="dropdown-header">Settings</span>
                                                                    <a class="dropdown-item" href="Group?action=edit&id=${group.id}">
                                                                        <i class="fe fe-edit dropdown-item-icon"></i>
                                                                        Modifier
                                                                    </a>
                                                                   
                                                                    <a class="dropdown-item" href="Matiere?action=delete&id=${group.id}">
                                                                        <i class="fe fe-trash dropdown-item-icon"></i>
                                                                        Supprimer
                                                                    </a>
                                                                </span>
                                                            </span>
													</td>
                                                 
                                                  
                                                </tr>
                                                 </c:forEach>
                                               
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
              
               </section>
        </main>
    </div>
         
              <%@ include file="jsfiles.jsp" %>