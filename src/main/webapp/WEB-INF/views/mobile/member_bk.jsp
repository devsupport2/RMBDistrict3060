<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title>  Members | Rotary Means Business Fellowship  </title>

<!-- manifest meta -->
<meta name="apple-mobile-web-app-capable" content="yes">
<link rel="manifest" href="<%=request.getContextPath() %>/resources/mobile/manifest.json" />

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
<%-- 	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script> --%>
<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>	 

<script src="<%=request.getContextPath() %>/resources/admin/js/controller/mobile_index.js"></script>

</head>

<body ng-app="rcbs" ng-controller="MobileIndexCtrl" class="body-scroll d-flex flex-column h-100 menu-overlay" data-page="homepage" >

        
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
<h5 class="mb-0">  Members Directory </h5>
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




<div class="container" style=" margin-bottom: 50px;">
<div class="row">

<input type="text" class="form-control form-control-lg search my-3" ng-model="search" placeholder="Search">




<div class="card col-12 shadow-sm border-0 mb-3"   ng-repeat="item in getMemberForMembersDirectory | filter:search">

<div class="card-body">
<div class="row align-items-center">

<div class="col-auto pr-0 pl-0">
<div class="avatar avatar-70 rounded">
<a href="#"  ng-click="directToMemberProfile(item.memberId)">
<div class="background">
<!--
<img  class="" src="{{item.memberProfilePicture}}" style="height:50px;" onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'" alt="" ng-if="item.memberProfilePicture != ''"/>
<img class="" src="<%=request.getContextPath() %>/resources/admin/images/UserImg.png" alt=""  ng-if="item.memberProfilePicture == ''">														
	-->	
<img  class="" src="{{item.memberProfilePicture}}" style="height:50px;" />
<img class=""  ng-if="!item.memberProfilePicture"  src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'">														


</div>
</a>
</div>
</div> 

<div class="col pr-0" style="margin-right:100px;">
<h6 class="font-weight-normal mb-1"><a class="text-dark" href="#">  {{item.memberFirstName}} {{item.memberLastName}} </a> </h6>
<p class="text-secondary mb-0 truncate">{{item.businessCategoryName}} </p>
<p class="text-secondary truncate"> {{item.memberCompanyName}} </p>
</div>
<div class="col-auto pr-0" style="    margin-left: 62%;     margin-top: -75px;">

				
			
<button class="btn btn-default btn-40 rounded-circle shadow sendmessage"  ng-click="getMemberDetailById(item.memberId)"><i class="fa fa-envelope-o" ></i></button>
<a href="#" class="ml-10 btn btn-outline-transparent btn-40 rounded-circle "> 
<i class="fa fa-angle-right" ng-click="directToMemberProfile(item.memberId)"></i> </a>

</div>
</div>
</div>
</div>






<!-- <div class="card col-12 shadow-sm border-0 mb-3">
<div class="card-body">
<div class="row align-items-center">

<div class="col-auto pr-0 pl-0">
<div class="avatar avatar-70 rounded">
<div class="background">
<img src="img/AmitShah.jpg" alt="">
</div>
</div>
</div>

<div class="col pr-0">
<h6 class="font-weight-normal mb-1"> Amit Shah </h6>
<p class="text-secondary mb-0 truncate"> Ceramic Home </p>
<p class="text-secondary truncate"> Trades, Building Materials </p>
</div>
<div class="col-auto pr-0">
<button class="btn btn-default btn-40 rounded-circle shadow sendmessage"><i class="fa fa-envelope-o"></i></button>
<a href="profile.html" class="ml-10 btn btn-outline-transparent btn-40 rounded-circle "> 
<i class="fa fa-angle-right"></i> </a>
</div>
</div>
</div>
</div>
 -->





    



</div>
</div>


</main>



<%@include file="fotter_bk.jsp" %>



<!-- color settings style switcher -->
<div class="color-picker">

<div class="row">
<div class="col text-left">

<h6>  color settings  </h6>

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

<!-- <script src="js/owl.carousel.min.js"></script> -->

<!-- Customized jquery file  -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/main.js"></script>
<script src="<%=request.getContextPath() %>/resources/mobile/js/color-scheme-demo.js"></script>

<!-- PWA app service registration and works -->
<%-- <script src="<%=request.getContextPath() %>/resources/mobile/js/pwa-services.js"></script>
 --%>
<!-- page level custom script -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/app.js"></script>


<script>


</script>


</body>

</html>
