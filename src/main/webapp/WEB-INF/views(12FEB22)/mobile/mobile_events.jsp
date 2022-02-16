
<!doctype html>
<html lang="en" class="h-100">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title>  Events | Rotary Means Business Fellowship  </title>

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
<%if(session.getAttribute("sitepreference").toString().equalsIgnoreCase("MOBILE")){ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>
		<%}else{ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<%} %>	
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/events.js"></script>
		<!-- Global site tag (gtag.js) - Google Analytics -->	
		
</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay" data-page="homepage" ng-app="rcbs" ng-controller="frontEventCtrl" ng-cloak>

        
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
<main  id="hevent" class="flex-shrink-0 main">

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
<h5 class="mb-0">  Events </h5>
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




<div  class="container">



    
<div class="row mb-4">
<div class="col-6">
<button ng-click="newevent()"  id="f1" class="btn btn-default px-2 btn-block rounded"> Events </button>
</div>
<div class="col-6">
<button  ng-click="pass()" id="f1"  class="btn btn-outline-default px-2 btn-block rounded"> Past Events </button>
</div>
</div>

    

<div class="row  mb-2" ng-repeat="item in events | orderBy : 'eventDate'" ng-if="item.eventDate >= todaydate" ng-show="new_events == 1">

<div class="card col border-0">

<div class="card-body pa-10">

<div class="row align-items-center">

<div class="col-2 pr-0 pl-0">
<a href="#">
<div style="color: #021B79;     border-radius: 8px; background-color: #FEBD11 !important;" class="avatar avatar-60 border-0 bg-warning-light">
<h4> {{item.eventDate| date : 'dd'}} </h4>
<small> {{item.eventDate  | date : "MMMM"}} </small>
</div>
</a>
</div>


<div class="col-10 align-self-center">
<a href="events-details.html">
<h6 style="color: #6c757d !important;" class="mb-1 truncate text-secondar"> {{item.eventTitle}} </h6>
<p style="text-decoration: none;" class="small text-secondary text-justify"> {{item.eventTitle}} </p>
</a>
</div>

</div>


</div>
</div>

</div>

    
   <div class="row  mb-2" ng-repeat="item in events | orderBy : 'eventDate'" ng-if="item.eventDate < todaydate" ng-show="oldevents == 1">

<div class="card col border-0">

<div class="card-body pa-10">

<div class="row align-items-center">

<div class="col-2 pr-0 pl-0">
<a href="events-details.html">
<div style="color: #021B79;     border-radius: 8px; background-color: #FEBD11 !important;" class="avatar avatar-60 border-0 bg-warning-light">
<h4> {{item.eventDate| date : 'dd'}} </h4>
<small> {{item.eventDate  | date : "MMMM"}} </small>
</div>
</a>
</div>


<div class="col-10 align-self-center">
<a href="events-details.html">
<h6 style="color: #6c757d !important;" class="mb-1 truncate text-secondar"> {{item.eventTitle}} </h6>
<p style="text-decoration: none;" class="small text-secondary text-justify"> {{item.eventTitle}} </p>
</a>
</div>

</div>


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
