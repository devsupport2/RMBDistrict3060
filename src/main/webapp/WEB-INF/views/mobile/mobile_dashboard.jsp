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
<title>  Rotary Means Business Fellowship  </title>

<!-- manifest meta -->
<meta name="apple-mobile-web-app-capable" content="yes">
<link rel="manifest" href="manifest.json" />

<!-- Favicons -->
<!-- <link rel="apple-touch-icon" href="img/favicon180.png" sizes="180x180">
<link rel="icon" href="img/favicon32.png" sizes="32x32" type="image/png">
<link rel="icon" href="img/favicon16.png" sizes="16x16" type="image/png"> -->

<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/favicon-16x16.png">
<link rel="manifest" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/site.webmanifest">
<meta name="msapplication-TileColor" content="#023497">
<meta name="theme-color" content="#023497">


<!-- Material icons-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- Font Awesome -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/mobile/font-awesome-4.7.0/css/font-awesome.min.css">    

<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">

<!-- swiper CSS -->
<link href="<%=request.getContextPath() %>/resources/mobile/vendor/swiper/css/swiper.min.css" rel="stylesheet">

<!-- <link rel="stylesheet" href="css/owl.carousel.min.css"> -->

<!-- Custom styles  -->
<link href="<%=request.getContextPath() %>/resources/mobile/css/style.css" rel="stylesheet" id="style">

	<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>
	<%-- <script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script> --%>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/mobile_index.js"></script>


</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay" data-page="homepage"  ng-app="rcbs" ng-controller="MobileIndexCtrl" ng-init=" getTopMemberMeeting() || getTopMemberBusiness() || getTopReferal() ||  getThirdSummary() || getMemberDetailById(<%= session.getAttribute("loginid") %>) || getFirstGiven(<%= session.getAttribute("loginid") %>) || getSecondGiven(<%= session.getAttribute("loginid") %>) ">

			        
			<!-- screen loader -->
			<div class="container-fluid h-100 loader-display">
			<div class="row h-100">
			<div class="align-self-center col">
			<div class="logo-loading">
					<div class="icon icon-100 mb-4 rounded-circle">
					<img src="<%=request.getContextPath() %>/resources/mobile/img/favicon144.png" alt="" class="w-100">
					</div>
					<h4 class="text-default"> RMB </h4>
					<p class="text-secondary"> District 3060  </p>
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
    
<%@include file="header_bk.jsp" %>

<div class="backdrop"></div>



<!-- Begin page content -->
<main class="flex-shrink-0 main has-footer">

<!-- Fixed navbar -->
<header class="header hinner">
<div class="row">

<div class="col-auto px-0">
<button class="menu-btn btn btn-40 btn-link" type="button">
<span class="material-icons">menu</span>
</button>
</div>
<!-- ------------------------ ------------------------- ------------------------- ------------------------- ------------------------- -->
		<div class="text-left col align-self-center">
		<a class="navbar-brand" href="home.html">
		<h5 class="mb-0"> RMB <small>District</small></h5>
		</a>
		</div>
<!-- ------------------------ ------------------------- ------------------------- ------------------------- ------------------------- -->
<!-- <div class="ml-auto col-auto pl-0">
<a href="#" class=" btn btn-40 btn-link" >
<span class="material-icons">notifications_none</span>
<span class="counter"></span>
</a>
 -->


</div>

</div>
</header>








<!-- 6. Given Summary --> 
<div class="container mt-4">

<div class="row mb-2">
<div class="col">
<h5 style="    letter-spacing: 1px;"  class="subtitle text-uppercase"> Given </h5>

</div>
</div>


<div class="row">


<div class="card col-12 mb-2">
<div class="card-body">
<div class="row">
<div class="col">
<a href="<%=request.getContextPath() %>/member_meeting_list" style="color:white">
<h4 style="color: #021B79;" class="mb-1 font-weight-bold">  {{getFirstGivendata.given_meetingcount}} </h4>
<p style="letter-spacing: 0.5px;" class="text-secondary"><strong> R2R Meetings </strong></p> </a>
</div>
<div class="col-auto pl-0 pt-2">
<button class="btn btn-40 bg-default-light text-default rounded-circle bg1" >
<a href="<%=request.getContextPath() %>/member_meeting_list" style="color:white"><i class="fa fa-handshake-o"></i> </a>

</button>
</div>
</div>
</div>
</div>





<div class="card col-12 mb-2">
<div class="card-body">
<div class="row">
<div class="col">
<a href="<%=request.getContextPath() %>/mobile_refferal_list" >
<h4 style="color: #021B79;" class="mb-1 font-weight-bold"> {{getFirstGivendata.refferencecount}} </h4>
<p style="letter-spacing: 0.5px;" class="text-secondary"><strong> References </strong></p> </a>
</div>
<div class="col-auto pl-0  pt-2">
<button class="btn btn-40 bg-default-light text-default rounded-circle bg2">
<a href="<%=request.getContextPath() %>/mobile_refferal_list" style="color:white"><i class="fa fa-exchange fa-1x"></i> </a>
</button>
</div>
</div>
</div>
</div>






<div class="card col-12 mb-2">
<div class="card-body">
<div class="row">
<div class="col">
<a href="<%=request.getContextPath() %>/mobile_business" >
<h4 style="color: #021B79;" class="mb-1 font-weight-bold"> ₹ {{getFirstGivendata.Businessgiven}} </h4>
<p style="letter-spacing: 0.5px;" class="text-secondary"><strong> Business </strong></p></a>
</div>
<div class="col-auto pl-0 pt-2">
<button class="btn btn-40 bg-default-light text-default rounded-circle bg3">
<a href="<%=request.getContextPath() %>/mobile_business" style="color:white"><i class="fa fa-briefcase fa-1x"></i> </a>
</button>
</div>
</div>
</div>
</div>



</div>

</div>

 
 
 
<div class="container mt-4">

<div class="row mb-2">
<div class="col">
<h5 style="    letter-spacing: 1px;"  class="subtitle text-uppercase"> Received </h5>

</div>
</div>


<div class="row">


<div class="card col-12 mb-2">
<div class="card-body">
<div class="row">
<div class="col">
<a href="<%=request.getContextPath() %>/member_meeting_list" style="color:white">
<h4 style="color: #021B79;" class="mb-1 font-weight-bold">  {{getSecondGivendata.given_meetingcount}} </h4>
<p style="letter-spacing: 0.5px;" class="text-secondary"><strong> R2R Meetings </strong></p></a>
</div>
<div class="col-auto pl-0 pt-2">
<button class="btn btn-40 bg-default-light text-default rounded-circle bg1">
<a href="<%=request.getContextPath() %>/member_meeting_list" style="color:white"><i class="fa fa-handshake-o"></i> </a>
</button>
</div>
</div>
</div>
</div>





<div class="card col-12 mb-2">
<div class="card-body">
<div class="row">
<div class="col">
<a href="<%=request.getContextPath() %>/mobile_refferal_list" >
<h4 style="color: #021B79;" class="mb-1 font-weight-bold">  {{getSecondGivendata.refferencecount}}  </h4>
<p style="letter-spacing: 0.5px;" class="text-secondary"><strong> References </strong></p> </a>
</div>
<div class="col-auto pl-0  pt-2">
<button class="btn btn-40 bg-default-light text-default rounded-circle bg2">
<a href="<%=request.getContextPath() %>/mobile_refferal_list" style="color:white"><i class="fa fa-exchange fa-1x"></i> </a>
</button>
</div>
</div>
</div>
</div>






<div class="card col-12 mb-2">
<div class="card-body">
<div class="row">
<div class="col">
<a href="<%=request.getContextPath() %>/mobile_business" style="color:white">
<h4 style="color: #021B79;" class="mb-1 font-weight-bold"> ₹ {{getSecondGivendata.Businessgiven}}  </h4>
<p style="letter-spacing: 0.5px;" class="text-secondary"><strong> Business </strong></p> </a>
</div>
<div class="col-auto pl-0 pt-2">
<button class="btn btn-40 bg-default-light text-default rounded-circle bg3">
<a href="<%=request.getContextPath() %>/mobile_business" style="color:white"><i class="fa fa-briefcase fa-1x"></i> </a>
</button>
</div>
</div>
</div>
</div>



</div>

</div>

<!-- 6. Chapter Summary --> 


</main>


<%@include file="fotter_bk.jsp" %>



<!-- color settings style switcher -->
<div class="color-picker">
<div class="row">
<div class="col text-left">
<div class="selectoption">
<input type="checkbox" id="darklayout" name="darkmode">
<label for="darklayout">Dark</label>
</div>
<div class="selectoption mb-0">
<input type="checkbox" id="rtllayout" name="layoutrtl">
<label for="rtllayout">RTL</label>
</div>
</div>
<div class="col-auto">
<button class="btn btn-link text-secondary btn-round colorsettings2"><span class="material-icons">close</span></button>
</div>
</div>

<hr class="mt-2">
<div class="colorselect">
<input type="radio" id="templatecolor1" name="sidebarcolorselect">
<label for="templatecolor1" class="bg-dark-blue" data-title="dark-blue"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor2" name="sidebarcolorselect">
<label for="templatecolor2" class="bg-dark-purple" data-title="dark-purple"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor4" name="sidebarcolorselect">
<label for="templatecolor4" class="bg-dark-gray" data-title="dark-gray"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor6" name="sidebarcolorselect">
<label for="templatecolor6" class="bg-dark-brown" data-title="dark-brown"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor3" name="sidebarcolorselect">
<label for="templatecolor3" class="bg-maroon" data-title="maroon"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor5" name="sidebarcolorselect">
<label for="templatecolor5" class="bg-dark-pink" data-title="dark-pink"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor8" name="sidebarcolorselect">
<label for="templatecolor8" class="bg-red" data-title="red"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor13" name="sidebarcolorselect">
<label for="templatecolor13" class="bg-amber" data-title="amber"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor7" name="sidebarcolorselect">
<label for="templatecolor7" class="bg-dark-green" data-title="dark-green"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor11" name="sidebarcolorselect">
<label for="templatecolor11" class="bg-teal" data-title="teal"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor12" name="sidebarcolorselect">
<label for="templatecolor12" class="bg-skyblue" data-title="skyblue"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor10" name="sidebarcolorselect">
<label for="templatecolor10" class="bg-blue" data-title="blue"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor9" name="sidebarcolorselect">
<label for="templatecolor9" class="bg-purple" data-title="purple"></label>
</div>
<div class="colorselect">
<input type="radio" id="templatecolor14" name="sidebarcolorselect">
<label for="templatecolor14" class="bg-gray" data-title="gray"></label>
</div>
</div>


<!-- Required jquery and libraries -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/jquery-3.3.1.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/mobile/js/popper.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/mobile/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- cookie js -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/jquery.cookie.js"></script>

<!-- Swiper slider  js-->
<script src="<%=request.getContextPath() %>/resources/mobile/vendor/swiper/js/swiper.min.js"></script>

<!-- <script src="js/owl.carousel.min.js"></script> -->

<!-- Customized jquery file  -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/main.js"></script>
<script src="<%=request.getContextPath() %>/resources/mobile/js/color-scheme-demo.js"></script>

<!-- PWA app service registration and works -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/pwa-services.js"></script>

<!-- page level custom script -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/app.js"></script>

<!-- Page level custom scripts this js for Date and time id's function -->
<%-- <script src="<%=request.getContextPath() %>/resources/front2/js/kendo-function.js"></script>   
 --%>

</body>

</html>
