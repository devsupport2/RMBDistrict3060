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
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/registration.js"></script>	

<style>
 .left1 {
        max-width: 200px;
     
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
      }

</style>	
</head>

<body  ng-app="rcbs" ng-controller="registrationCtrl" ng-init="getLogedinMemberDetails(<%= session.getAttribute("memberid")%>,<%= request.getParameter("eid")%>)">

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
	<li class="breadcrumb-item active" aria-current="page">Registration Form </li>
		
	</ol>
	</nav>
	</div>  <!-- page banner cont -->
	</div>
	</div> <!-- row -->
	</div> <!-- container -->
	</section>

<!--====== PAGE BANNER PART ENDS ======-->




<!--====== TEACHERS PART START ======-->

<section id="teachers-page" class=" pb-120">
<div class="container">

<div class="section-title">

<h5> Get registered as <%= request.getParameter("membertype")%> for {{evnttitle}} </h5>
</div>


<div class="row">
					<div class="col-md-12">
						<form class="" >
						<div class="form-group row">
							<div class="col-md-3">
								<div class="form-group">
									<label>Company Name</label>
									<input type="text" id="rtcmpadd" name="rtcmpadd" ng-model="rtcmpadd" placeholder="Company Name" class="form-control" ng-change="setFlag()">											
								</div>
								<p ng-show="errorCompany == 1" style="color: red; font-size: 14px;">{{msgCompany}}</p>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>First Name<font color="red" size="3">*</font></label>
									<input type="text" id="firstnameadd" name="firstnameadd" ng-model="firstnameadd" placeholder="First Name" class="form-control" ng-change="setFlag()">
									<p ng-show="errorFirstName == 1" style="color: red; font-size: 14px;">{{msgFirstName}}</p>
								</div>									
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Last Name<font color="red" size="3">*</font></label>
									<input type="text" id="lastnameadd" name="lastnameadd" ng-model="lastnameadd" placeholder="Last Name" class="form-control" ng-change="setFlag()">
									<p ng-show="errorLastName == 1" style="color: red; font-size: 14px;">{{msgLastName}}</p>
								</div>									
							</div>
							<div class="col-md-3">
								<label>Gender<font color="red" size="3">*</font></label>
								<div class="form-group">
									<select id="genderadd" name="genderadd" ng-model="genderadd" class="form-control" ng-change="setFlag()">
										<option value="">Gender</option>
										<option value="M">Male</option>
										<option value="F">Female</option>
										<option value="O">Other</option>
									</select>											
								</div>
								<p ng-show="errorGender == 1" style="color: red; font-size: 14px;">{{msgGender}}</p>
							</div>    
						</div>
						<div class="form-group row">
							<div class="col-md-3">
								<div class="form-group">
									<label>Email ID<font color="red" size="3">*</font></label>
									<input type="email" id="emailadd" name="emailadd" ng-model="emailadd" placeholder="Email" class="form-control" ng-change="setFlag()" onblur="validateemail()">
									<p ng-show="errorEmail == 1" style="color: red; font-size: 14px;">{{msgEmail}}</p>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Mobile No<font color="red" size="3">*</font></label>
									<input type="text" id="mobilenoadd" name="mobilenoadd" ng-model="mobilenoadd" placeholder="Mobile No" class="form-control" ng-change="setFlag()" maxlength="10">											
								</div>
								<p ng-show="errorMobileno == 1" style="color: red; font-size: 14px;">{{msgMobileno}}</p>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Company Website</label>
									<input type="text" id="rtwebsiteadd" name="rtwebsiteadd" ng-model="rtwebsiteadd" placeholder="Company Website" class="form-control">											
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Country</label>
									<select id="countryidadd" name="countryidadd" ng-model="countryidadd" ng-init="countryidadd=1" class="form-control">
										<option value="">Select Country</option>
										<option ng-repeat="c in getcountry" value="{{c.countryId}}">{{c.countryName}}</option>
						 			</select>	
							 	</div>
							</div>
						</div>
						<div class="form-group row" ng-show="'<%= request.getParameter("membertype")%>' !='RMBFB Member' && !<%= session.getAttribute("memberid")%>">
							<div class="col-md-3" >
								<div class="form-group">
									<label>Password<font color="red" size="3">*</font></label>
									<input type="password" id="password" name="password" ng-model="password" placeholder="Password" class="form-control" ng-change="setFlag()">											
								</div>
								<p ng-show="errorPassword == 1" style="color: red; font-size: 14px;">{{msgPassword}}</p>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Confirm Password<font color="red" size="3">*</font></label>
									<input type="password" id="cpassword" name="cpassword" ng-model="cpassword" placeholder="Confirm Password" class="form-control" ng-change="setFlag()">											
								</div>
								<p ng-show="errorCPassword == 1" style="color: red; font-size: 14px;">{{msgCPassword}}</p>
							</div>
						</div>
						<div class="form-group row" ng-show="'<%= request.getParameter("membertype")%>' !='Others'">
							 <div class="col-md-4">
								<div class="form-group">
									<label>Rotary Member ID</label>
									<input type="text" id="rtmemberadd" name="rtmemberadd" ng-model="rtmemberadd" placeholder="Rotary Member ID" class="form-control">											
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label>Rotary Club Name</label>
									<input type="text" id="rtclubadd" name="rtclubadd" ng-model="rtclubadd" placeholder="Rotary Club Name" class="form-control">											
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label>RMB Chapter Name</label>
									<input type="text" id="rtchapadd" name="rtchapadd" ng-model="rtchapadd" placeholder="RMB Chapter Name" class="form-control">											
								</div>
							</div>
						</div> 
						
						<div class="form-group row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Short Description of your Company</label>
									<textarea rows="2" id="shortdescadd" name="shortdescadd" ng-model="shortdescadd" placeholder="Short Description of your Company" class="form-control"></textarea>																																
								</div>
							</div>	
							<div class="col-md-6">
								<div class="form-group">
									<label>Business Classification</label>			
									<textarea rows="2" id="businessclsadd" name="businessclsadd" ng-model="businessclsadd" placeholder="Business Classification" class="form-control" ng-change="setFlag()"></textarea>																																
								</div>
								<p ng-show="errorBusiness == 1" style="color: red; font-size: 14px;">{{msgBusiness}}</p>
							</div>	
						</div> 
						<div class="box-footer">
							<div class="col-md-6 text-left">
								<!-- <p ng-show="userSubmitSuccess == 1" style="color: green; font-size: 18px;"><b>{{msgSuccess}}</b></p> -->
								<p ng-show="userSubmitError == 1" style="color: red; font-size: 18px;"><b>{{msgError}}</b></p>
								<p ng-show="userSubmitError1 == 1" style="color: red; font-size: 18px;"><b>{{msgError}}</b></p>	
							</div>
							
						</div>
						<br>
						<div class="form-group row">
						<br>
							<div class="col-md-12 text-left">
								
								<button style="width: 100%;" ng-click="registration(<%= request.getParameter("eid")%>, <%= session.getAttribute("memberid")%>,'<%= request.getParameter("membertype")%>')" ng-show="userSubmitError != 1" class="btn btn-success">
								<i class="fa fa-refresh fa-spin" ng-if="spin == 1"></i> Submit</button>
							</div>
						</div>		
					</form>
					<div class="text-right">
						<button ng-if="userSubmitError == 1"  ng-click="redirectToLoginPage(<%= request.getParameter("eid")%>, '<%= request.getParameter("membertype")%>')" class="btn btn-success" >
						 Login</button>
					</div>
					
					
					</div>
				</div>

</div> <!-- container -->
</section>

<!--====== TEACHERS PART ENDS ======-->









<!--  ++++++++++++++++++++++++++++++++++++++++++++==footer  // -->
<footer id="footer-part">
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

</div> <!-- footer about -->
</div>

<div class="col-lg-5 col-md-5 col-sm-6">
<div class="footer-link">
<div class="footer-title pb-20">
<h6> Quick Links </h6>
</div>


<ul>
<li><a href="<%=request.getContextPath() %>/about_rmb3060"><i class="fa fa-angle-right"></i>  About RMB District 3060 </a></li>
<!-- <li><a href="#"><i class="fa fa-angle-right"></i> Board of Directors </a></li> -->
<li><a href="<%=request.getContextPath() %>/committees"><i class="fa fa-angle-right"></i> Committees & Chairs </a></li>
<li><a href="<%=request.getContextPath() %>/members_directory"><i class="fa fa-angle-right"></i> Members Directory </a></li>

</ul>


<ul>
<li><a href="#"><i class="fa fa-angle-right"></i> Events </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Media </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Calendar </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Contact </a></li>

</ul>
</div> <!-- footer link -->
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
<!--<li><a href="#"><i class="fa fa-angle-right"></i>Support</a></li>-->
<li><a href="#"><i class="fa fa-angle-right"></i> Refund & Cancellation</a></li>
</ul>
</div> <!-- support -->
</div>



</div> <!-- row -->
</div> <!-- container -->
</div> <!-- footer top -->

<div class="footer-copyright pt-10 pb-25">
<div class="container">
<div class="row">
<div class="col-md-8">
<div class="copyright text-md-left text-center pt-15">
<p> Content © 2020 RMB District 3060 | Powered by: Astar Technologies </p>
</div>
</div>
<div class="col-md-4">
<div class="copyright text-md-right text-center pt-15">

</div>
</div>
</div> <!-- row -->
</div> <!-- container -->
</div> <!-- footer copyright -->
</footer>

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