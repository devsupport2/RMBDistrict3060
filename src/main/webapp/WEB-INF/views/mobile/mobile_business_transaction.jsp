<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title>  Add Reference    | Rotary Means Business Fellowship  </title>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<link rel="manifest" href="<%=request.getContextPath() %>/resources/mobile/manifest.json" />


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


<!--***datetimepicker****-->
<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2018.1.221/styles/kendo.common-material.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/datetimepicker/css/kendo.material.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/datetimepicker/css/kendo.material.mobile.min.css" />
<!--<script src="https://kendo.cdn.telerik.com/2018.1.221/js/jquery.min.js"></script>-->


<script src="<%=request.getContextPath() %>/resources/front2/vendor/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
<%-- 	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script> --%>
<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>	 

<script src="<%=request.getContextPath() %>/resources/admin/js/controller/mobile_index.js"></script>


<script src="<%=request.getContextPath() %>/resources/front2/datetimepicker/js/kendo.all.min.js"></script>

	<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
<%-- 	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script> --%>
<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>	 

	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/mobile_business.js"></script>
<link href="<%=request.getContextPath() %>/resources/admin/css/toastr.min.css" rel="stylesheet">

</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay" data-page="homepage" ng-app="rcbs" ng-controller="MobilebusinessReceievdCtrl">

        
<!-- screen loader -->
<div class="container-fluid h-100 loader-display">
<div class="row h-100">
<div class="align-self-center col">
<div class="logo-loading">
<div class="icon icon-100 mb-4 rounded-circle">
<img src="img/favicon144.png" alt="" class="w-100">
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
<div class="main-menu">
<div class="row mb-4 no-gutters">
<div class="col-auto"><button class="btn btn-link btn-40 btn-close text-white"><span class="material-icons">chevron_left</span></button></div>

<div class="col-auto">
<div class="avatar avatar-40 rounded-circle position-relative">
<figure class="background">
<img src="img/user3.png" alt="">
</figure>
</div>
</div>

<div class="col pl-3 text-left align-self-center">
<h6 class="mb-1"> Ashwin Bhandari </h6>
<p class="small  text-default-secondary"> chairman@rmbfmadurai.com </p>
</div>
</div>

<div class="menu-container">

<ul class="nav nav-pills flex-column ">

<li class="nav-item">
<a class="nav-link" href="home.html">
<div>
<span class="material-icons icon"> account_balance </span>
Home
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


<li class="nav-item">
<a class="nav-link active" href="members.html">
<div>
<span class="material-icons icon">insert_chart</span>
Members
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


<li class="nav-item">
<a class="nav-link" href="#">
<div>
<span class="material-icons icon">perm_contact_calendar</span>
R2R Meetings
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


<li class="nav-item">
<a class="nav-link" href="#">
<div>
<span class="material-icons icon">card_giftcard</span>
References
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


<li class="nav-item">
<a class="nav-link" href="#">
<div>
<span class="material-icons icon">shopping_bag</span>
Business
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


<li class="nav-item">
<a class="nav-link" href="#">
<div>
<span class="material-icons icon">settings</span>
Events
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>



<li class="nav-item">
<a class="nav-link" href="#">
<div>
<span class="material-icons icon">layers</span>
Fellowship
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="#">
<div>
<span class="material-icons icon">widgets</span>
Gallery
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>

</ul>

<div class="text-center">
<a href="login.html" class="btn btn-outline-primary text-white rounded my-3 mx-auto">Sign out</a>
</div>

</div>
</div>




<!-- Members Directory page content -->
<main id="members-directory" class="flex-shrink-0 main">

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
<h5 class="mb-0"> Business Transactions </h5>
</a>
</div>


<div class="ml-auto col-auto pl-0">

<a style="color: #8aadf3;" href="home.html" class=" btn btn-40 btn-link" >
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



<div class="container-fluid">
    <div class="row">

<div class="alert alert-danger d-none">
<b>Ooops!</b> There is some error in data you have entered. Please enter correct details.
</div>

<div class="card col-12">
<div class="card-body mt-10">

<div class="form-group float-label active">
<div class="row">
<div class="col-12">

<select class="form-control" name="tomemberid" id="tomemberid" ng-model="tomemberid" ng-change="setflag3()">
			<option value="">Select</option>
			<option ng-repeat="item in getmember" value="{{item.memberId}}" ng-hide="item.memberId == <%= session.getAttribute("loginid") %>">{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</option>
		</select>	
</div>

</div>
<label class="form-control-label font-14" ng-show="<%= request.getParameter("given") %> == 1"> Given To  <span class="text-danger">*</span> </label>
<label class="form-control-label font-14" ng-show="<%= request.getParameter("given") %> == 2"> Thank you to  <span class="text-danger">*</span> </label>
<p class="redText errorMsg" ng-show="tomemberidError == 1">{{tomemberidMsg}}</p>
</div>




<div class="form-group float-label active">
<input type="text" class="form-control"  id="amount" ng-model="amount"  ng-change="setflag3()">
<label class="form-control-label font-14">  Amount (in INR) <span class="text-danger">*</span> </label>
<p class="redText errorMsg" ng-show="amountError == 1">{{amountMsg}}</p>
</div>



<div  id="example" class="form-group float-label active">
<div class="mt-10">
<input id="slipdate1" ng-model="slipdate1" title="fromdatetimepicker" style="width: 100%;" />
<label class="form-control-label font-14 "> Date  <span class="text-danger">*</span>  </label>
<!-- <p class="form-text text-secondary text-right">Visa Debit card</p> -->
</div>
</div>





<div class="row">
<div class=" col-12 mb-2">

<div class="card-header border-bottom">
<h6 style="color: #343a40 !important;" class="subtitle text-dark mb-0"> Referral Type  <span class="text-danger">*</span>  </h6>
</div>

<div class="card-body pt-0 px-0">
<ul class="list-group list-group-flush">
<li class="list-group-item">
<div class="custom-control custom-switch">
<input type="radio" name="referraltype" class="custom-control-input" id="customSwitch1" ng-model="referraltype" value="Inside">
<label class="custom-control-label" for="customSwitch1">  Inside </label>
</div>
</li>

<li class="list-group-item">
<div class="custom-control custom-switch">
<input type="radio" name="referraltype" class="custom-control-input" id="customSwitch2" ng-model="referraltype" value="Outside">
<label class="custom-control-label" for="customSwitch2">  Outside </label>
</div>
</li>


<li class="list-group-item">
    <div class="custom-control custom-switch">
     <input type="radio" name="referraltype" class="custom-control-input" id="customSwitch3" ng-model="referraltype" value="Tier 3+">
    <label class="custom-control-label" for="customSwitch3"> Tier 3+ </label>
    </div>
    </li>

</ul>
</div>
</div>
</div>
    




<div class="row">
    <div class=" col-12 mb-4">
    
    <div class="card-header border-bottom">
    <h6 style="color: #343a40 !important;" class="subtitle text-dark mb-0"> Business Type  <span class="text-danger">*</span>  </h6>
    </div>
    
    
    
    <div class="card-body pt-0 px-0">
    <ul class="list-group list-group-flush">
    <li class="list-group-item">
    <div class="custom-control custom-switch">
    <!-- <input type="radio"  name="optradio" ng-model="businesstype" value="New" > -->
    <input type="radio" name="security" class="custom-control-input" id="customSwitch11" ng-model="businesstype" value="New">
    <label class="custom-control-label" for="customSwitch11">  Given your card  </label>
    </div>
    </li>
    
    <li class="list-group-item">
    <div class="custom-control custom-switch">
    <!-- <input type="radio"  name="optradio" ng-model="businesstype" value="New" > -->
    <input type="radio" name="security" class="custom-control-input" ng-model="businesstype" id="customSwitch12" value="Repeat">
    <label class="custom-control-label" for="customSwitch12">  Told them you would call </label>
    </div>
    </li>
    
    </ul>
    </div>
    </div>
    </div>
        
    

<div class="form-group float-label active">
<input type="text" class="form-control" name="comment" id="comment" ng-model="comment">
<label class="form-control-label font-14">  Comments <span class="text-danger">*</span> </label>
</div>





</div>
<div class="card-footer">
<button  ng-click="saveThankYouSlip1(flag='save')" class="btn btn-block btn-default rounded"> Add  <i class="fa fa-refresh fa-spin" ng-show="spin == 1"></i></button>
</div>
</div>
</div>

</div>

<!-- Blank Space -->
<div class="container-fluid">
<div class="row">
<div class="col-12">
<div style="height: 20vh;"></div>
</div>
</div>
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
<a href="records.html" class="active">
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



  
  


<!-- Required jquery and libraries -->
<%-- <script src="<%=request.getContextPath() %>/resources/mobile/js/jquery-3.3.1.min.js"></script> --%>
<script src="<%=request.getContextPath() %>/resources/mobile/js/popper.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/mobile/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- cookie js -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/jquery.cookie.js"></script>

<!-- Swiper slider  js-->
<script src="<%=request.getContextPath() %>/resources/mobile/vendor/swiper/js/swiper.min.js"></script>

<!-- <script src="js/owl.carousel.min.js"></script> -->

<!-- Page level custom scripts this js for Date and time id's function -->
<script src="<%=request.getContextPath() %>/resources/front2/js/kendo-function.js"></script>   

<!-- Customized jquery file  -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/main.js"></script>
<script src="<%=request.getContextPath() %>/resources/mobile/js/color-scheme-demo.js"></script>

<!-- PWA app service registration and works -->
<%-- <script src="<%=request.getContextPath() %>/resources/mobile/js/pwa-services.js"></script>
 --%>
<!-- page level custom script -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/app.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/toastr.min.js"></script>

<!-- Custom scripts for all pages-->
<!--<script src="js/sb-admin-2.min.js"></script>-->




</body>

</html>
