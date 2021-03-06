<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title> Members Directory | RMB District 3060 </title>

<!--<link rel="shortcut icon" href="images/favicon.png" type="image/png">-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/slick.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/nice-select.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/jquery.nice-number.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/magnific-popup.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/default.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/responsive.css">
		
<%-- <link href="<%=request.getContextPath() %>/resources/front1/css/main.css" rel="stylesheet">	  --%>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700;900&display=swap" rel="stylesheet">


<link rel='stylesheet prefetch' href='https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/assets/owl.carousel.min.css'>
<link rel='stylesheet prefetch' href='https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/assets/owl.theme.default.min.css'>

	<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/controller/members_directory.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/controller/footer_links.js"></script>

<style>
 .left1 {
        max-width: 200px;
     
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
      }

</style>	
</head>

<body  ng-app="rcbs" ng-controller="membersDirectoryCtrl" ng-cloak>

<!--====== PRELOADER PART START ======-->



<!--====== PRELOADER PART START ======-->
<%@include file="header.jsp" %>






<!--====== PAGE BANNER PART START ======-->

<section id="page-banner"  style="background: #e9ecef">
	
	<div class="container">
	<div class="row">
	<div class="col-lg-12">
	<div class="page-banner-cont">
	<nav aria-label="breadcrumb">
	<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="#">Home</a></li>
	<li class="breadcrumb-item active" aria-current="page"> About Us </li>
	</ol>
	</nav>
	</div>  <!-- page banner cont -->
	</div>
	</div> <!-- row -->
	</div> <!-- container -->
	</section>

<!--====== PAGE BANNER PART ENDS ======-->




<!--====== ABOUT PART START ======-->

<section id="about-page" class="pb-110">
<div class="container">
<div class="row">

<div class="col-lg-12">
<div class="section-title mt-50">
<h5>About us</h5>
<h2> Rotary Means Business District 3060 </h2>
</div> <!-- section title -->
<div class="about-cont">
<p> Rotary Means Business Fellowship chapter of District 3060 Rotary Means Business is a Fellowship of Rotary International Today. Rotarians are embracing the original foundations of what the Rotary Club was based on as we adhere to the Four Way Test. This fellowship operates in accordance with Rotary International policy, but is not an agency of, or controlled by, Rotary International.  </p>

<p> Rotary Means Business Fellowship chapter of District 3060 Rotary Means Business is a Fellowship of Rotary International Today Rotarians are embracing the original foundations of what the Rotary Club was based on as we adhere to the Four Way Test. This fellowship operates in accordance with Rotary International policy, but is not an agency of, or controlled by, Rotary International.  </p>

</div>
</div> <!-- about cont -->

</div> <!-- row -->



<div class="row">
<div class="col-lg-12">
<div class="apply">
<div class="row no-gutters">
<div class="col-lg-6">
<div class="apply-cont apply-color-1">
<h3> Vision </h3>
<p> 
Rotary Means Business Fellowship chapter of  District 3060 Rotary Means Business is a Fellowship of Rotary International Today Rotarians are embracing the original foundations of what the Rotary Club was based on as we.  </p>
</div> <!-- apply cont -->
</div>
<div class="col-lg-6">
<div class="apply-cont apply-color-2">
<h3> Mission </h3>
<p> Rotary Means Business Fellowship chapter of  District 3060 Rotary Means Business is a Fellowship of Rotary International Today Rotarians are embracing the original foundations of what the Rotary Club was based on as we.</p>
</div> <!-- apply cont -->
</div> 
</div>
</div> <!-- row -->
</div>
</div>


    
</div> <!-- container -->
</section>

<!--====== ABOUT PART ENDS ======-->

    
    








<!--  ++++++++++++++++++++++++++++++++++++++++++++==footer  // -->

<%@include file="footer.jsp" %>
<!-- <footer id="footer-part">
<div class="footer-top">
<div class="container">
<div class="row">
<div class="col-lg-4 col-md-6">
<div class="footer-about">
<div class="footer-title pb-pb-15">
<h6> Follow us on </h6>
</div>


<ul class="pt-20">
<li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
<li><a href="#"><i class="fa fa-twitter"></i></a></li>
<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
<li><a href="#"><i class="fa fa-instagram"></i></a></li>
</ul>

</div> footer about
</div>

<div class="col-lg-5 col-md-5 col-sm-6">
<div class="footer-link">
<div class="footer-title pb-20">
<h6> Quick Links </h6>
</div>

<ul>
<li><a href="#"><i class="fa fa-angle-right"></i>  About RMB District 3060 </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Board of Directors </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Committees & Chairs </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Members Directory </a></li>

</ul>

<ul>
<li><a href="#"><i class="fa fa-angle-right"></i> Events </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Media </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Calendar </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Contact </a></li>

</ul>
</div> footer link
</div>















<div class="col-lg-2 col-md-6 col-sm-6">
<div class="footer-link support">
<div class="footer-title pb-20">
<h6> Customer Service </h6>
</div>
<ul>
<li><a href="#"><i class="fa fa-angle-right"></i>FAQS</a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Terms & Conditions </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i>Privacy Policy</a></li>
<li><a href="#"><i class="fa fa-angle-right"></i>Support</a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Refund & Cancellation</a></li>
</ul>
</div> support
</div>



</div> row
</div> container
</div> footer top

<div class="footer-copyright pt-10 pb-25">
<div class="container">
<div class="row">
<div class="col-md-8">
<div class="copyright text-md-left text-center pt-15">
<p> Content ?? 2020 RMB District 3060 | Powered by: Astar Technologies </p>
</div>
</div>
<div class="col-md-4">
<div class="copyright text-md-right text-center pt-15">

</div>
</div>
</div> row
</div> container
</div> footer copyright
</footer>
 -->
<!--====== FOOTER PART ENDS ======-->

<!--====== BACK TO TP PART START ======-->

<a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

<!--====== BACK TO TP PART ENDS ======-->




<!--====== jquery js ======-->
<script src="<%=request.getContextPath() %>/resources/front/js/vendor/modernizr-3.6.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/js/vendor/jquery-1.12.4.min.js"></script>

<!--====== Bootstrap js ======-->
<script src="<%=request.getContextPath() %>/resources/front/js/bootstrap.min.js"></script>

<!--====== Slick js ======-->
<script src="<%=request.getContextPath() %>/resources/front/js/slick.min.js"></script>

<!--====== Magnific Popup js ======-->
<script src="<%=request.getContextPath() %>/resources/front/js/jquery.magnific-popup.min.js"></script>

<!--====== Counter Up js ======-->
<script src="<%=request.getContextPath() %>/resources/front/js/waypoints.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/front/js/jquery.counterup.min.js"></script>

<!--====== Nice Select js ======-->
<script src="<%=request.getContextPath() %>/resources/front/js/jquery.nice-select.min.js"></script>

<!--====== Nice Number js ======-->
<script src="<%=request.getContextPath() %>/resources/front/js/jquery.nice-number.min.js"></script>

<!--====== Count Down js ======-->
<script src="resources/front/js/jquery.countdown.min.js"></script>

<!--====== Validator js ======-->
<script src="<%=request.getContextPath() %>/resources/front/js/validator.min.js"></script>

<!--====== Ajax Contact js ======-->
<script src="<%=request.getContextPath() %>/resources/front/js/ajax-contact.js"></script>

<!--====== Main js ======-->
<script src="<%=request.getContextPath() %>/resources/front/js/main.js"></script>

<!--====== Map js ======-->
<!--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDC3Ip9iVC0nIxC6V14CKLQ1HZNF_65qEQ"></script>
<script src="js/map-script.js"></script>-->



<script src='https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/owl.carousel.js'></script>




<script  src="<%=request.getContextPath() %>/resources/front/js/index.js"></script>



</body>
</html>
