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
                    <div class="row">
                        <div class="col-xl-6 col-lg-12 col-md-12 col-12 mb-4">
                            <!-- Card -->
                            <div class="card h-100">
                                <!-- Card header -->
                                <div class="card-header d-flex align-items-center justify-content-between card-header-height">
                                    <h4 class="mb-0">Popular Instructor</h4>
                                    <a href="#" class="btn btn-outline-secondary btn-sm">View all</a>
                                </div>
                                <!-- Card body -->
                                <div class="card-body">
                                    <!-- List group -->
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item px-0 pt-0">
                                            <div class="row">
                                                <div class="col-auto">
                                                    <div class="avatar avatar-md avatar-indicators avatar-offline">
                                                        <img alt="avatar" src="../../assets/images/avatar/avatar-1.jpg" class="rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="col ms-n3">
                                                    <h4 class="mb-0 h5">Rob Percival</h4>
                                                    <span class="me-2 fs-6">
                                                        <span class="text-dark me-1 fw-semibold">42</span>
                                                        Courses
                                                    </span>
                                                    <span class="me-2 fs-6">
                                                        <span class="text-dark me-1 fw-semibold">1,10,124</span>
                                                        Students
                                                    </span>
                                                    <span class="fs-6">
                                                        <span class="text-dark me-1 fw-semibold">32,000</span>
                                                        Reviews
                                                    </span>
                                                </div>
                                                <div class="col-auto">
                                                    <span class="dropdown dropstart">
                                                        <a
                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                            href="#"
                                                            role="button"
                                                            id="courseDropdown7"
                                                            data-bs-toggle="dropdown"
                                                            data-bs-offset="-20,20"
                                                            aria-expanded="false">
                                                            <i class="fe fe-more-vertical"></i>
                                                        </a>
                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown7">
                                                            <span class="dropdown-header">Settings</span>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-edit dropdown-item-icon"></i>
                                                                Edit
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-trash dropdown-item-icon"></i>
                                                                Remove
                                                            </a>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- List group -->
                                        <li class="list-group-item px-0">
                                            <div class="row">
                                                <div class="col-auto">
                                                    <div class="avatar avatar-md avatar-indicators avatar-online">
                                                        <img alt="avatar" src="../../assets/images/avatar/avatar-2.jpg" class="rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="col ms-n3">
                                                    <h4 class="mb-0 h5">Jose Portilla</h4>
                                                    <span class="me-2 fs-6">
                                                        <span class="text-dark me-1 fw-semibold">12</span>
                                                        Courses
                                                    </span>
                                                    <span class="me-2 fs-6">
                                                        <span class="text-dark me-1 fw-semibold">21,567</span>
                                                        Students
                                                    </span>
                                                    <span class="fs-6">
                                                        <span class="text-dark me-1 fw-semibold">22,000</span>
                                                        Reviews
                                                    </span>
                                                </div>
                                                <div class="col-auto">
                                                    <span class="dropdown dropstart">
                                                        <a
                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                            href="#"
                                                            role="button"
                                                            id="courseDropdown8"
                                                            data-bs-toggle="dropdown"
                                                            data-bs-offset="-20,20"
                                                            aria-expanded="false">
                                                            <i class="fe fe-more-vertical"></i>
                                                        </a>
                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown8">
                                                            <span class="dropdown-header">Settings</span>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-edit dropdown-item-icon"></i>
                                                                Edit
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-trash dropdown-item-icon"></i>
                                                                Remove
                                                            </a>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- List group -->
                                        <li class="list-group-item px-0">
                                            <div class="row">
                                                <div class="col-auto">
                                                    <div class="avatar avatar-md avatar-indicators avatar-away">
                                                        <img alt="avatar" src="../../assets/images/avatar/avatar-3.jpg" class="rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="col ms-n3">
                                                    <h4 class="mb-0 h5">Eleanor Pena</h4>
                                                    <span class="me-2 fs-6">
                                                        <span class="text-dark me-1 fw-semibold">32</span>
                                                        Courses
                                                    </span>
                                                    <span class="me-2 fs-6">
                                                        <span class="text-dark me-1 fw-semibold">11,604</span>
                                                        Students
                                                    </span>
                                                    <span class="fs-6">
                                                        <span class="text-dark me-1 fw-semibold">12,230</span>
                                                        Reviews
                                                    </span>
                                                </div>
                                                <div class="col-auto">
                                                    <span class="dropdown dropstart">
                                                        <a
                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                            href="#"
                                                            role="button"
                                                            id="courseDropdown9"
                                                            data-bs-toggle="dropdown"
                                                            data-bs-offset="-20,20"
                                                            aria-expanded="false">
                                                            <i class="fe fe-more-vertical"></i>
                                                        </a>
                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown9">
                                                            <span class="dropdown-header">Settings</span>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-edit dropdown-item-icon"></i>
                                                                Edit
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-trash dropdown-item-icon"></i>
                                                                Remove
                                                            </a>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- List group -->
                                        <li class="list-group-item px-0">
                                            <div class="row">
                                                <div class="col-auto">
                                                    <div class="avatar avatar-md avatar-indicators avatar-info">
                                                        <img alt="avatar" src="../../assets/images/avatar/avatar-6.jpg" class="rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="col ms-n3">
                                                    <h4 class="mb-0 h5">March Delson</h4>
                                                    <span class="me-2 fs-6">
                                                        <span class="text-dark me-1 fw-semibold">23</span>
                                                        Courses
                                                    </span>
                                                    <span class="me-2 fs-6">
                                                        <span class="text-dark me-1 fw-semibold">6,304</span>
                                                        Students
                                                    </span>
                                                    <span class="fs-6">
                                                        <span class="text-dark me-1 fw-semibold">56,000</span>
                                                        Reviews
                                                    </span>
                                                </div>
                                                <div class="col-auto">
                                                    <span class="dropdown dropstart">
                                                        <a
                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                            href="#"
                                                            role="button"
                                                            id="courseDropdown10"
                                                            data-bs-toggle="dropdown"
                                                            data-bs-offset="-20,20"
                                                            aria-expanded="false">
                                                            <i class="fe fe-more-vertical"></i>
                                                        </a>
                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown10">
                                                            <span class="dropdown-header">Settings</span>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-edit dropdown-item-icon"></i>
                                                                Edit
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-trash dropdown-item-icon"></i>
                                                                Remove
                                                            </a>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- List group -->
                                        <li class="list-group-item px-0">
                                            <div class="row">
                                                <div class="col-auto">
                                                    <div class="avatar avatar-md avatar-indicators avatar-busy">
                                                        <img alt="avatar" src="../../assets/images/avatar/avatar-7.jpg" class="rounded-circle">
                                                    </div>
                                                </div>
                                                <div class="col ms-n3">
                                                    <h4 class="mb-0 h5">Sina Ray</h4>
                                                    <span class="me-2 fs-6">
                                                        <span class="text-dark me-1 fw-semibold">14</span>
                                                        Courses
                                                    </span>
                                                    <span class="me-2 fs-6">
                                                        <span class="text-dark me-1 fw-semibold">8,000</span>
                                                        Students
                                                    </span>
                                                    <span class="fs-6">
                                                        <span class="text-dark me-1 fw-semibold">33,000</span>
                                                        Reviews
                                                    </span>
                                                </div>
                                                <div class="col-auto">
                                                    <span class="dropdown dropstart">
                                                        <a
                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                            href="#"
                                                            role="button"
                                                            id="courseDropdown11"
                                                            data-bs-toggle="dropdown"
                                                            data-bs-offset="-20,20"
                                                            aria-expanded="false">
                                                            <i class="fe fe-more-vertical"></i>
                                                        </a>
                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown11">
                                                            <span class="dropdown-header">Settings</span>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-edit dropdown-item-icon"></i>
                                                                Edit
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-trash dropdown-item-icon"></i>
                                                                Remove
                                                            </a>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-12 col-md-12 col-12 mb-4">
                            <!-- Card -->
                            <div class="card h-100">
                                <!-- Card header -->
                                <div class="card-header d-flex align-items-center justify-content-between card-header-height">
                                    <h4 class="mb-0">Recent Courses</h4>
                                    <a href="#" class="btn btn-outline-secondary btn-sm">View all</a>
                                </div>
                                <!-- Card body -->
                                <div class="card-body">
                                    <!-- List group flush -->
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item px-0 pt-0">
                                            <div class="row">
                                                <!-- Col -->
                                                <div class="col-md-3 col-12 mb-3 mb-md-0">
                                                    <a href="#">
                                                        <img src="../../assets/images/course/course-laravel.jpg" alt="" class="img-fluid rounded">
                                                    </a>
                                                </div>
                                                <!-- Col -->
                                                <div class="col-md-8 col-10">
                                                    <a href="#">
                                                        <h5 class="text-primary-hover">Revolutionize how you build the web...</h5>
                                                    </a>
                                                    <div class="d-flex align-items-center">
                                                        <img src="../../assets/images/avatar/avatar-7.jpg" alt="" class="rounded-circle avatar-xs me-2">
                                                        <span class="fs-6">Brooklyn Simmons</span>
                                                    </div>
                                                </div>
                                                <!-- Col auto -->
                                                <div class="col-1 col-auto d-flex justify-content-center">
                                                    <span class="dropdown dropstart">
                                                        <a
                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                            href="#"
                                                            role="button"
                                                            id="courseDropdown3"
                                                            data-bs-toggle="dropdown"
                                                            data-bs-offset="-20,20"
                                                            aria-expanded="false">
                                                            <i class="fe fe-more-vertical"></i>
                                                        </a>
                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown3">
                                                            <span class="dropdown-header">Settings</span>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-edit dropdown-item-icon"></i>
                                                                Edit
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-trash dropdown-item-icon"></i>
                                                                Remove
                                                            </a>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- List group -->
                                        <li class="list-group-item px-0">
                                            <div class="row">
                                                <div class="col-md-3 col-12 mb-3 mb-md-0">
                                                    <a href="#"><img src="../../assets/images/course/course-gatsby.jpg" alt="" class="img-fluid rounded"></a>
                                                </div>
                                                <div class="col-md-8 col-10">
                                                    <a href="#">
                                                        <h5 class="text-primary-hover">Guide to Static Sites with Gatsby.js</h5>
                                                    </a>
                                                    <div class="d-flex align-items-center">
                                                        <img src="../../assets/images/avatar/avatar-8.jpg" alt="" class="rounded-circle avatar-xs me-2">
                                                        <span class="fs-6">Jenny Wilson</span>
                                                    </div>
                                                </div>
                                                <div class="col-1 col-auto d-flex justify-content-center">
                                                    <span class="dropdown dropstart">
                                                        <a
                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                            href="#"
                                                            role="button"
                                                            id="courseDropdown4"
                                                            data-bs-toggle="dropdown"
                                                            data-bs-offset="-20,20"
                                                            aria-expanded="false">
                                                            <i class="fe fe-more-vertical"></i>
                                                        </a>
                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown4">
                                                            <span class="dropdown-header">Settings</span>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-edit dropdown-item-icon"></i>
                                                                Edit
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-trash dropdown-item-icon"></i>
                                                                Remove
                                                            </a>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- List group -->
                                        <li class="list-group-item px-0">
                                            <div class="row">
                                                <div class="col-md-3 col-12 mb-3 mb-md-0">
                                                    <a href="#">
                                                        <img src="../../assets/images/course/course-javascript.jpg" alt="" class="img-fluid rounded">
                                                    </a>
                                                </div>
                                                <div class="col-md-8 col-10">
                                                    <a href="#">
                                                        <h5 class="text-primary-hover">The Modern JavaScript Courses</h5>
                                                    </a>
                                                    <div class="d-flex align-items-center">
                                                        <img src="../../assets/images/avatar/avatar-1.jpg" alt="" class="rounded-circle avatar-xs me-2">
                                                        <span class="fs-6">Guy Hawkins</span>
                                                    </div>
                                                </div>
                                                <div class="col-1 col-auto d-flex justify-content-center">
                                                    <span class="dropdown dropstart">
                                                        <a
                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                            href="#"
                                                            role="button"
                                                            id="courseDropdown5"
                                                            data-bs-toggle="dropdown"
                                                            data-bs-offset="-20,20"
                                                            aria-expanded="false">
                                                            <i class="fe fe-more-vertical"></i>
                                                        </a>
                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown5">
                                                            <span class="dropdown-header">Settings</span>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-edit dropdown-item-icon"></i>
                                                                Edit
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-trash dropdown-item-icon"></i>
                                                                Remove
                                                            </a>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- List group -->
                                        <li class="list-group-item px-0">
                                            <div class="row">
                                                <div class="col-md-3 col-12 mb-3 mb-md-0">
                                                    <a href="#">
                                                        <img src="../../assets/images/course/course-wordpress.jpg" alt="" class="img-fluid rounded">
                                                    </a>
                                                </div>
                                                <div class="col-md-8 col-10">
                                                    <a href="#">
                                                        <h5 class="text-primary-hover">Online WordPress Courses Become an Expert Today‎</h5>
                                                    </a>
                                                    <div class="d-flex align-items-center">
                                                        <img src="../../assets/images/avatar/avatar-5.jpg" alt="" class="rounded-circle avatar-xs me-2">
                                                        <span class="fs-6">Robert Fox</span>
                                                    </div>
                                                </div>
                                                <div class="col-1 col-auto d-flex justify-content-center">
                                                    <span class="dropdown dropstart">
                                                        <a
                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                            href="#"
                                                            role="button"
                                                            id="courseDropdown6"
                                                            data-bs-toggle="dropdown"
                                                            data-bs-offset="-20,20"
                                                            aria-expanded="false">
                                                            <i class="fe fe-more-vertical"></i>
                                                        </a>
                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown6">
                                                            <span class="dropdown-header">Settings</span>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-edit dropdown-item-icon"></i>
                                                                Edit
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-trash dropdown-item-icon"></i>
                                                                Remove
                                                            </a>
                                                        </span>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
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


    if (impressionsByMonthJson && impressionsByMonthJson !== "") { 
        var impressionsByMonth = JSON.parse(impressionsByMonthJson); 
        var seriesData = [];

     
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

