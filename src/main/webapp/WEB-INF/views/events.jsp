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
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/events.js"></script>
		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/footer_links.js"></script>

</head>

<body ng-app="rcbs" ng-controller="frontEventCtrl" ng-cloak ng-init="upcomingevent()">



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
								<li class="breadcrumb-item active" aria-current="page">
									Events</li>
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

	<section style="background: #f8f9fa;" id="event-page"
		class="pt-90 pb-120">
		<div class="container">


			<div class="row">
				<div class="col-lg-12">
					<nav class="event-tab">
						<ul class="pagination justify-content-center">
							<li class="page-item"><a ng-class="{active : ActiveTab == 'Upcoming'}" ng-click="upcomingevent()"
							href="#">
									Upcoming Events </a></li>
							<li class="page-item"><a ng-class="{active : ActiveTab == 'Past'}" href="#" ng-click="pastevent()"> Past Events </a></li>
						</ul>
					</nav>
					<!-- event Tabs -->
				</div>
			</div>
			<!-- row -->




			<div class="row">

				<div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
					<div class="singel-event-list mt-30"
						ng-repeat="item in events | orderBy : 'eventDate'"
						>

						<div class="event-thum">
							<a
								href="<%=request.getContextPath()%>/event_details?id={{item.eventId}}">
								<img src="{{item.event_image}}" alt="Event">
							</a>
							
						</div>
						<div class="event-cont">
						<div class="row">
						
						<div class="col-md-8">
							<a  
								href="<%=request.getContextPath()%>/event_details?id={{item.eventId}}"><h4>{{item.eventTitle}}</h4></a>
						</div>	
							<div class="col-lg-4" ng-if="<%=request.getParameter("id")%> != 7">
						<div class="events-right" style="float:right; padding-top: 0; ">

							<div class="button text-right"
								ng-show="!<%=session.getAttribute("memberid")%>">
								<a data-toggle="modal" data-target="#myModal1" class="reg-btn"
									type="submit" style="color: white;" ng-click="GetDetailsOfcharges()"> Register </a> 
							</div>
							</div>
						<!-- events right -->
					</div>
							</div>
							
							<span><i class="fa fa-user-o"></i> Post by: Admin </span> <span><i
								class="fa fa-calendar"></i> {{item.eventDate | date:
								'dd/MM/yyyy'}}</span> <span><i class="fa fa-clock-o"></i>
								{{item.eventTime}} </span> <span><a
								href="{{item.eventMapLocation}}" target="_blank"
								style="color: #8a8a8a;"><i class="fa fa-map-marker"></i>
									{{item.eventVenue}}</a> </span>
							<h6>
								<a
									href="<%=request.getContextPath()%>/event_details?id={{item.eventId}}">
									{{item.eventSubtitle}} </a>
							</h6>
							<p class="text" ng-bind-html="item.eventDescription | to_trusted"></p>
						</div>

					</div>
				</div>


				<%-- <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
					<div class="singel-event-list mt-30">

						<div class="event-thum">
							<a href="<%=request.getContextPath()%>/upcoming_event_details"> <img
								src="<%=request.getContextPath()%>/resources/front/images/event/event-3.jpg" alt="Event">
							</a>
						</div>
						<div class="event-cont">
							<a href="#"><h4>Online Business Conclave</h4></a> <span><i
								class="fa fa-user-o"></i> Post by: Admin </span> <span><i
								class="fa fa-calendar"></i> 2 December 2018</span> <span><i
								class="fa fa-clock-o"></i> 8:30 am </span> <span><i
								class="fa fa-map-marker"></i> Rc Auditorim</span>
							<h6>
								<a href="<%=request.getContextPath()%>/upcoming_event_details"> More than 400
									Businesses at one place </a>
							</h6>
							<p>
								<a href="<%=request.getContextPath()%>/upcoming_event_details"> RMB ONCLAVE is an
									unique online business conclave that brings together business
									persons including RMBians and Rotarians from India and
									international districts along with businesses outside of
									Rotary, onto an online platform to enable business during these
									challenging times. </a>
							</p>
						</div>

					</div>
				</div> --%>

				<%-- <div class="col-lg-12 col-md-12 col-sm-6 col-xs-12">
					<div class="singel-event-list mt-30">

						<div class="event-thum">
							<a href="<%=request.getContextPath()%>/upcoming_event_details"> <img
								src="<%=request.getContextPath()%>/resources/front/images/event/event-3.jpg" alt="Event">
							</a>
						</div>
						<div class="event-cont">
							<a href="<%=request.getContextPath()%>/upcoming_event_details"><h4>Online Business
									Conclave</h4></a> <span><i class="fa fa-user-o"></i> Post by:
								Admin </span> <span><i class="fa fa-calendar"></i> 2 December
								2018</span> <span><i class="fa fa-clock-o"></i> 8:30 am </span> <span><i
								class="fa fa-map-marker"></i> Rc Auditorim</span> <span><i
								class="fa fa-video-camera"></i> Zoom Call </span>
							<h6>
								<a href="<%=request.getContextPath()%>/upcoming_event_details"> More than 400
									Businesses at one place </a>
							</h6>
							<p>
								<a href="<%=request.getContextPath()%>/upcoming_event_details"> RMB ONCLAVE is an
									unique online business conclave that brings together business
									persons including RMBians and Rotarians from India and
									international districts along with businesses outside of
									Rotary, onto an online platform to enable business during these
									challenging times. </a>
							</p>
						</div>

					</div>
				</div> --%>



			</div>
			<!-- container -->
	</section>
    <!--====== EVENTS PART ENDS ======-->



<!--/#footer START-->
<%@include file="footer.jsp" %>
<!--/#footer END-->



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
													
													<option ng-repeat="items in geteventchargesbyid"  value="{{items.eventChargeId}}"> {{items.registrationFor}} : {{items.amount}}</option>
												</select>
												<p ng-show="errorType == 1"
													style="color: red; font-size: 14px;">{{msgType}}</p>
											</div>
											<button style="margin-top: 15px;"
												ng-click="redirectToNextPage(membertype,eventId)"
												class="btn btn-primary btn-block" type="submit">Submit</button>
										</form>
									</div>
								</div>
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
