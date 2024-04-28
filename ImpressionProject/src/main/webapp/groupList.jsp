<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
                    <!-- Page Header -->
                    <div class="col-lg-12 col-md-12 col-12">
                        <div class="border-bottom pb-3 mb-3 d-flex align-items-center justify-content-between">
                            <div>
                                <h1 class="mb-1 h2 fw-bold">Groups</h1>
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="admin-dashboard.html">Dashboard</a>
                                        </li>
                                      
                                        <li class="breadcrumb-item active" aria-current="page">Groups</li>
                                    </ol>
                                </nav>
                            </div>
                            <div>
                                <a href="addGroup.jsp" class="btn btn-primary">Ajouter un group</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12">
                        <!-- Card -->
                        <div class="card rounded-3">
                            <!-- Card Header -->
                           
                            <div class="p-4 row">
                                <!-- Form -->
                                <form class="d-flex align-items-center col-12 col-md-8 col-lg-3">
                                    <span class="position-absolute ps-3 search-icon">
                                        <i class="fe fe-search"></i>
                                    </span>
                                    <input type="search" class="form-control ps-6" placeholder="recherce groups">
                                </form>
                            </div>
                            <div>
                                <div class="tab-content" id="tabContent">
                                    <!-- Tab -->
                                    <div class="tab-pane fade show active" id="all-post" role="tabpanel"
                                        aria-labelledby="all-post-tab">
                                        <div class="table-responsive">
                                            <!-- Table -->
                                            <table
                                                class="table mb-0 text-nowrap table-centered table-hover table-with-checkbox table-centered table-hover">
                                                <!-- Table Head -->
                                                <thead class="table-light">
                                                    <tr>
                                                        <th>
                                                            <div class="form-check">
                                                                <input type="checkbox" class="form-check-input"
                                                                    id="checkAll">
                                                                <label class="form-check-label" for="checkAll"></label>
                                                            </div>
                                                        </th>
                                                        <th>Group</th>
                                                      
                                                        <th>nombre etudiants</th>
                                                        
                                                        <th>Action</th>
                                                      
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!-- Table body -->
                                                     <c:forEach var="group" items="${groups}">
                                                    <tr>
                                                        <td>
                                                            <div class="form-check">
                                                                <input type="checkbox" class="form-check-input"
                                                                    id="postOne">
                                                                <label class="form-check-label" for="postOne"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <h5 class="mb-0">
                                                                <a href="#" class="text-inherit">${group.nom}</a>
                                                            </h5>
                                                        </td>
                                                       
                                                        <td>
                                                            <a href="#" class="text-inherit">${group.nbetudiants} Etudiants</a>
                                                        </td>
                                                       
                                                       
                                                       
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
                                                                   
                                                                    <a class="dropdown-item" href="Group?action=delete&id=${group.id}">
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
                            <!-- Card Footer -->
                          
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>
         
              <%@ include file="jsfiles.jsp" %>

