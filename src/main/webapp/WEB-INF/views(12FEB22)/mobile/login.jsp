<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en" class="h-100">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">

<title> Login |  Rotary Means Business Fellowship  </title>

<!-- manifest meta -->
<meta name="apple-mobile-web-app-capable" content="yes">

<!-- Favicons -->
<!-- <link rel="apple-touch-icon" href="img/favicon180.png" sizes="180x180">
<link rel="icon" href="img/favicon32.png" sizes="32x32" type="image/png">
<link rel="icon" href="img/favicon16.png" sizes="16x16" type="image/png"> -->

<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/favicon-16x16.png">
<link rel="manifest" href="img/favicon/site.webmanifest">
<meta name="msapplication-TileColor" content="#023497">
<meta name="theme-color" content="#023497">

<!-- Material icons-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">    

<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">

<!-- swiper CSS -->
<link href="<%=request.getContextPath() %>/resources/mobile/vendor/swiper/css/swiper.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath() %>/resources/mobile/css/style.css" rel="stylesheet" id="style">
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%= request.getContextPath() %>/resources/front1/mobile/mdl/material.js"></script>		
<%-- <%if(session.getAttribute("sitepreference").toString().equalsIgnoreCase("MOBILE")){ %> --%>
			
	<%-- 	<%}else{ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<%}%> --%>	
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>	
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		 <link href="<%=request.getContextPath() %>/resources/admin/css/toastr.min.css" rel="stylesheet">
</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay"  ng-app="rcbs" ng-controller="sidebarCtrl">

<!-- screen loader -->
<div class="container-fluid h-100 loader-display">
<div class="row h-100">
<div class="align-self-center col">
<div class="logo-loading">
<div class="icon icon-100 mb-4 rounded-circle">
<img src="<%=request.getContextPath() %>/resources/mobile/img/favicon144.png" alt="" class="w-100">
</div>
<h4 class="text-default"> RMBF </h4>
<p class="text-secondary"> Rotary Means Business Fellowship  </p>
<div class="loader-ellipsis">
<div></div>
<div></div>
<div></div>
<div></div>
</div>
</div>
</div>
</div>
</div>




    <!-- Begin page content -->
    <main class="flex-shrink-0 main has-footer">
        <!-- Fixed navbar -->
        <header class="header hlogin">
            <div class="row">
                <div class="col-auto px-0">
                    <button class="btn btn-40 btn-link back-btn" type="button">
                       <!--  <span class="material-icons">keyboard_arrow_left</span> -->
                    </button>
                </div>
                <div class="text-left col align-self-center">
                   
                </div>
                <!-- <div class="ml-auto col-auto align-self-center">
                    <a href="signup.html" class="text-white">
                        Sign up
                    </a>
                </div> -->
            </div>
        </header>
        
        <form   >
                           
        
        <div class="container h-100 text-white">

<div class="row mb-5">
<div class="col-12 text-center">
<img style="width: 50%;" src="<%=request.getContextPath() %>/resources/mobile/img/Logo-RMB-fellowship.png"/>
</div>
</div>

            <div class="row">
                <div class="col-12 align-self-center mb-5">
                    <div class="row justify-content-center">
                        <div class="col-11 col-sm-7 col-md-6 col-lg-5 col-xl-4">

                           <h4 class="font-weight-normal mb-4">Login into your account</h4>  

                            <div class="form-group float-label ">
                                <input type="text" class="form-control text-white" ng-model="username" ng-change="setflag()">
                                <label class="form-control-label text-white"> Username/Email </label>
                           		 <p class="redText errorMsg" ng-show="usernameError == 1">{{usernameMsg}}</p>
                            </div>

                            <div class="form-group float-label position-relative">
                                <input type="password" class="form-control text-white " ng-model="password" ng-change="setflag()">
                                <label class="form-control-label text-white">Password</label>
                           		 <p class="redText errorMsg" ng-show="passwordError == 1">{{passwordMsg}}</p>
                            </div>  
                            <p class="text-left">
	                        	<input type="checkbox" ng-model="loggedin" id="customCheck">
								<label for="customCheck"> Remember Me </label>
							</p>
                            <p class="text-right"><a href="<%=request.getContextPath() %>/forget_password" class="text-white">Forgot Password?</a></p>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </main>

    <!-- footer-->
    <div class="footer no-bg-shadow py-3">
        <div class="row justify-content-center">
            <div class="col">
                <a href="#" class="btn btn-default rounded btn-block" ng-click="checkFrontLogin()">Login</a>
            </div>
        </div>
    </div>

</form>
    <!-- Required jquery and libraries -->
    <script src="<%=request.getContextPath() %>/resources/mobile/js/jquery-3.3.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/mobile/js/popper.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/mobile/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- cookie js -->
    <script src="<%=request.getContextPath() %>/resources/mobile/js/jquery.cookie.js"></script>

    <!-- Swiper slider  js-->
    <script src="<%=request.getContextPath() %>/resources/mobile/vendor/swiper/js/swiper.min.js"></script>

    <!-- Customized jquery file  -->
    <script src="<%=request.getContextPath() %>/resources/mobile/js/main.js"></script>
    <script src="<%=request.getContextPath() %>/resources/mobile/js/color-scheme-demo.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/toastr.min.js"></script>

    <!-- page level custom script -->
    <script src="<%=request.getContextPath() %>/resources/mobile/js/app.js"></script>
    
</body>

</html>
