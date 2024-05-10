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
                        <!-- Page header -->
                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="border-bottom pb-3 mb-3 d-md-flex align-items-center justify-content-between">
                                <div class="mb-3 mb-md-0">
                                    <h1 class="mb-1 h2 fw-bold">Calendrier</h1>
                                    <!-- Breadcrumb -->
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="admin-dashboard.html">Dashboard</a>
                                            </li>
                                           
                                            <li class="breadcrumb-item active" aria-current="page">Calendrier</li>
                                        </ol>
                                    </nav>
                                </div>
                                <div>
                                    <a href="AgentImpression" class="btn btn-outline-secondary">Impressions</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                         
                                <!-- Calendar -->
                                <div id="calendar"></div>
                         
                           
                        </div>
                       </div>
                </section>
            </main>
    </div>
   <script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        
    
        var eventsJson = ${eventsJson};

        console.log(eventsJson); 
        
        var calendar = new FullCalendar.Calendar(calendarEl, {
           
            events: eventsJson 
            
        });

        calendar.render();
    });
</script>
    <script src="${pageContext.request.contextPath}/assets/libs/%40popperjs/core/dist/umd/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/libs/fullcalendar/index.global.min.js"></script>
      

        <!-- CDN File for moment -->
        <script src="${pageContext.request.contextPath}/assets/cdn.jsdelivr.net/npm/moment%402.29.1/min/moment.min.js"></script>
  <%@ include file="jsfiles.jsp" %>

