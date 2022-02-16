<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title>  Events Details | Rotary Means Business Fellowship  </title>
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
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		
		<script src="<%= request.getContextPath() %>/resources/front/mobile/mdl/material.js"></script>		
		<%if(session.getAttribute("sitepreference").toString().equalsIgnoreCase("MOBILE")){ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>
		<%}else{ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<%} %>		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/event_detail.js"></script>
</head>

<body class="body-scroll d-flex flex-column  menu-overlay" data-page="eventdetail" ng-app="rcbs" ng-controller="eventDetailCtrl" ng-init="getEventDetailById(<%= request.getParameter("id")%>, <%= session.getAttribute("memberid")%>)">

        
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
    



<!-- hevent age content -->
<main  id="hevent-details" class="flex-shrink-0 main">

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
<h5 class="mb-0">  Event Details </h5>
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





<!-- page content start -->
<div class="inner-container">

<div class="container text-center">
<h1 class="display-5">{{geteventdetailbyid.eventTitle}} </h1>
<h6 class="text-secondary "> {{geteventdetailbyid.eventSubtitle}} </h6>
</div>


<div class="container mb-4">
<div class="row">
<div class="card col-12">

<div class="card-body px-0 pt-0">
<div class="list-group list-group-flush border-top border-color">


<a href="#" class="list-group-item list-group-item-action border-color">
<div class="row">

<div class="col-2  align-self-center">
<div class="avatar avatar-40 bg-blue-light text-default rounded-circle mr-5">
<span class="material-icons"> location_on </span>
</div>
</div>

<div class="col-10 align-self-center">
<h6 class="mb-1">VENUE   </h6>
<p class="text-secondary">  Waves Club
Bhaili, Vadodara </p> 
</div>

</div>
</a>




<a href="#" class="list-group-item list-group-item-action border-color">
<div class="row">

<div class="col-2  align-self-center">
<div class="avatar avatar-40 bg-blue-light text-default rounded-circle mr-5">
<span class="material-icons">
    date_range
    </span>
</div>
</div>

<div class="col-10 align-self-center">
<h6 class="mb-1">  SUNDAY
</h6>
<p class="text-secondary">  {{geteventdetailbyid.eventDate | date: 'dd/MM/yyyy'}} </p> 
</div>

</div>
</a>



<a href="#" class="list-group-item list-group-item-action border-color">
<div class="row">

<div class="col-2  align-self-center">
<div class="avatar avatar-40 bg-blue-light text-default rounded-circle mr-5">
<span class="material-icons">
access_time
</span>

</div>
</div>

<div class="col-10 align-self-center">
<h6 class="mb-1">   EXHIBITORS MEET    </h6>
<p class="text-secondary">   4:00 PM to 9:00 PM  </p> 
</div>

</div>
</a>




    
<a href="#" class="list-group-item list-group-item-action border-color">
<div class="row">

<div class="col-2  align-self-center">
<div class="avatar avatar-40 bg-blue-light text-default rounded-circle mr-5">
<span class="material-icons">
access_time
</span>

</div>
</div>

<div class="col-10 align-self-center">
<h6 class="mb-1">  SPEAKERS & DISCUSSION </h6>
<p class="text-secondary">  05:00 PM to 07:00 PM </p> 
</div>

</div>
</a>



<a href="#" class="list-group-item list-group-item-action border-color">
<div class="row">

<div class="col-2  align-self-center">
<div class="avatar avatar-40 bg-blue-light text-default rounded-circle mr-5">
<span class="material-icons">
access_time
</span>

</div>
</div>

<div class="col-10 align-self-center">
<h6 class="mb-1"> DINNER & NETWORKING
</h6>
<p class="text-secondary">  8:00 PM onwards

</p> 
</div>

</div>
</a>
</div>
</div>
</div>
</div>
</div>




<div class="container my-4">
<!-- <h4> RMBV NEO Conclave - New Emerging Opportunities In Business </h4> -->
<h6> RMBV NEO Conclave - New Emerging Opportunities In Business </h6>
<p class="text-secondary text-justify"> In the changing economic and technological landscape, change is certain, fast and often painful.

But where there are threats, there are also opportunities. </p>
</div>




<div class="container-fluid mb-4">

    <div class="row">

    <div class="card col-12">
        <div class="card-header border-bottom">
            <h6 class="mb-0"> EMINENT SPEAKERS
             </h6>
        </div>

        <div class="card-body px-0 pt-0">
            <ul class="list-group list-group-flush">
                <li class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-auto pr-0">
                            <div class="avatar avatar-40 rounded">
                                <div class="background">
                                    <img src="<%=request.getContextPath() %>/resources/mobile/img/user2.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col align-self-center pr-0">
                            <h6 class="font-weight-normal mb-1">Ms. Shivani Dilux</h6>
                            <p class="small text-secondary">15-1-2020, 8:00 am</p>
                        </div>
                     
                    </div>
                </li>
                <li class="list-group-item">
                    <div class="row align-items-center">
                        <div class="col-auto pr-0">
                            <div class="avatar avatar-40 rounded">
                                <div class="background">
                                    <img src="<%=request.getContextPath() %>/resources/mobile/img/user4.png" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col align-self-center pr-0">
                            <h6 class="font-weight-normal mb-1">Mrs. Magon Strudio</h6>
                            <p class="small text-secondary">15-1-2020, 8:00 am</p>
                        </div>
                    
                    </div>
                </li>
              
    
            </ul>
        </div>
    </div>

</div>
</div>



<!-- SPONSORS Start -->
<div class="container mb-4">
<h6 class="subtitle mb-3" style="    color: #343a40 !important;"> SPONSORS </h6>
<div class="swiper-container swiper-users text-center mb-4">
<div class="swiper-wrapper">

<div class="swiper-slide">
<div class="card">
<div class="card-body pa-5">
<div class="avatar avatar-90 rounded mb-1">
<div class="background"><img src="<%=request.getContextPath() %>/resources/mobile/img/sponsors/1.png" alt=""></div>
</div>
<p  class="text-secondary"> Lead Sponsor </p>
</div>
</div>
</div>


<div class="swiper-slide">
<div class="card">
<div class="card-body pa-5">
<div class="avatar avatar-90 rounded mb-1">
<div class="background"><img src="<%=request.getContextPath() %>/resources/mobile/img/sponsors/4.png" alt=""></div>
</div>
<p  class="text-secondary"> Lead Sponsor </p>
</div>
</div>
</div>



<div class="swiper-slide">
<div class="card">
<div class="card-body pa-5">
<div class="avatar avatar-90 rounded mb-1">
<div class="background"><img src="<%=request.getContextPath() %>/resources/mobile/img/sponsors/1.png" alt=""></div>
</div>
<p  class="text-secondary"> Lead Sponsor </p>
</div>
</div>
</div>


<div class="swiper-slide">
<div class="card">
<div class="card-body pa-5">
<div class="avatar avatar-90 rounded mb-1">
<div class="background"><img src="<%=request.getContextPath() %>/resources/mobile/img/sponsors/4.png" alt=""></div>
</div>
<p  class="text-secondary"> Lead Sponsor </p>
</div>
</div>
</div>


</div>
</div>

</div>



<div class="container  mb-4">
<div class="card">

<div class="card-header">
<h6 style="color: #023497;" class="mb-0"> Registration Charges </h6>
</div>


<div class="card-body px-0 pt-0 pb-0">
<ul class="list-group list-group-flush border-top border-color">

<li class="list-group-item" ng-repeat="r in geteventchargesbyid">
<div class="row align-items-center">

<div class="col align-self-center pr-0">
<p class="mb-1 font-weight-500"> {{r.registrationFor}} </p>
</div>

<div class="col-auto">
<p class="text-dark font-weight-500">  {{r.currencyCode}} {{r.amount | number:2}}  </p>
</div>

</div>
</li>





    

</ul>
</div>
</div>
</div>




<div class="container-fluid bg-blue-light text-center py-4 mb-4">
<h3 class="font-weight-normal text-default"> Register as a
    Visitor for FREE </h3>
<p class="text-mute"> Visit the conclave and interact with speakers, panel members and exhibitors. Networking Dinner (optional) @ Rs. 500/- per person </p>
<a href="member-type.html" class="btn btn-sm bg-default  rounded"> Register Now </a>
</div>



<div class="container mb-4">
    <div class="card bg-default">
        <div class="card-body">
            <div class="media">
                
                <div class="media-inner">
                    <h5 class="font-weight-normal">Booking Form for
                        Open Table Space </h5>
                    <p><small style="top: 0%;" class="text-mute"> Booking Form for Open Table Space
                        at RMBV NEO </small></p>
                </div>
                <div class="align-self-center ml-auto">
                    <i class="material-icons">arrow_forward</i>
                </div>
            </div>
        </div>
    </div>
</div>






<!-- Blank Space -->
<div class="container-fluid">
<div class="row">
<div class="col-12">
<div style="height: 10vh;"></div>
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
<a href="#" class="">
<i class="fa fa-file-text"></i>
<p> Records </p>
</a>
</div>

<div class="col-auto">
<a href="events.html" class="active">
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


</body>
</html>
