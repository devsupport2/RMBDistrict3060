<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Member Detail | RMB District</title>

<link rel="apple-touch-icon" sizes="180x180"
	href="<%=request.getContextPath()%>/resources/front/images/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="<%=request.getContextPath()%>/resources/front/images/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="<%=request.getContextPath()%>/resources/front/images/favicon/favicon-16x16.png">
<link rel="manifest"
	href="<%=request.getContextPath()%>/resources/front/images/favicon/site.webmanifest">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/front/css/slick.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/front/css/animate.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/front/css/nice-select.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/front/css/jquery.nice-number.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/front/css/magnific-popup.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/front/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/front/css/font-awesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/front/css/default.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/front/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/front/css/responsive.css">

<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700;900&display=swap"
	rel="stylesheet">


<link rel='stylesheet prefetch'
	href='https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/assets/owl.carousel.min.css'>
<link rel='stylesheet prefetch'
	href='https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/assets/owl.theme.default.min.css'>

<script
	src="<%=request.getContextPath()%>/resources/admin/js/angular.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/admin/js/controller/config.js"></script>
<%--	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script>--%>
<script
	src="<%=request.getContextPath()%>/resources/admin/js/controller/members_directory.js"></script>

<!-- includes js File START-->
<script src="<%=request.getContextPath()%>/resources/front/js/w3data.js"></script>
<!-- includes js File END-->

</head>

<body ng-app="rcbs" ng-controller="membersDirectoryCtrl" ng-init="getMemberDetailById(<%=request.getParameter("id")%>)" ng-cloak>



	<!--/header START-->
	<%@include file="header.jsp"%>
	<!--/header END-->

	<!--====== PAGE BANNER PART START ======-->

	<section id="page-banner" style="background: #e9ecef">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-banner-cont">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">
									Member Details</li>
							</ol>
						</nav>
					</div>
					<!-- page banner cont -->
				</div>
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</section>

	<!--====== PAGE BANNER PART ENDS ======-->





	<!--====== Member Detail PART START ======-->

	<section id="teachers-singel" class="pt-70 pb-120">
		<div class="container">
			<div class="row justify-content-center">

				<div class="col-lg-4 col-md-8">
					<div class="teachers-left mt-50">
						<div class="hero">
							<img src="{{getmemberdetail.memberProfilePicture}}" alt="profile">
						</div>
						<div class="name">
							<h6>Rtn. {{getmemberdetail.memberFirstName}} {{getmemberdetail.memberLastName}}</h6>
							<span> {{getmemberdetail.memberDesignation}} {{getmemberdetail.memberCompanyName}} </span>
						</div>

						<div class="row">
							<div class="col-lg-12 col-md-6">
								<div class="course-features1">
									<ul>
										<a href="tel:{{getmemberdetail.memberMobileNumber}}"><li><i class="fa fa-phone"></i> <span>
												{{getmemberdetail.memberMobileNumber}} </span></li></a>
										<li><i class="fa fa-envelope-o"></i> <span>
												{{getmemberdetail.memberEmail}} </span></li>
									</ul>
								</div>
								<!-- course features -->
							</div>
						</div>

					</div>
					<!-- teachers left -->
				</div>

				<div class="col-lg-8">
					<div class="teachers-right mt-50">
						<ul class="nav nav-justified" id="myTab" role="tablist">
							<li class="nav-item"><a class="active" id="dashboard-tab"
								data-toggle="tab" href="#dashboard" role="tab"
								aria-controls="dashboard" aria-selected="true"> Member
									Information </a></li>
							<li class="nav-item"><a id="courses-tab" data-toggle="tab"
								href="#courses" role="tab" aria-controls="courses"
								aria-selected="false"> Business Information </a></li>
							<li class="nav-item"><a id="reviews-tab" data-toggle="tab"
								href="#reviews" role="tab" aria-controls="reviews"
								aria-selected="false"> Work Detail </a></li>
						</ul>
						<!-- nav -->
						<div class="tab-content" id="myTabContent">

							<div class="tab-pane fade show active" id="dashboard"
								role="tabpanel" aria-labelledby="dashboard-tab">

								<div class="row">
									<div class="col-lg-12 col-md-6">
										<div class="course-features">
											<ul>
												<li><strong>Birth Date: </strong> <span>{{getmemberdetail.memberDateOfBirth}} </span></li>
												<li><strong>Marriage Anniversary: </strong> <span> {{getmemberdetail.memberAnniversaryDate}}
												</span></li>
												<li><strong>Blood group: </strong> <span> {{getmemberdetail.memberBloodGroup}}</span></li>
												<!-- <li><strong>Qualification: {{getmemberdetail.memberDateOfBirth}}</strong> <span> </span></li> -->
											</ul>
										</div>
										<!-- course features -->
									</div>
								</div>

							</div>

							<div class="tab-pane fade" id="courses" role="tabpanel"
								aria-labelledby="courses-tab">
								<div class="courses-cont pt-20">

									<div class="row">

										<div class="col-lg-3 col-md-3">
											<div class="company-logo">
												<img class="img-responsive" src="{{getmemberdetail.companyLogo}}" />
											</div>
										</div>

										<div class="col-lg-9 col-md-9">
											<div class="course-features">
												<ul>
													<li><strong> Company Name: </strong> <span>
															{{getmemberdetail.memberCompanyName}} </span></li>
													<li><strong> Business Nature: </strong> <span>
															{{getmemberdetail.memberBusinessNature}} </span></li>
													<li><strong> Designation: </strong> <span> {{getmemberdetail.memberDesignation}}
													</span></li>
												</ul>
											</div>
											<!-- course features -->
										</div>

									</div>


									<div class="dashboard-cont">
										<div class="singel-dashboard pt-10">
											<h5>About Business</h5>
											<p class="text" ng-bind-html="getmemberdetail.memberCompanyDescription | to_trusted"></p>
										</div>
										<!-- singel dashboard -->

									</div>
									<!-- dashboard cont -->

								</div>
								<!-- courses cont -->
							</div>

							<div class="tab-pane fade" id="reviews" role="tabpanel"
								aria-labelledby="reviews-tab">

								<div class="row">
									<div class="col-lg-12 col-md-6">
										<div class="course-features">
											<ul>
												<li><strong> Address: </strong> <span>{{getmemberdetail.memberCompanyAddress1}} {{getmemberdetail.memberCompanyAddress2}} {{getmemberdetail.memberCompanyAddress3}}</span></li>
												<li><strong> Email: </strong> <span>
														{{getmemberdetail.memberCompanyEmail}} </span></li>
												<li><strong> Mobile: </strong> <span>
														{{getmemberdetail.memberCompanyMobileNumber}} </span></li>
												<li><strong> Website: </strong> <span>
														{{getmemberdetail.memberWebsiteName}} </span></li>
											</ul>
										</div>
										<!-- course features -->
									</div>
								</div>
							</div>


						</div>
						<!-- tab content -->
					</div>
					<!-- teachers right -->
				</div>
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</section>




	<!--/#footer START-->
	<%@include file="footer.jsp"%>
	<!--/#footer END-->







	<!-- includes function START-->
	<script>
		w3IncludeHTML();
	</script>
	<!-- includes function END-->



	<script
		src="<%=request.getContextPath()%>/resources/front/js/vendor/modernizr-3.6.0.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/front/js/vendor/jquery-1.12.4.min.js"></script>

	<!--====== Bootstrap js ======-->
	<script
		src="<%=request.getContextPath()%>/resources/front/js/bootstrap.min.js"></script>

	<!--====== Slick js ======-->
	<script
		src="<%=request.getContextPath()%>/resources/front/js/slick.min.js"></script>

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
	<script src="<%=request.getContextPath() %>/resources/front/js/jquery.countdown.min.js"></script>

	<!--====== Validator js ======-->
	<script src="<%=request.getContextPath() %>/resources/front/js/validator.min.js"></script>

	<!--====== Ajax Contact js ======-->
	<script src="<%=request.getContextPath() %>/resources/front/js/ajax-contact.js"></script>

	<!--====== Main js ======-->
	<script src="<%=request.getContextPath() %>/resources/front/js/main.js"></script>

	<!--====== Map js ======-->
	<!--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDC3Ip9iVC0nIxC6V14CKLQ1HZNF_65qEQ"></script>
<script src="js/map-script.js"></script>-->



	<script
		src='https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/owl.carousel.js'></script>




	<script src="<%=request.getContextPath() %>/resources/front/js/index.js"></script>



</body>
</html>
