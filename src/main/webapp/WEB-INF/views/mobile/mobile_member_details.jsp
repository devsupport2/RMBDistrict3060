<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title> Profile </title>

<!-- manifest meta -->
<meta name="apple-mobile-web-app-capable" content="yes">

<!-- Favicons -->
<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/favicon-16x16.png">
<link rel="manifest" href="img/favicon/site.webmanifest">
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

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath() %>/resources/mobile/css/style.css" rel="stylesheet" id="style">
	<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>
	<%-- <script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script> --%>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/mobile_index.js"></script>

</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay" data-page="profile" ng-app="rcbs" ng-controller="MobileIndexCtrl" ng-cloak ng-init="getMemberDetailByIdProfile(<%= request.getParameter("id")%>)">


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



<!-- menu main -->

<%@include file="header_bk.jsp" %>

<div class="backdrop"></div>


<!-- Begin page content -->
<main class="flex-shrink-0 main has-footer">


<!-- Fixed navbar -->
<header class="header hinner">
<div class="row">
<div class="col-auto px-0">
<button class="btn btn-40 btn-link back-btn" type="button">
<span class="material-icons">keyboard_arrow_left</span>
</button>
</div>
<div class="text-left col align-self-center">
<a class="navbar-brand" href="#">
<h5 class="mb-0">  Profile </h5>
</a>
</div>


<div class="ml-auto col-auto pl-0">

<a style="color: #8aadf3;" href="<%=request.getContextPath() %>/" class=" btn btn-40 btn-link" >
<span class="material-icons">  home  </span>
</a>

<!-- <button type="button" class="btn btn-link btn-40 colorsettings">
<i  class="fa fa-search"></i>
</button>  -->

<!-- <a href="#" class="avatar avatar-30 shadow-sm rounded-circle ml-2">
<figure class="m-0 background">
<img src="img/user1.png" alt="">
</figure>
</a> -->
</div>
    

</div>
</header>




<!-- page content start -->

<div class="container-fluid  text-center mb-4">
<div class="avatar avatar-140 rounded-circle mx-auto shadow " style="background:url('{{getmemberdetail.memberProfilePicture}}'); background-size:cover;">

<%-- <img src="<%=request.getContextPath() %>/resources/mobile/img/bb.jpg" alt="">
 <img src="{{getmemberdetail.memberProfilePicture}}"  style="height: 100px"/> --%>

<%--<img src="{{getmemberdetail.memberProfilePicture}}" style="height: 100px" style="  height:auto;width:42vh" alt="">
<img ng-if="!getmemberdetail.memberProfilePicture" src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png' style="  height:auto;width:42vh">--%>						

</div>



</div>

<!-- 
 -->
<div class="container mb-4 text-center text-white">
<h6 class="mb-1">  Rtn. {{firstname}} {{firstname}} </h6>
<p class="mb-1">  {{getmemberdetail.memberEmail}} </p>
<p> {{getmemberdetail.memberMobileNumber}}  </p>
</div>

<div class="profile-container">
<div class="container ">




<div class="row mb-4">
<div class="col-12 col-md-6">
<div class="card">
<!-- <h6 class="card-title">BUSINESS INFORMATION</h6> -->
<h6 class="card-title"><small>comapny name:{{getmemberdetail.memberCompanyName}} <br>business category name:{{getmemberdetail.businessCategoryName}}<br>Designation:{{getmemberdetail.memberDesignation}}<br>Business Nature:{{getmemberdetail.memberBusinessNature}}</small></h6>
<p style="    line-height: 26px;font-size: 15px;" class="text-secondary text-justify "> About your business:{{getmemberdetail.memberCompanyDescription}} </p>
<div class="card-body">
<div class="row">
<div class="col">
<!-- <p style="    line-height: 26px;
font-size: 15px;" class="text-secondary text-justify "> Website Development, Web applications, Mobile Applications, Customized Software Development, CRM, ERP, Business Management System, Appointment Manager, Hospital Management System, Clinic Management System, Cloud Infrastructure, Consulting Partner for Amazon AWS, SEO, Social Media, Domain Registration, Hosting, SSL certificates, eCommerce, Payment Gateway Integration </p>
 -->
 

 
</div>
</div>
</div>
</div>
</div>
</div>



<!-- <div class="row ">
<div class="col-12 col-md-6">
<div class="card">
<div class="card-body">
<div class="row">
<div class="col">
<p style="    line-height: 26px;
font-size: 15px;" class="text-secondary text-justify"> Ultra InfoTech has been a premier ICT solution provider to its clients globally. It offers unique solutions to build, integrate and manage ICT needs of customers from all walks of life. It can be a club looking to manage it’s business or it can be an international fame professional looking to publicise its professional service to global market - Ultra InfoTech serves all of them with the highest level of efficiency at utmost reasonable price. </p>
</div>
</div>
</div>
</div>
</div>
</div>
 -->
<button class="btn btn-primary btn-lg sendmessage" ng-click="getMemberDetailById(item.memberId)" style="width: -webkit-fill-available;">send massege</button>

</div>


</div>
</main>


<!-- footer-->
<div class="footer">
<div class="row no-gutters justify-content-center">

<!-- <div class="col-auto">
<a href="index.html" class="active">
<i class="material-icons"> home </i>
<p>Home</p>
</a>
</div> -->

<div class="col-auto">
<a href="members.html" class="">
<i class="fa fa-users"></i>
<p> Members </p>
</a>
</div>

<div class="col-auto">
<a href="#" class="">
<i class="fa fa-file-text"></i>
<p> Records </p>
</a>
</div>

<div class="col-auto">
<a href="#" class="">
<i class="fa fa-calendar" aria-hidden="true"></i>
<p> Events </p>
</a>
</div>

<!-- <div class="col-auto">
<a href="#" class="">
<i class="material-icons">account_circle</i>
<p> Fellowship </p>
</a>
</div> -->

<div class="col-auto">
<a href="#" class="">
<i class="fa fa-picture-o" aria-hidden="true"></i>
<p> Gallery </p>
</a>
</div>

</div>
</div>




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

<!-- Send message to switcher -->
		<div class="send-msg" id="sendmsg" >
		<form ng-submit="sendMessage(memberid)">
		<div class="row">
		<div class="col text-left">
		<h6>  Send message to {{firstname}} {{lastname}}   </h6>
		</div>
		
		<div class="col-auto">
		<button class="btn btn-link text-secondary btn-round sendmessage2">
		<span class="material-icons">close</span></button>
		</div>
		
		</div>
		
		<hr class="mt-2 mb-15">
		
		<!-- page content start -->
		
		<div class="main-container">
		<div class="container-fluid">
		<div class="row">
		
		<div class="col pl-5 pr-5">
		
		<div class="form-group float-label">
		<input type="text" class="form-control" id="userfirstname"   ng-model="userfirstname" ng-change="setFlag()">
		<label class="form-control-label"> First Name* </label>
			<p ng-show="errorFirstName == 1" style="color: red; font-size: 14px;">{{msgFirstName}}</p>
		</div>
		
		<div class="form-group float-label">
		<input type="text" class="form-control" ng-model="userlastname"  ng-change="setFlag()">
		<label class="form-control-label"> Last Name </label>
		<p ng-show="errorLastName == 1" style="color: red; font-size: 14px;">{{msgLastName}}</p>
		</div>
		
		<div class="form-group float-label">
	<input type="text" class="form-control" id="useremail" ng-model="useremail"  ng-change="setFlag()">
	<label class="form-control-label"> Email </label>  
	<p ng-show="errorEmail == 1" style="color: red; font-size: 14px;">{{msgEmail}}</p>
		                          
		</div>
		
		
		<div class="form-group float-label">
		<input type="text" class="form-control" id="usermobileno" ng-model="usermobileno" ng-change="setFlag()">
		<label class="form-control-label"> Mobile  Number</label>  
		<p ng-show="errorMobileNo == 1" style="color: red; font-size: 14px;">{{msgMobileNo}}</p>
		
		                          
		</div>
		
		
		
		<div class="form-group float-label">
		<input type="text" class="form-control" id="usermessage" ng-model="usermessage"  ng-change="setFlag()" autofocus>
		  

		<label class="form-control-label"> Message </label> 
		<p ng-show="errorMessage == 1" style="color: red; font-size: 14px;">{{msgMessage}}</p>                         
		</div>
		
		<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<p ng-show="submitSuccess == 1" style="color: green; font-size: 18px;"><b>{{msgSuccess}}</b></p>
									<p ng-show="submitError == 1" style="color: red; font-size: 18px;"><b>{{msgError}}</b></p>
									</div>
							</div>							
				</div>
		
	
			<button class="btn btn-block btn-default rounded"> Send </button>

	
		</div>
		
		</div>
		</div>
		</div>
		</form>
		</div>


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


<!-- page level custom script -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/app.js"></script>

</body>

</html>
