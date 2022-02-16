<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title> RMB District 3060 </title>

<!--<link rel="shortcut icon" href="images/favicon.png" type="image/png">-->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/slick.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/nice-select.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/jquery.nice-number.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/magnific-popup.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/default.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/resources/front1/css/animate.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath() %>/resources/front1/css/prettyPhoto.css" rel="stylesheet">
	
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front/css/responsive.css">

<%-- <link href="<%=request.getContextPath() %>/resources/front1/css/main.css" rel="stylesheet">	  --%>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700;900&display=swap" rel="stylesheet">


<link rel='stylesheet prefetch' href='https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/assets/owl.carousel.min.css'>
<link rel='stylesheet prefetch' href='https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/assets/owl.theme.default.min.css'>
<!-- // -->

	<%-- 	<script src="<%=request.getContextPath() %>/resources/front1/js/jquery.js"></script> --%>
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
		<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/64754/autosize.min.js'></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/wow.min.js"></script>	
		<script src="<%=request.getContextPath() %>/resources/front1/js/jquery.prettyPhoto.js"></script>
		<script src="<%=request.getContextPath() %>/resources/front1/js/jquery.isotope.min.js"></script>
	
<!-- // -->	

		
	<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
<%-- 	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script> --%>
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/frontslider.js"></script>
	
	<script 
src="<%=request.getContextPath() %>/resources/admin/js/controller/footer_links.js"></script>
	
	<style>
			#foo,#cover{
				height: 180px;
				overflow: hidden;
				background: #fff;
				display: inline-block;
				vertical-align: top;
				margin-bottom: 8px;
			}
			img{
				max-width: 100%;
				height: auto;
			}
			#cover{
				background-size:cover;
				background-position:50% 50%;
			}
			#photo-gallery .divider {
			    width: 100%;
			    margin: 20px auto 15px;
			    position: relative;
			    height: 1px;
			    -webkit-backface-visibility: hidden;
			    -webkit-transform: translateZ(0) scale(1, 1)
			}
			#photo-gallery .divider::after {
			    height: 1px;
			    background: #e8e8e8;
			    background: -moz-linear-gradient(left, transparent 0, rgba(0, 0, 0, .09) 35%, rgba(0, 0, 0, .09) 70%, transparent 100%);
			    background: -webkit-gradient(linear, left top, right top, color-stop(0, transparent), color-stop(35%, rgba(0, 0, 0, .09)), color-stop(70%, rgba(0, 0, 0, .09)), color-stop(100%, transparent));
			    background: -webkit-linear-gradient(left, transparent 0, rgba(0, 0, 0, .09) 35%, rgba(0, 0, 0, .09) 70%, transparent 100%);
			    background: -o-linear-gradient(left, transparent 0, rgba(0, 0, 0, .09) 35%, rgba(0, 0, 0, .09) 70%, transparent 100%);
			    background: -ms-linear-gradient(left, transparent 0, rgba(0, 0, 0, .09) 35%, rgba(0, 0, 0, .09) 70%, transparent 100%);
			    background: linear-gradient(to right, transparent 0, rgba(0, 0, 0, .09) 35%, rgba(0, 0, 0, .09) 70%, transparent 100%);
			    position: absolute;
			    bottom: -1px;
			    content: "";
			    width: 100%;
			    left: 0
			}
			#photo-gallery .shadow,
			#photo-gallery .shadow-narrow {
			    position: relative;
			    background-color: #fff
			}
			
			#photo-gallery .service-block {
			    margin-bottom: 20px;
			    border-radius: 0;
			    border: 1px solid #f1f1f1;
			    padding: 10px 10px 0
			}
			
			#photo-gallery .shadow-narrow::before,
			#photo-gallery .shadow::before {
			    position: absolute;
			    left: 0;
			    height: 60%;
			    bottom: 0;
			    width: 100%;
			    content: "";
			    background-color: #fff;
			    z-index: 2
			}
			
			#photo-gallery .shadow-narrow::after,
			#photo-gallery .shadow::after {
			    content: "";
			    position: absolute;
			    height: 50%;
			    width: 96%;
			    left: 50%;
			    bottom: 2px;
			    margin-left: -48%;
			    -webkit-box-shadow: 0 5px 7px #999;
			    box-shadow: 0 5px 7px #999;
			    z-index: 1;
			    border-radius: 0;
			    -webkit-transition: all .3s ease-in-out;
			    -o-transition: all .3s ease-in-out;
			    transition: all .3s ease-in-out
			}
			
			#photo-gallery .shadow-narrow:hover::after,
			#photo-gallery .shadow:hover::after {
			    bottom: 10px
			}
			
			#photo-gallery .icon.bg-df {
			    background-color: #09afdf;
			    color: #fff
			}
			
			#photo-gallery .service-block .icon {
			    margin-bottom: 10px
			}
			
			#photo-gallery .icon {
			    display: inline-block;
			    text-align: center;
			    background-color: rgba(255, 255, 255, .85);
			    color: #000;
			    font-size: 24px;
			    width: 60px;
			    height: 60px;
			    line-height: 58px;
			    transition: all .2s ease-in-out;
			    border-radius: 0;
			    transform: rotate(45deg);
			    border: 1px solid transparent
			}
			
			#photo-gallery .shadow *,
			.shadow-narrow * {
			    position: relative;
			    z-index: 3
			}
			
			#photo-gallery .service-block h3 {
			    font-size: 12px;
			    color: #787878;
			    font-weight: 600;
			    line-height: 24px;
			    text-transform: uppercase;
			    border-top: 1px solid #eee;
			    margin-top: 0;
			    margin-bottom: 0;
			    padding: 10px 0;
			    white-space: nowrap;
			    overflow: hidden;
			    text-overflow: ellipsis
			}
			
			#photo-gallery .service-block p {
			    clear: both;
			    margin-bottom: 15px
			}
			
			#photo-gallery .icon i {
			    position: relative;
			    z-index: 1;
			    transform: rotate(-45deg)
			}
			
			#photo-gallery .call-action-style1 {
			    border: 1px solid #e8e8e8;
			    box-shadow: 0 0 25px rgba(0, 0, 0, .04) inset;
			    -o-box-shadow: 0 0 25px rgba(0, 0, 0, .04) inset;
			    -moz-box-shadow: 0 0 25px rgba(0, 0, 0, .04) inset;
			    -webkit-box-shadow: 0 0 25px rgba(0, 0, 0, .04) inset
			}
		</style>	
</head>

<body  ng-app="rcbs" ng-controller="SliderCtrl" ng-init=" getTopMemberMeeting() || getTopMemberBusiness() || getTopReferal()">

<!--====== PRELOADER PART START ======-->

 <div class="preloader">
<div class="loader rubix-cube">
<div class="layer layer-1"></div>
<div class="layer layer-2"></div>
<div class="layer layer-3 color-1"></div>
<div class="layer layer-4"></div>
<div class="layer layer-5"></div>
<div class="layer layer-6"></div>
<div class="layer layer-7"></div>
<div class="layer layer-8"></div> 
</div>
</div> 

<!--====== PRELOADER PART START ======-->
<%@include file="header.jsp" %>


<!--====== SEARCH BOX PART START ======-->

<div class="search-box">
<div class="serach-form">
<div class="closebtn">
<span></span>
<span></span>
</div>
<form action="#">
<input type="text" placeholder="Search by keyword">
<button><i class="fa fa-search"></i></button>
</form>
</div> <!-- serach form -->
</div>

<!--====== SEARCH BOX PART ENDS ======-->

<!--====== SLIDER PART START ======-->

<section id="slider-part" class="slider-active" >

<!--  <div class="single-slider bg_cover pt-150" style="background-image: url(resources/front/images/slider/s-1.jpg)" >
</div> 

<div class="single-slider bg_cover pt-150" style="background-image: url(resources/front/images/slider/s-2.jpg)">
</div>
 -->
<c:forEach items="${sliders}" var="slider" varStatus="status">
        <div class="single-slider bg_cover pt-150" style="background-image: url(${slider.image})">
</div>  
      </c:forEach>



	
</section>

<!--====== SLIDER PART ENDS ======-->




<!-- We offer Different Services-->
<section class="diff-offer-wrapper">
<div class="container">
<div class="row diff-offer">
<ul>
<li class="we-offer-cont">
<h2> Rotary Means Business <span> District 3060 </span></h2>
</li>
<li class="we-offer-cont2">
<p> Welcome to Rotary Means Business Fellowship chapter of  District 3060 Rotary Means Business is a Fellowship of Rotary International Today Rotarians are embracing the original foundations of what the Rotary Club was based on as we adhere to the Four Way Test.
<a style="color: #30cefa" class="pull-right" href="<%=request.getContextPath() %>/about_rmb3060"> read more <i class="fa fa-angle-double-right"></i> </a>
</p>
</li>
</ul>
</div>

</div>
</section>
<!-- We offer Different Services-->




<!--====== COUNT DOWN PART START ======-->
<section id="count-down-part" class="bg_cover">
<div class="container">
<div class="row align-items-center justify-content-center">

<div class="col-lg-6 col-md-8">
<div class="slider-cont-3 text-center">
<h2> I am Looking for... </h2>
<span>More then 3000+ Businesses for you</span>

<div class="slider-search mt-15 mb-15">
<form action="#">
<div class="row no-gutters">

<div class="col-sm-10">
<form role="form">
<input type="text" placeholder="Search keyword" id="search" ng-model="search" ng-keyup="$event.keyCode == 13 ? searchByCategory() : null">
</form>
</div>
<div class="col-sm-2">
<button type="button" class="main-btn" ng-click="searchByCategory1()"><i class="fa fa-search"></i></button>
</div>
</div> <!-- row -->
</form>
</div>

<p> Rotary Means Business encourages Rotarians to support the success of their fellow Rotarians by doing business with them, and by referring others to them. Fellowship of Rotary International Today Rotarians are embracing... </p>

</div> <!-- slider cont3 -->
</div>


<div class="col-lg-6">


<div  id="owl-2">
<div class="owl-carousel owl-theme">
<c:forEach items="${advertisement}" var="advertisement" varStatus="status">
<div><img class="img-responsive" src="${advertisement.image}"></div>
      </c:forEach>
<!--       
<div><img class="img-responsive" src="resources/front/images/banner/2.jpg"></div>
<div><img class="img-responsive" src="resources/front/images/banner/3.jpg"></div>
<div><img class="img-responsive" src="resources/front/images/banner/4.jpg"></div>
<div><img class="img-responsive" src="resources/front/images/banner/5.jpg"></div>
<div><img class="img-responsive" src="resources/front/images/banner/6.jpg"></div> -->

</div>
</div>
</div>



</div> <!-- row -->
</div> <!-- container -->
</section>
<!--====== COUNT DOWN PART ENDS ======-->



<!--====== About RMB District 3060  START ======-->
<section id="aboutrmb-part">
<div class="container">
<div class="row">

<div style="padding-right: 3%;" class="col-lg-6">
<div class="section-title mt-50">
<h5> About </h5>
<h2> RMB District 3060 </h2>
</div> <!-- section title -->
<div class="aboutrmb-cont">
<p> Rotary Means Business Fellowship chapter of  District 3060

Rotary Means Business is a Fellowship of Rotary International

Today Rotarians are embracing the original foundations of what the Rotary Club was based on as we adhere to the Four Way Test.

This fellowship operates in accordance with Rotary International policy, but is not an agency of, or controlled by, Rotary International. <a style="color: #30cefa" class="pull-right" href="<%=request.getContextPath() %>/about_rmb3060"> readmore <i class="fa fa-angle-double-right"></i> </a> </p>

</div> <!-- teachers cont -->
</div>

<div class="col-lg-6">
<div class="teachers1 mt-20">
<div class="row">

<div class="col-sm-6">
<div class="singel-teachers1 mt-30 text-center">
<div class="image">
<img src="<%=request.getContextPath() %>/resources/front/images/SantoshPradhan-2.jpg" alt="Rtn. Santosh Pradhan">
</div>
<div class="cont">
<a href="#"><h6>  Rtn. Santosh Pradhan  </h6></a>
<span> District Governor </span>
</div>
</div> <!-- singel -->
</div>


<div class="col-sm-6">
<div class="singel-teachers1 mt-30 text-center">
<div class="image">
<img src="<%=request.getContextPath() %>/resources/front/images/about/UserImg.png" style="height: 329px;" alt="Rtn. ">
</div>
<div class="cont">
<a href="teachers-singel.html"><h6> Rtn.  </h6></a>
<span> RMB Chair   </span>
</div>
</div> <!-- singel teachers -->
</div>



</div> <!-- row -->
</div> <!-- teachers -->
</div>

</div> <!-- row -->

<div class="row">
<div class="col-lg-12">
<div class="apply">
<div class="row no-gutters">
<div class="col-lg-6">
<div class="apply-cont apply-color-1">
<h3> Vision </h3>
<p> 
Rotary Means Business Fellowship chapter of District 3060 Rotary Means Business is a Fellowship of Rotary International Today Rotarians are embracing the original foundations of what the Rotary Club was based on as we.  </p>
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
<!--====== About RMB District 3060  ENDS ======-->






<!--====== COUNTER PART START ======-->
<div id="counter-part" class="bg_cover" data-overlay="9" style="background-image: url(resources/front/images/bg-2.jpg)">
<div class="container">
<div class="row">

<div class="col-lg-3 col-sm-6">
<div class="singel-counter text-center mt-40"> <!--  counter -->
<span><span class=""> {{AllCountList.fellowshipcount}}</span>+</span>
<p> Fellowships </p>
</div> <!-- singel counter -->
</div>

<div class="col-lg-2 col-sm-6">
<div class="singel-counter text-center mt-40">
<span><span class=""> {{AllCountList.membercount}}  </span>+</span>
<p> Members </p>
</div> <!-- singel counter -->
</div>

<div class="col-lg-2 col-sm-6">
<div class="singel-counter text-center mt-40">
<span><span class="">{{AllCountList.meetingcount}} </span>+</span>
<p> R2R Meetings </p>
</div> <!-- singel counter -->
</div>

<div class="col-lg-2 col-sm-6">
<div class="singel-counter text-center mt-40">
<span><span class="counter">{{AllCountList.refferalcount}}</span>+</span>
<p> References </p>
</div> <!-- singel counter -->
</div>

<div class="col-lg-3 col-sm-6">
<div class="singel-counter text-center mt-40">
<span><span class="counter">{{AllCountList.businesscount}}</span>+</span>
<p> Amount of business </p>
</div> <!-- singel counter -->
</div>

</div> <!-- row -->
</div> <!-- container -->
</div>
<!--====== COUNTER PART ENDS ======-->





<!-- Events Section -->
<!-- Events Section -->
<section class="events-section style-two" id=events>
		<div class="container">

			<div class="row align-items-end">
				<div class="col-lg-6 col-md-8 col-sm-7">
					<div class="section-title">
						<!--<h5>Publications</h5>-->
						<h2>Events</h2>
					</div>
					<!-- section title -->
				</div>
				<div class="col-lg-6 col-md-4 col-sm-5">
					<div class="products-btn text-right">
						<a href="<%=request.getContextPath() %>/events" class="main-btn"> View All Events </a>
					</div>
					<!-- products btn -->
				</div>
			</div>
			<!-- row -->


			<div class="row">

				<div class="event-block-one col-lg-4 col-md-6"
					ng-repeat="item in EventsByImagesdata | limitTo : 3"
					ng-if="item.eventDate >= todaydate">
					<div class="inner-box">
						<!--   resources/front/images/event/event-1.jpg -->
						<a href="<%=request.getContextPath()%>/event_details?id={{item.eventId}}">
						<div class="image">
								<img src="{{item.event_image}}" alt="{{item.eventTitle}}">
							</div></a>
						<div class="lower-content">
							<div class="date">
								<a href="<%=request.getContextPath()%>/event_details?id={{item.eventId}}"><h1>{{
										item.eventDate | date : "dd" }}</h1></a>
								<a href="<%=request.getContextPath()%>/event_details?id={{item.eventId}}">
								<div class="text">
										<span>{{ item.eventDate | date : "MMMM" }}</span> <br>{{
										item.eventDate | date : "EEEE" }}, {{item.eventTime}}
									</div></a>

								<h2>
									<a href="{{item.eventMapLocation}}" target="_blank"><i
										class="fa fa-map-marker" style="color: red;"></i></a>
								</h2>

							</div>

							<h4>
								<a
									href="<%=request.getContextPath()%>/event_details?id={{item.eventId}}">
									{{item.eventTitle}} </a>
							</h4>
							
							<h4>
								<a
									href="<%=request.getContextPath()%>/event_details?id={{item.eventId}}">
									@ {{item.eventVenue}} </a>
							</h4>
							
							<div class="location">
								<div class="text-desc" 
									ng-bind-html="item.eventDescription | to_trusted"></div>
							</div>

							<a 
								ng-show="!<%=session.getAttribute("memberid")%>"
								data-toggle="modal" data-target="#myModal1" type="submit"
								class="reg-btn" style="color:white;" ng-click="GetDetailsOfcharges()">Register Now </a> 
								
								<a
								class="main-btn" style="line-height: 37px;"
								href="<%=request.getContextPath()%>/event_details?id={{item.eventId}}">
								Know More </a>

						</div>



					</div>
				</div>
				<!-- 
				<div class="modal fade" id="myModal1" role="dialog">
					<div class="modal-dialog modal-xs">
						<div class="modal-content">
							<div class="modal-header">
				         
				        </div>
							<div class="modal-body">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<div class="account-wall">
									<form class="form-signin" novalidate>
										<label>How do you want to register?</label>
										<div class="form-group">
											<label>Member Type</label> <select class="form-control"
												name="membertype" id="membertype" ng-model="membertype">
												<option value="">Member Type</option>
												<option value="RMBF Madurai Member">RMBF Madurai Member</option>
												<option value="Others">Others</option>
											</select>
											<p ng-show="errorType == 1"
												style="color: red; font-size: 14px;">{{msgType}}</p>
										</div>
										<button ng-click="redirectToNextPage(membertype,eventid)"
											class="btn btn-primary btn-block" type="submit">Submit</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div> -->
				<!-- 
 <div class="event-block-one col-lg-4 col-md-6">
<div class="inner-box">
<div class="image"><img src="resources/front/images/event/event-2.jpg" alt=""></div>
<div class="lower-content">
<div class="date">
<h1>16</h1>
<div class="text"><span>October</span> <br>10.00am  - 12.00pm</div>
<h2> <i class="fa fa-map-marker"></i> </h2>
</div>
<h4><a href="#"> Meeting of Rotary Means Business Fellowship of Rotary District 3060</a></h4>

<a href="#" class="reg-btn"> Register Now </a>

</div>

</div>
</div> -->
				<!-- 
<div class="event-block-one col-lg-4 col-md-6">
<div class="inner-box">
<div class="image"><img src="resources/front/images/event/event-3.jpg" alt=""></div>
<div class="lower-content">
<div class="date">
<h1>05</h1>
<div class="text"><span>November</span> <br>10.00am  - 05.00pm</div>
<h2> <i class="fa fa-map-marker"></i> </h2>
</div>
<h4><a href="#"> Meeting of Rotary Means Business Fellowship of Rotary District 3060</a></h4>

<a href="#" class="md-btn"> Read More </a>

</div>
</div>


</div> 
 -->
			</div>
	</section>
<!-- Events Section -->




<!-- Top Performers Section -->
<section id="homeIntro"  class="team-section parallax first-widget">
<div class="container">
<div class="row m-0 justify-content-md-between align-items-end">
<div class="sec-title light">
<h1 style="white-space: nowrap;"> Top Performers of {{m}}-{{y}} in RMBF Erode United </h1>
<!--<div class="text">
of June 2020 in Rotary District 3060
</div>-->
</div>
<!--Link Btn-->

</div>

<div class="cause-wrapper">
<div class="row">

<!-- Cause Block Four -->
<div class="cause-block-four col-lg-4">
<div class="inner-box">

<div class="image">        

<img src="{{getTopmemberMeeting.profile_image}}"  onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'" style="  height:auto;width:42vh" alt="">
<img ng-if="!getTopmemberMeeting.profile_image"  >

</div>
<div class="lower-content">

<div class="wrapper-box">
<h4><a href="#"> {{getTopmemberMeeting.first_name}} {{getTopmemberMeeting.middle_name}}  {{getTopmemberMeeting.last_name}} </a></h4>

<div class="category1">
<h6 style="font-weight: normal; font-size: 26px;"> R2R MEETINGS: </h6>
<h6> {{getTopmemberMeeting.top_meetingcount}} </h6>
</div>

</div>
</div>
</div>
</div>



<!-- Cause Block Four -->
<div class="cause-block-four col-lg-4">
<div class="inner-box">
<div class="image">                                



<img src="{{getTopReferaldata.profile_image}}"  onerror="this.onerror=null;  this.src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'" style="  height:auto;width:42vh" alt="">
<img ng-if="!getTopReferaldata.profile_image"  >

<!--
<img src="{{getTopReferaldata.profile_image}}" ng-if="{{getTopReferaldata.profile_image}}" onerror="this.onerror=null;  this.src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'" style="  height:auto;width:42vh" alt="">
<img ng-if="!getTopReferaldata.profile_image"  >
-->

</div>
<div class="lower-content">
<div class="wrapper-box">
<h4><a href="#"> {{getTopReferaldata.first_name}} {{getTopReferaldata.middle_name}}  {{getTopReferaldata.last_name}} </a></h4>
<!-- <div class="text"> Rotary Club of Baroda </div> -->

<div class="category1">
<h6 style="font-weight: normal; font-size: 26px;">REFERENCES: </h6>
<h6> {{getTopReferaldata.top_referalcount}} </h6>
</div>

</div>
</div>
</div>
</div>

<!-- Cause Block Four -->
<div class="cause-block-four col-lg-4">
<div class="inner-box">
<div class="image">                                

<img src="{{getTopMemberBusinessdata.profile_image}}"  onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'" style="  height:auto;width:42vh" alt="">
<img ng-if="!getTopMemberBusinessdata.profile_image"  >
</div>
<div class="lower-content">
<div class="wrapper-box">
<h4><a href="#"> {{getTopMemberBusinessdata.first_name}} {{getTopMemberBusinessdata.middle_name}}  {{getTopMemberBusinessdata.last_name}} </a></h4>
<!-- <div class="text"> Rotary Club of Baroda </div> -->

<div class="category1">
<h6 style="font-weight: normal; font-size: 26px;"> BUSINESS: </h6>
<h6> ₹ {{getTopMemberBusinessdata.top_referalcount}} </h6>
</div>

</div>
</div>
</div>
</div>
</div>                
</div>


</div>
</section>






<!--====== CATEGORY PART START ======-->
<section id="category-2-part">
<div class="container">

<div class="row align-items-end">
<div class="col-lg-8 col-md-8 col-sm-7">
<div class="section-title">
<!--<h5>Publications</h5>-->
<h2> RMB Fellowships of RMB District 3060 </h2>
</div> <!-- section title -->
</div>
<div class="col-lg-4 col-md-4 col-sm-5">
<div class="products-btn text-right">
<a href="#" class="main-btn"> View All </a>
</div> <!-- products btn --><!-- Top Performers Section -->
</div>
</div>


<div class="row" >
<div class="col-lg-12">

<div class="category-2-items pt-10" >
<div class="row" >

<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12" ng-repeat="item in getAllFellowshipNameList">
<div class="singel-items text-center mt-30">
<div class="items-image">
<img src="<%=request.getContextPath() %>/resources/front/images/Fellowships-1.jpg" alt="">
</div>

<div class="items-cont" >
<a href="#">
<h5 ng-click="fellowshipdata(item.fellowship_id)"> {{item.fellowship_name}} </h5>
<!--<span>24 courses</span>-->
</a>
</div>
</div> <!-- singel items -->
</div>

<!-- 
<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
<div class="singel-items text-center mt-30">
<div class="items-image">
<img src="resources/front/images/Fellowships-1.jpg" alt="">
</div>
<div class="items-cont">
<a href="#">
<h5> Kheda Anand </h5>
<span>24 courses</span>
</a>
</div>
</div> singel items
</div>

<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
<div class="singel-items text-center mt-30">
<div class="items-image">
<img src="resources/front/images/Fellowships-1.jpg" alt="">
</div>
<div class="items-cont">
<a href="#">
<h5> Ankleshwar Bharuch </h5>
<span>24 courses</span>
</a>
</div>
</div> singel items
</div>


<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
<div class="singel-items text-center mt-30">
<div class="items-image">
<img src="resources/front/images/Fellowships-1.jpg" alt="">
</div>
<div class="items-cont">
<a href="#">
<h5> Surat </h5>
<span>24 courses</span>
</a>
</div>
</div> singel items
</div>


<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
<div class="singel-items text-center mt-30">
<div class="items-image">
<img src="resources/front/images/Fellowships-1.jpg" alt="">
</div>
<div class="items-cont">
<a href="#">
<h5> Rajkot </h5>
<span>24 courses</span>
</a>
</div>
</div> singel items
</div>



<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
<div class="singel-items text-center mt-30">
<div class="items-image">
<img src="resources/front/images/Fellowships-1.jpg" alt="">
</div>
<div class="items-cont">
<a href="#">
<h5> Vapi </h5>
<span>24 courses</span>
</a>
</div>
</div> singel items
</div>


<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
<div class="singel-items text-center mt-30">
<div class="items-image">
<img src="resources/front/images/Fellowships-1.jpg" alt="">
</div>
<div class="items-cont">
<a href="#">
<h5> Daman </h5>
<span>24 courses</span>
</a>
</div>
</div> singel items
</div>


<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
<div class="singel-items text-center mt-30">
<div class="items-image">
<img src="resources/front/images/Fellowships-1.jpg" alt="">
</div>
<div class="items-cont">
<a href="#">
<h5> Nadiad </h5>
<span>24 courses</span>
</a>
</div>
</div> singel items
</div>
 -->
</div> <!-- row -->
</div> <!-- category -->
</div>
</div> <!-- row -->
</div> <!-- container -->
</section>
<!--====== CATEGORY PART ENDS ======-->






 

<!--====== PUBLICATION PART START ======-->
	<section id="publication-part" class="gray-bg">
<div class="container">
<div class="row align-items-end">
<div class="col-lg-6 col-md-8 col-sm-7">
<div class="section-title ">
<h2>  Media Gallery   </h2>
</div> <!-- section title -->
</div>
<div class="col-lg-6 col-md-4 col-sm-5">
<div class="products-btn text-right">
<a href="<%=request.getContextPath()%>/gallery" class="main-btn"> View All </a>
</div> <!-- products btn -->
</div>
</div> <!-- row -->
<br>

<div class="row justify-content-center">




<%-- <c:forEach items="${albumOneImage}" var="albumOneImage" varStatus="status">
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">												
			<div class="singel-publication mt-30">										
				<a class="preview" href="${albumOneImage.image}" title="${albumOneImage.imageTitle}" rel="prettyPhoto[${status.index+1}]">
		<img class="image" src="${albumOneImage.image}" alt="">
		</a>
		 <c:forEach items="${albumImages}" var="albumImages" varStatus="status1">
		<c:if test="${albumImages.albumId == albumOneImage.albumId && albumImages.albumId != albumOneImage.albumId}">
			<a href="${albumImages.image}" rel="prettyPhoto[${status.index+1}]" title="${albumImages.imageTitle}"></a>
		</c:if>		
		</c:forEach>		 									
		<h3 class="name"> ${albumOneImage.albumTitle} </h3>
			</div>													
		</div>
</c:forEach>  --%>


<c:forEach items="${albumOneImage}" var="albumOneImage" varStatus="status">
<c:if test="${status.index < 1}">
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">												
			<div class="pv-30 ph-20 service-block bordered shadow text-center call-action-style1 object-non-visible animated object-visible fadeInDownSmall "
							data-animation-effect="fadeInDownSmall" data-effect-delay="100">										
				<a class="preview" href="${albumOneImage.image}" title="${albumOneImage.imageTitle}" rel="prettyPhoto[${status.index+1}]">
		<img class="img-responsive" src="${albumOneImage.image}" alt="">
		</a>
		 <c:forEach items="${albumImages}" var="albumImages" varStatus="status1">
		<c:if test="${albumImages.albumId == albumOneImage.albumId && status1.index != 0}">
			<a href="${albumImages.image}" rel="prettyPhoto[${status.index+1}]" title="${albumImages.imageTitle}"></a>
		</c:if>		
		</c:forEach>		 									
		<h3 class="name">${albumOneImage.albumTitle}  </h3>
			</div>													
		</div>
		</c:if>	
</c:forEach>



</div> <!-- row -->
</div> <!-- container -->
</section>




<!--====== FOOTER PART START ======-->
<footer id="footer-part">

		<%@include file="footer.jsp"%>
<%-- <footer id="footer-part">
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
<div class="col-md-4"> </div>
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
</div> <!-- footer copyright --> --%>
</footer>

<!--====== FOOTER PART ENDS ======-->

<!--====== BACK TO TP PART START ======-->

<a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

<!--====== BACK TO TP PART ENDS ======-->





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
													
													<option ng-repeat="items in geteventchargesbyid" value="{{items.eventChargeId}}"> {{items.registrationFor}} : {{items.amount}}</option>
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
<%-- <script src="<%=request.getContextPath() %>/resources/front/js/vendor/jquery-1.12.4.min.js"></script> --%>

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

<script>

//Pretty Photo
$(document).ready(function () {
$("a[rel^='prettyPhoto']").prettyPhoto({
	social_tools: false
});	
});
</script>

</body>
</html>
