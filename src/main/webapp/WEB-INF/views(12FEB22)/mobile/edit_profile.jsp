
<!doctype html>
<html lang="en" class="h-100">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title> Edit Profile </title>

<!-- manifest meta -->
<meta name="apple-mobile-web-app-capable" content="yes">

<!-- Favicons -->
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

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath() %>/resources/mobile/css/style.css" rel="stylesheet" id="style">
</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay" data-page="profile">


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
<h5 class="mb-0">  Edit Profile  </h5>
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



<div class="page-content-wrapper">



<div class="container-fluid ">

<div class="card row">
<div class="card-header">
<h6 class="mb-0">  Edit Profile </h6>
</div>

<div class="card-body px-0 pt-0">
<div class="list-group list-group-flush border-top border-color">

<a href="<%=request.getContextPath() %>/manage_my_profile11" class="list-group-item list-group-item-action border-color">
<div class="row">
<div class="col-auto">
<div class="avatar avatar-50 bg-default-light text-default rounded">
<i class="fa fa-user-circle-o font-22"></i>
</div>
</div>
<div class="col align-self-center pl-0">
<h6 class="mb-1">  Members Info  </h6>
<p class="text-secondary"> Personal Information, Fellowship  </p>
</div>
</div>
</a>

<a href="<%=request.getContextPath() %>/my_contact_detail1" class="list-group-item list-group-item-action border-color">
<div class="row">
<div class="col-auto">
<div class="avatar avatar-50 bg-default-light text-default rounded">
<i class="fa fa-phone font-22"></i>
</div>
</div>
<div class="col align-self-center pl-0">
<h6 class="mb-1">  Contact Information  </h6>
<p class="text-secondary"> Address for Communication, Work Details... </p>
</div>
</div>
</a>
<!-- 
<a href="edit-family-info.html" class="list-group-item list-group-item-action border-color">
<div class="row">
<div class="col-auto">
<div class="avatar avatar-50 bg-default-light text-default rounded">
    <i class="fa fa-users font-22"></i>
</div>
</div>
<div class="col align-self-center pl-0">
<h6 class="mb-1">  Family Info  </h6>
<p class="text-secondary"> Spouse Detail, Education Details... </p>
</div>
</div>
</a>

<a href="references.html" class="list-group-item list-group-item-action border-color">
<div class="row">
<div class="col-auto">
<div class="avatar avatar-50 bg-default-light text-default rounded">
<i class="fa fa-exchange font-22"></i>

</div>
</div>
<div class="col align-self-center pl-0">
<h6 class="mb-1">  References  </h6>
<p class="text-secondary"> References </p>
</div>
</div>
</a>

<a href="payments.html" class="list-group-item list-group-item-action border-color">
<div class="row">
<div class="col-auto">
<div class="avatar avatar-50 bg-default-light text-default rounded">
    <span class="material-icons">credit_card</span>
</div>
</div>
<div class="col align-self-center pl-0">
<h6 class="mb-1">  Payments  </h6>
<p class="text-secondary"> Payments </p>
</div>
</div>
</a> -->


<!-- <a href="login.html" class="list-group-item list-group-item-action border-color">
<div class="row">
<div class="col-auto">
<div class="avatar avatar-50 bg-danger-light text-danger rounded">
<span class="material-icons">power_settings_new</span>
</div>
</div>
<div class="col align-self-center pl-0">
<h6 class="mb-1">Logout</h6>
<p class="text-secondary">Logout from the application</p>
</div>
</div>
</a> -->


</div>
</div>
</div>
</div>


</div>


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

<!-- Customized jquery file  -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/main.js"></script>
<script src="<%=request.getContextPath() %>/resources/mobile/js/color-scheme-demo.js"></script>


<!-- page level custom script -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/app.js"></script>

</body>

</html>
