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
                        <div class="col-xl-3 col-lg-6 col-md-12 col-12">
                            <!-- Card -->
                            <div class="card mb-4">
                                <!-- Card body -->
                                <div class="card-body">
                                    <div class="d-flex align-items-center justify-content-between mb-3 lh-1">
                                        <div>
                                            <span class="fs-6 text-uppercase fw-semibold ls-md">Total Enseignants</span>
                                        </div>
                                        <div>
                                            <span class="fe fe-shopping-bag fs-3 text-primary"></span>
                                        </div>
                                    </div>
                                    <h2 class="fw-bold mb-1">${totalEnseignants}</h2>
                                  
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-12 col-12">
                            <!-- Card -->
                            <div class="card mb-4">
                                <!-- Card body -->
                                <div class="card-body">
                                    <div class="d-flex align-items-center justify-content-between mb-3 lh-1">
                                        <div>
                                            <span class="fs-6 text-uppercase fw-semibold ls-md">Total Agents</span>
                                        </div>
                                        <div>
                                            <span class="fe fe-book-open fs-3 text-primary"></span>
                                        </div>
                                    </div>
                                    <h2 class="fw-bold mb-1">${totalAgents}</h2>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-12 col-12">
                            <!-- Card -->
                            <div class="card mb-4">
                                <!-- Card body -->
                                <div class="card-body">
                                    <div class="d-flex align-items-center justify-content-between mb-3 lh-1">
                                        <div>
                                            <span class="fs-6 text-uppercase fw-semibold ls-md">Students</span>
                                        </div>
                                        <div>
                                            <span class="fe fe-users fs-3 text-primary"></span>
                                        </div>
                                    </div>
                                    <h2 class="fw-bold mb-1">${totalStudents}</h2>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 col-md-12 col-12">
                            <!-- Card -->
                            <div class="card mb-4">
                                <!-- Card body -->
                                <div class="card-body">
                                    <div class="d-flex align-items-center justify-content-between mb-3 lh-1">
                                        <div>
                                            <span class="fs-6 text-uppercase fw-semibold ls-md">Total Groups</span>
                                        </div>
                                        <div>
                                            <span class="fe fe-user-check fs-3 text-primary"></span>
                                        </div>
                                    </div>
                                    <h2 class="fw-bold mb-1">${totalGroups}</h2>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                            <!-- Card -->
                            <div class="card mb-4">
                                <!-- Card header -->
                                <div class="card-header align-items-center card-header-height d-flex justify-content-between align-items-center">
                                    <div>
                                        <h4 class="mb-0">Earnings</h4>
                                    </div>
                                    <div>
                                        <div class="dropdown dropstart">
                                            <a class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#" role="button" id="courseDropdown1" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="fe fe-more-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="courseDropdown1">
                                                <span class="dropdown-header">Settings</span>
                                                <a class="dropdown-item" href="#">
                                                    <i class="fe fe-external-link dropdown-item-icon"></i>
                                                    Export
                                                </a>
                                                <a class="dropdown-item" href="#">
                                                    <i class="fe fe-mail dropdown-item-icon"></i>
                                                    Email Report
                                                </a>
                                                <a class="dropdown-item" href="#">
                                                    <i class="fe fe-download dropdown-item-icon"></i>
                                                    Download
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Card body -->
                                <div class="card-body">
                                    <!-- Earning chart -->
                                    <div id="impressionsChart" class="apex-charts"></div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                    
                            </div>
                        </div>
                        
                    </div>
                </section>
            </main>
    </div>
     <script src="${pageContext.request.contextPath}/assets/libs/apexcharts/dist/apexcharts.min.js"></script>
<script>
var impressionsByMonthJson = '${impressionsByMonthJson}';


    if (impressionsByMonthJson && impressionsByMonthJson !== "") { // Check if JSON string is not empty
        var impressionsByMonth = JSON.parse(impressionsByMonthJson); // Parse JSON string
        var seriesData = [];

        // Extract month and count data from impressionsByMonth
        for (var i = 0; i < impressionsByMonth.length; i++) {
            var monthData = impressionsByMonth[i];
            seriesData.push({
                x: new Date(2024, monthData["month"] - 1, 1),
                y: monthData["count"]
            });
        }

        var options = {
            series: [{
                name: "Impressions",
                data: seriesData
            }],
            chart: {
                type: 'area',
                height: 350,
                zoom: {
                    enabled: false
                }
            },
            dataLabels: {
                enabled: false
            },
            stroke: {
                curve: 'straight'
            },
            title: {
                text: 'Impressions by Month',
                align: 'left'
            },
            subtitle: {
                text: 'Number of Impressions',
                align: 'left'
            },
            xaxis: {
                type: 'datetime',
                labels: {
                    format: 'MMM yyyy'
                }
            },
            yaxis: {
                opposite: true
            },
            legend: {
                horizontalAlign: 'left'
            }
        };

        var chart = new ApexCharts(document.querySelector("#impressionsChart"), options);
        chart.render();
    } else {
        console.error("impressionsByMonthJson is empty");
    }
</script>




   
        <script src="${pageContext.request.contextPath}/assets/js/vendors/chart.js"></script>
        <script src="${pageContext.request.contextPath}/assets/libs/flatpickr/dist/flatpickr.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/vendors/flatpickr.js"></script>

       
  <%@ include file="jsfiles.jsp" %>

