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
                                <h1 class="mb-1 h2 fw-bold">Liste des Impressions</h1>
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <a href="admin-dashboard.html">Dashboard</a>
                                        </li>
                                      
                                        <li class="breadcrumb-item active" aria-current="page">Demande de tirage</li>
                                    </ol>
                                </nav>
                            </div>
                            <div class="text-end">
                            	<a href="agentimpressions" class="btn btn-primary">En attente</a>
                                <a href="AgentCalendarServlet" class="btn btn-primary">View Calendrier</a>
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
                                                       <th>ID</th>
									                <th>enseignant Nom</th>
									                <th>Groupe</th>
									              
									          
									             
									             
									                <th>État</th>
									               
									                 <th>Action</th>
                                                   
                                                </tr>
                                            </thead>
                                            <tbody>
                                               <c:forEach items="${impressions}" var="impression">
                                                <tr>
                                                     <td>
																<a href="#" class="text-inherit">
                                                                    <div class="d-flex align-items-center">
                                                                        <div>
                                                                            <img src="${pageContext.request.contextPath}/assets/pdfimg.png" alt="" class="img-4by3-lg rounded">
                                                                        </div>
                                                                        <div class="ms-3">
                                                                            <h4 class="mb-1 text-primary-hover">${impression.nombreDePages} pages pour la matiere ${impression.matiereNom}</h4>
                                                                            <span>${impression.dateImpression}</span>
                                                                        </div>
                                                                    </div>
                                                                </a>
														</td>
											            <td>${impression.enseignantNom}</td>
											            <td>${impression.groupeNom}</td>
											           
											         
											           
												           
														
											           <td>
														   <c:if test="${impression.etat eq 'En attente'}">
												                <span class="badge bg-info-soft">${impression.etat}</span>
												            </c:if>
												            <c:if test="${impression.etat ne 'En attente'}">
												                <span class="badge bg-danger">${impression.etat}</span>
												            </c:if>

											          
                                                    
                                                    <td>
                                                    		<div class="d-block">
                                                    				 <a class="btn btn-outline-secondary btn-sm mx-2" 
                                                    				<%--  href="${pageContext.request.contextPath}/uploads/${impression.document}" --%>
                                                    	href="agentimpressionslog?action=imprime&id=${impression.id}">
                                                                        <i class="fe fe-download dropdown-item-icon"></i>
                                                                       Imprimerrr
                                                                    </a>
                                                                   
                                                                    <a class="btn btn-danger-light btn-sm" href="agentimpressionslog?action=delete&id=${impression.id}">
                                                                        <i class="fe fe-trash dropdown-item-icon"></i>
                                                                        Supprimer
                                                                    </a>
                                                                    	</div>
                                                    		
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

