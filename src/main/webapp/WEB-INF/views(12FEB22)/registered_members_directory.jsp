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
<script src="<%=request.getContextPath() %>/resources/admin/js/controller/event_members_directory.js"></script>

<style>
 .left1 {
        max-width: 200px;
     
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
      }

</style>	
</head>

<body ng-app="rcbs" ng-controller="registrMembersDirectoryCtrl" ng-init="checkMemberregistration(<%=request.getParameter("event_id") %>, <%= session.getAttribute("memberid")%>)" ng-cloak>

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
	<li class="breadcrumb-item active" aria-current="page">  Members Directory </li>
	</ol>
	</nav>
	</div>  <!-- page banner cont -->
	</div>
	</div> <!-- row -->
	</div> <!-- container -->
	</section>

<!--====== PAGE BANNER PART ENDS ======-->





<!--====== COURSES PART START ======-->

<section id="courses-part" class="pb-120">
<div class="container">

<div class="row">
<div class="col-lg-12">
<div class="courses-top-search">
<ul class="nav float-left" id="myTab" role="tablist">

<li class="nav-item">Showning <!-- 4 0f 24 --> Results</li>
</ul> <!-- nav -->

<div class="courses-search float-right">
<form action="#">
<input type="text" id="search" name="search" ng-model="search" class="form-control input-lg" placeholder="Search Members here..." ng-keyup="$event.keyCode == 13 ? searchmember() : null" ng-change="searchmember()">
<button type="button" ng-click="searchmember()"><i class="fa fa-search"></i></button>
</form>
</div> <!-- courses search -->
</div> <!-- courses top search -->
</div>
</div> <!-- row -->

<div class="row">

		<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12"  ng-repeat="item in getMemberForMembersDirectory">
		
			<div class="singel-course mt-30">
				<div class="thum">
				<div class="image">
			<%-- 	<img class="img-responsive" src="<%=request.getContextPath() %>/resources/front2/img/members/t-1.jpg"> --%>
			
				<img style="height: 295px;" class="img-responsive" src="{{item.memberProfilePicture}}" onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'" alt="" ng-if="item.memberProfilePicture != ''"/>
				<img style="height: 295px;" class="img-responsive" src="<%=request.getContextPath() %>/resources/admin/images/UserImg.png" alt=""  ng-if="item.memberProfilePicture == ''">														
													
			</div>
	   </div>

		<div class="cont">
			<a href="#"><h4> {{item.memberFirstName}} {{item.memberLastName}} <br>  </h4></a>
			<p class="left1">{{item.businessCategoryName}} </p>
			<p class="left1" > {{item.memberCompanyName}}</p>
			<p class="left1" ng-if="!item.memberCompanyName"> &nbsp;</p>
				<%if(session.getAttribute("memberid") != null && session.getAttribute("memberstatus").equals("y")) {%>
			<hr>												
														
			<p><i class="fa fa-phone"></i> {{item.memberMobileNumber}}  </p>
			<p style="white-space: nowrap;"><i class="fa fa-envelope-o"></i> <a href="#">  {{item.memberEmail}} </a></p>
			<%}%>
			<div class="course-teacher">
		<%if(session.getAttribute("memberid") != null && session.getAttribute("memberstatus").equals("y")) {%>
				<div class="button">
				<a style="font-weight: normal;
				    line-height: 36px;" href="#" class="main-btn btn-block btn-sm"> View Details </a>
				</div>
		<%}	else {%>	
		<div class="button">
				<a style="font-weight: normal;
				    line-height: 36px;" href="#" class="main-btn btn-block btn-sm" ng-click="getMemberDetailById(item.memberId)" data-toggle="modal" data-target="#myModal"> Send Message &nbsp;<i class="fa fa-envelope-o" aria-hidden="true"></i></a>
				</div>
		<%}%>
			</div>
		</div>

	</div> <!-- singel course -->
</div>









</div>
 </div>
 <br> <br> <br>
<div class="row">
			<div class="col-md-12 text-center">
				<button type="submit" class="btn btn-warning" ng-disabled="currentPage <= 0" ng-click="prev()">
				
						<i class="fa fa-angle-left"></i>
					
				</button>
				{{currentPage+1}}
				<button type="submit" class="btn btn-warning" ng-disabled="getMemberForMembersDirectory.length == 0" ng-click="next()">
				<i class="fa fa-angle-right"></i>
				</button>
			</div>
		</div>

<!-- <div class="row">
	<div class="col-lg-12">
		<nav class="courses-pagination mt-50">
			<ul class="pagination justify-content-center">
				<li class="page-item">
					<a href="#" aria-label="Previous">
						<i class="fa fa-angle-left"></i>
					</a>
				</li>
	<li class="page-item"><a class="active" href="#">1</a></li>
	<li class="page-item"><a href="#">2</a></li>
	<li class="page-item"><a href="#">3</a></li>
	<li class="page-item">
	<a href="#" aria-label="Next">
	<i class="fa fa-angle-right"></i>
	</a>
	</li>
	</ul>
	</nav>  courses pagination
	</div>
</div>  row

 -->
 <!-- container -->

</section>

<!--====== COURSES PART ENDS ======-->





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


<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">						
						<h4 class="modal-title">Send message to {{firstname}} {{lastname}} </h4>
					</div>
					<form ng-submit="sendMessage(memberid)">
					<div class="modal-body">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>First Name<font color="red" size="3">*</font></label>
									<input type="text" class="form-control" id="userfirstname" ng-model="userfirstname" placeholder="First Name" ng-change="setFlag()">
									<p ng-show="errorFirstName == 1" style="color: red; font-size: 14px;">{{msgFirstName}}</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Last Name<font color="red" size="3">*</font></label>
									<input type="text" class="form-control" id="userlastname" ng-model="userlastname" placeholder="Last Name" ng-change="setFlag()">
									<p ng-show="errorLastName == 1" style="color: red; font-size: 14px;">{{msgLastName}}</p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Email<font color="red" size="3">*</font></label>
									<input type="text" class="form-control" id="useremail" ng-model="useremail" placeholder="Email" ng-change="setFlag()">
									<p ng-show="errorEmail == 1" style="color: red; font-size: 14px;">{{msgEmail}}</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Mobile No.<font color="red" size="3">*</font></label>
									<input type="text" class="form-control" id="usermobileno" ng-model="usermobileno" placeholder="Mobile number" ng-change="setFlag()">
									<p ng-show="errorMobileNo == 1" style="color: red; font-size: 14px;">{{msgMobileNo}}</p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label>Message<font color="red" size="3">*</font></label>
									<textarea row="3" class="form-control" id="usermessage" ng-model="usermessage" placeholder="Your message" ng-change="setFlag()"></textarea>
									<p ng-show="errorMessage == 1" style="color: red; font-size: 14px;">{{msgMessage}}</p>
								</div>
							</div>							
						</div>
					</div>
				<div class="modal-footer">
				
				<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<p ng-show="submitSuccess == 1" style="color: green; font-size: 18px;"><b>{{msgSuccess}}</b></p>
									<p ng-show="submitError == 1" style="color: red; font-size: 18px;"><b>{{msgError}}</b></p>
									</div>
							</div>							
				</div>
				<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<button type="submit" class="btn btn-warning" ng-disabled="spin == 1"><i class="fa fa-refresh fa-spin" ng-if="spin == 1"></i> Submit</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							</div>							
				</div>		
										
					</div> 
					
					
					</form>
				</div>
			</div>
		</div>


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
