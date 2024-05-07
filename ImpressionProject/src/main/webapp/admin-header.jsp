   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.models.User" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
  <nav class="navbar-default navbar navbar-expand-lg">
                    <a id="nav-toggle" href="#">
                        <i class="fe fe-menu"></i>
                    </a>
                    <div class="ms-lg-3 d-none d-md-none d-lg-block">
                        <!-- Form -->
                      
                    </div>
                    <!--Navbar nav -->
                    <div class="ms-auto d-flex">
                        <div class="dropdown">
                            <button class="btn btn-light btn-icon rounded-circle d-flex align-items-center"
                                type="button" aria-expanded="false" data-bs-toggle="dropdown"
                                aria-label="Toggle theme (auto)">
                                <i class="bi theme-icon-active"></i>
                                <span class="visually-hidden bs-theme-text">Toggle theme</span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bs-theme-text">
                                <li>
                                    <button type="button" class="dropdown-item d-flex align-items-center"
                                        data-bs-theme-value="light" aria-pressed="false">
                                        <i class="bi theme-icon bi-sun-fill"></i>
                                        <span class="ms-2">Light</span>
                                    </button>
                                </li>
                                <li>
                                    <button type="button" class="dropdown-item d-flex align-items-center"
                                        data-bs-theme-value="dark" aria-pressed="false">
                                        <i class="bi theme-icon bi-moon-stars-fill"></i>
                                        <span class="ms-2">Dark</span>
                                    </button>
                                </li>
                                <li>
                                    <button type="button" class="dropdown-item d-flex align-items-center active"
                                        data-bs-theme-value="auto" aria-pressed="true">
                                        <i class="bi theme-icon bi-circle-half"></i>
                                        <span class="ms-2">Auto</span>
                                    </button>
                                </li>
                            </ul>
                        </div>
                        <ul class="navbar-nav navbar-right-wrap ms-2 d-flex nav-top-wrap">
                           
                            	<%
					  
								    User user = (User) session.getAttribute("user");
								%>
								
							
                            <!-- List -->
                             <li class="dropdown ms-2 d-inline-block position-static">
					        <a class="rounded-circle" href="#" data-bs-toggle="dropdown" data-bs-display="static" aria-expanded="false">
					            <div class="avatar avatar-md avatar-indicators avatar-online">
					                <img alt="avatar" src="${pageContext.request.contextPath}/assets/images/avatar/avatar-5.jpg" class="rounded-circle" />
					            </div>
					        </a>
					        <div class="dropdown-menu dropdown-menu-end position-absolute mx-3 my-5">
					            <div class="dropdown-item">
					                <div class="d-flex">
					                    <div class="avatar avatar-md avatar-indicators avatar-online">
					                        <img alt="avatar" src="${pageContext.request.contextPath}/assets/images/avatar/avatar-5.jpg" class="rounded-circle" />
					                    </div>
					                    <div class="ms-3 lh-1">
					                        <h5 class="mb-1"><%= user.getUsername() %></h5>
                        					<p class="mb-0"><%= user.getEmail() %></p>
					                    </div>
					                </div>
					            </div>
					            <div class="dropdown-divider"></div>
					            <ul class="list-unstyled">
					               
					                <li>
					                    <a class="dropdown-item" href="HomeServlet">
					                        <i class="fe fe-home me-2"></i>
					                        Home
					                    </a>
					                </li>
					               
					              
					            </ul>
					            <div class="dropdown-divider"></div>
					            <ul class="list-unstyled">
					                <li>
					                    <a class="dropdown-item" href="LogoutServlet">
					                        <i class="fe fe-power me-2"></i>
					                        Sign Out
					                    </a>
					                </li>
					            </ul>
					        </div>
					    </li>
					
                        </ul>
                    </div>
                </nav>
         