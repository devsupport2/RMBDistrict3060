<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title> Events | RMB District 3060 </title>

<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath() %>/resources/front/images/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath() %>/resources/front/images/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath() %>/resources/front/images/favicon/favicon-16x16.png">
<link rel="manifest" href="images/favicon/site.webmanifest">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">


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

<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700;900&display=swap" rel="stylesheet">

<link rel='stylesheet prefetch' href='<%=request.getContextPath() %>/resources/front/css/owl.carousel.min.css'>
<link rel='stylesheet prefetch' href='<%=request.getContextPath() %>/resources/front/css/owl.theme.default.min.css'>
<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/event_detail.js"></script>
		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/footer_links.js"></script>

</head>

<body ng-app="rcbs" ng-controller="eventDetailCtrl" ng-init="getEventDetailById(<%= request.getParameter("id")%>, <%= session.getAttribute("memberid")%>)" ng-cloak>




<!--/header START-->
<%@include file="header.jsp" %>
<!--/header END-->






<!--====== PAGE BANNER PART START ======-->

<section id="page-banner" class="bg_cover" data-overlay="8"
		style="background-image: url(images/page-banner-1.jpg)">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="page-banner-cont">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a
									href="<%=request.getContextPath()%>/index">Home</a></li>
								<li class="breadcrumb-item"><a
									href="<%=request.getContextPath()%>/events"> Events </a></li>
								<li class="breadcrumb-item active" aria-current="page"
									style="color: white;">Event Details</li>
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




	<!--====== EVENTS PART START ======-->

	<section style="background: #f8f9fa;" id="event-singel"
		class="pt-120 pb-120 gray-bg">
		<div class="container">
			<div class="events-area">
				<div class="row">
					<div class="col-lg-8">
						<div class="events-left">
							<h3>{{geteventdetailbyid.eventTitle}}</h3>
							<span> On </span> <span><i
								class="fa fa-calendar"></i> {{geteventdetailbyid.eventDate |
								date: 'dd/MM/yyyy'}}</span> <span><i class="fa fa-clock-o"></i>
								{{geteventdetailbyid.eventTime}} </span> <span><a
								href="{{geteventdetailbyid.eventMapLocation}}" target="_blank"
								style="color: #8a8a8a;"><i class="fa fa-map-marker"></i>
									{{geteventdetailbyid.eventVenue}} </a></span> <img
								src="{{eventrelatedimages[0].image}}" alt="Event">

							<h6>{{geteventdetailbyid.eventSubtitle}}</h6>

							<p class="text"
								ng-bind-html="geteventdetailbyid.eventDescription | to_trusted"></p>

						</div>
						<!-- events left -->
					</div>


					<div class="col-lg-4" ng-if="<%=request.getParameter("id")%> != 7">
						<div class="events-right">

							<div class="button text-right"
								ng-show="!<%=session.getAttribute("memberid")%>">
								<a data-toggle="modal" data-target="#myModal1" class="reg-btn"
									type="submit" style="color: white;"> Register </a> <a href="#"
									ng-show="registrationStatus!='Success' && (paymentStatus != 'Success' || reqpaid == 'Yes')"
									data-toggle="modal" data-target="#ConfirmModal"
									class="directory-btn"> Event Partcipants Directory </a>
							</div>

							<div class="col-md-4 text-center"
								ng-show="<%=session.getAttribute("memberid")%>">
								<button
									ng-show="paymentStatus != 'Success' && registrationStatus == 'Success' && reqpaid == 'Yes'"
									ng-click="redirectToPayNowPage(<%=session.getAttribute("memberid")%>,geteventdetailbyid.eventId)"
									class="btn btn-lg btn-success btn-block btn-signin">Pay
									Now</button>
								<button ng-show="registrationStatus != 'Success' "
									ng-click="redirectToRegisterpage(<%=session.getAttribute("memberid")%>,geteventdetailbyid.eventId)"
									class="reg-btn">Register</button>
								<label
									ng-show="registrationStatus=='Success' && paymentStatus == 'Success' " class="alert alert-success" >Registered
									<i class="fa fa-check-circle" aria-hidden="true"></i></label> 
									<label
									ng-show="registrationStatus=='Success' && reqpaid != 'Yes' " class="alert alert-success">Registered
									<i class="fa fa-check-circle" aria-hidden="true"></i></label>
							</div>

							<div class="card mt-40"  ng-hide="geteventchargesbyid.amount == 0 && geteventdetailbyid.paid!='Yes'">

								<div class="card-header">
									<h6 style="color: #023497;" class="mb-0">Registration
										Charges</h6>
								</div>


								<div class="card-body px-0 pt-0 pb-0">
									<ul class="list-group list-group-flush border-top border-color">

										<li class="list-group-item">
											<div class="row align-items-center"
												ng-repeat="r in geteventchargesbyid">

												<div class="col align-self-center pr-0">
													<p class="mb-1 font-weight-500">{{r.registrationFor}}</p>
												</div>

												<div class="col-auto">
													<p class="text-dark font-weight-500">{{r.currencyCode}}
														{{r.amount | number:2}}</p>

												</div>

											</div>

										</li>

									</ul>
								</div>
							</div>
							
						</div>
						<!-- events right -->
					</div>

					<div class="modal fade" id="myModal1" role="dialog">
						<div class="modal-dialog modal-xs">
							<div class="modal-content">
								<!-- <div class="modal-header">
				         
				        </div> -->
								<div class="modal-body">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<div class="account-wall">
										<form class="form-signin" novalidate>
											<label>How do you want to register?</label>
											<div class="form-group">
												<label>Member Type</label> <select class="form-control"
													name="membertype" id="membertype" ng-model="membertype" >
													<option value="" >Member Type</option>
													<!-- <option value="RMB District">RMB District</option>
													<option value="Others">Others</option> -->
													
													<option ng-repeat="items in geteventchargesbyid" value="{{items.eventChargeId}}"> {{items.registrationFor}}&nbsp&nbsp:<span > &nbsp{{items.currencyCode}}{{items.amount}}</span></option>
												</select>
												<p ng-show="errorType == 1"
													style="color: red; font-size: 14px;">{{msgType}}</p>
											</div>
											<button style="margin-top:15px"
												ng-click="redirectToNextPage(membertype,<%=request.getParameter("id")%>)"
												class="btn btn-primary btn-block" type="submit">Submit</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- row -->
			</div>
			<!-- events-area -->
		</div>
		<!-- container -->
	</section>

<!--====== EVENTS PART ENDS ======-->




<!--/#footer START-->
<%@include file="footer.jsp" %>
<!--/#footer END-->






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



<script src='https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/owl.carousel.js'></script>




<script  src="<%=request.getContextPath() %>/resources/front/js/index.js"></script>




</body>
</html>
