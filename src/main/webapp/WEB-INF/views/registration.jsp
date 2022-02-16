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
<link href="<%=request.getContextPath() %>/resources/admin/css/toastr.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;600;700;900&display=swap" rel="stylesheet">

<link rel='stylesheet prefetch' href='<%=request.getContextPath() %>/resources/front/css/owl.carousel.min.css'>
<link rel='stylesheet prefetch' href='<%=request.getContextPath() %>/resources/front/css/owl.theme.default.min.css'>
<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	<%if(session.getAttribute("sitepreference").toString().equalsIgnoreCase("MOBILE")){ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>
		<%}else{ %>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<%} %>	
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/registration.js"></script>
     
     
     
     
     <style>

#success_tic .page-body{
  max-width:300px;
  background-color:#FFFFFF;
  margin:10% auto;
}
 #success_tic .page-body .head{
  text-align:center;
}
/* #success_tic .tic{
  font-size:186px;
} */
#success_tic .close{
      opacity: 1;
    position: absolute;
    right: 0px;
    font-size: 30px;
    padding: 3px 15px;
  margin-bottom: 10px;
}
#success_tic .checkmark-circle {
  width: 150px;
  height: 150px;
  position: relative;
  display: inline-block;
  vertical-align: top;
}
.checkmark-circle .background {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  background: #1ab394;
  position: absolute;
}
#success_tic .checkmark-circle .checkmark {
  border-radius: 5px;
}
#success_tic .checkmark-circle .checkmark.draw:after {
  -webkit-animation-delay: 300ms;
  -moz-animation-delay: 300ms;
  animation-delay: 300ms;
  -webkit-animation-duration: 1s;
  -moz-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-timing-function: ease;
  -moz-animation-timing-function: ease;
  animation-timing-function: ease;
  -webkit-animation-name: checkmark;
  -moz-animation-name: checkmark;
  animation-name: checkmark;
  -webkit-transform: scaleX(-1) rotate(135deg);
  -moz-transform: scaleX(-1) rotate(135deg);
  -ms-transform: scaleX(-1) rotate(135deg);
  -o-transform: scaleX(-1) rotate(135deg);
  transform: scaleX(-1) rotate(135deg);
  -webkit-animation-fill-mode: forwards;
  -moz-animation-fill-mode: forwards;
  animation-fill-mode: forwards;
}
#success_tic .checkmark-circle .checkmark:after {
  opacity: 1;
  height: 75px;
  width: 37.5px;
  -webkit-transform-origin: left top;
  -moz-transform-origin: left top;
  -ms-transform-origin: left top;
  -o-transform-origin: left top;
  transform-origin: left top;
  border-right: 15px solid #fff;
  border-top: 15px solid #fff;
  border-radius: 2.5px !important;
  content: '';
  left: 35px;
  top: 80px;
  position: absolute;
}


#success_tic .checkmark-circle {
    width: 150px;
    height: 150px;
    position: relative;
    display: inline-block;
    vertical-align: top;
}


#success_tic .checkmark-circle .background {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    background: #3de360;
    position: absolute;
}

@-webkit-keyframes checkmark {
  0% {
    height: 0;
    width: 0;
    opacity: 1;
  }
  20% {
    height: 0;
    width: 37.5px;
    opacity: 1;
  }
  40% {
    height: 75px;
    width: 37.5px;
    opacity: 1;
  }
  100% {
    height: 75px;
    width: 37.5px;
    opacity: 1;
  }
}
@-moz-keyframes checkmark {
  0% {
    height: 0;
    width: 0;
    opacity: 1;
  }
  20% {
    height: 0;
    width: 37.5px;
    opacity: 1;
  }
  40% {
    height: 75px;
    width: 37.5px;
    opacity: 1;
  }
  100% {
    height: 75px;
    width: 37.5px;
    opacity: 1;
  }
}
@keyframes checkmark {
  0% {
    height: 0;
    width: 0;
    opacity: 1;
  }
  20% {
    height: 0;
    width: 37.5px;
    opacity: 1;
  }
  40% {
    height: 75px;
    width: 37.5px;
    opacity: 1;
  }
  100% {
    height: 75px;
    width: 37.5px;
    opacity: 1;
  }
}





#fail_tic .page-body{
  max-width:300px;
  background-color:#FFFFFF;
  margin:10% auto;
}
 #fail_tic .page-body .head{
  text-align:center;
}
/* #success_tic .tic{
  font-size:186px;
} */
#fail_tic .close{
      opacity: 1;
    position: absolute;
    right: 0px;
    font-size: 30px;
    padding: 3px 15px;
  margin-bottom: 10px;
}
#fail_tic .checkmark-circle {
  width: 150px;
  height: 150px;
  position: relative;
  display: inline-block;
  vertical-align: top;
}
#fail_tic .checkmark-circle .background {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  background: #1ab394;
  position: absolute;
}
#fail_tic .checkmark-circle .checkmark {
  border-radius: 5px;
}
#fail_tic .checkmark-circle .checkmark.draw:after {
  -webkit-animation-delay: 300ms;
  -moz-animation-delay: 300ms;
  animation-delay: 300ms;
  -webkit-animation-duration: 1s;
  -moz-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-timing-function: ease;
  -moz-animation-timing-function: ease;
  animation-timing-function: ease;
  -webkit-animation-name: checkmark;
  -moz-animation-name: checkmark;
  animation-name: checkmark;
  -webkit-transform: scaleX(-1) rotate(135deg);
  -moz-transform: scaleX(-1) rotate(135deg);
  -ms-transform: scaleX(-1) rotate(135deg);
  -o-transform: scaleX(-1) rotate(135deg);
  transform: scaleX(-1) rotate(135deg);
  -webkit-animation-fill-mode: forwards;
  -moz-animation-fill-mode: forwards;
  animation-fill-mode: forwards;
}
#fail_tic .checkmark-circle .checkmark:after {
  opacity: 1;
  height: 75px;
  width: 37.5px;
  -webkit-transform-origin: left top;
  -moz-transform-origin: left top;
  -ms-transform-origin: left top;
  -o-transform-origin: left top;
  transform-origin: left top;
  border-right: 15px solid #fff;
  border-top: 15px solid #fff;
  border-radius: 2.5px !important;
  content: '';
  left: 35px;
  top: 80px;
  position: absolute;
}


#fail_tic .checkmark-circle {
    width: 150px;
    height: 150px;
    position: relative;
    display: inline-block;
    vertical-align: top;
}


#fail_tic .checkmark-circle .background {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    background: #d72619;
    position: absolute;
}





</style>



     
     
     
     
</head>

<body class="homepage"  ng-app="rcbs" ng-controller="registrationCtrl" ng-init="getLogedinMemberDetails(<%= session.getAttribute("memberid")%>,<%= request.getParameter("eid")%>) || eventCharges(<%= request.getParameter("membertype")%>)">



<!--/header START-->
<%@include file="header.jsp" %>
<!--/header END-->



<section id="page-banner"  style="background: #e9ecef">
	
	<div class="container">
	<div class="row">
	<div class="col-lg-12">
	<div class="page-banner-cont">
	<nav aria-label="breadcrumb">
	<ol class="breadcrumb">
	<li class="breadcrumb-item"><a href="#">Home</a></li>
	<li class="breadcrumb-item active" aria-current="page">  Events </li>
	</ol>
	</nav>
	</div>  <!-- page banner cont -->
	</div>
	</div> <!-- row -->
	</div> <!-- container -->
	</section>
<!--====== PAGE BANNER PART ENDS ======-->




    <!--====== EVENT registration PART START ======-->
    
    <section style="    background: #f8f9fa;" id="event-reg" class="pt-70 pb-120 gray-bg">
     <form ng-submit="registration(<%= request.getParameter("eid")%>, <%= session.getAttribute("memberid")%>,'<%= request.getParameter("membertype")%>') " >
        <div class="container">
            <div class="row">

                <div class="col-lg-1"></div>

                <div class="col-lg-10">
                    <div class="event-reg-from mt-30">

                        <div class="section-title">
                            <h5> Get Registered as {{getChargesValues.registrationFor}} for {{geteventdetailbyid.eventTitle}} </h5>
                        </div> <!-- section title -->

                        <div class="main-form pt-20">
                            <form id="contact-form" >

                                <div class="row">

                                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                        <div class="singel-form form-group">
                                            <label> Company Name </label>
                                            <input type="text" placeholder="Company Name" id="rtcmpadd" name="rtcmpadd" ng-model="rtcmpadd"  ng-change="setFlag()">
                                         <p ng-show="errorCompany == 1" style="color: red; font-size: 14px;">{{msgCompany}}</p>
                                        </div> <!-- singel form -->
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                        <div class="singel-form form-group">
                                            <label> First Name <font color="red" size="3">*</font> </label>
                                            <input  type="text" id="firstnameadd" name="firstnameadd"  ng-model="firstnameadd" placeholder="First Name"  ng-change="setFlag()">
                                            <p ng-show="errorFirstName == 1" style="color: red; font-size: 14px;">{{msgFirstName}}</p>
                                        </div> <!-- singel form -->
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                        <div class="singel-form form-group">
                                            <label> Last Name <font color="red" size="3">*</font> </label>
                                            <input type="text" id="lastnameadd" name="lastnameadd" ng-model="lastnameadd" placeholder="Last Name" ng-change="setFlag()" style="margin-top: 0px;">
                                            <p ng-show="errorLastName == 1" style="color: red; font-size: 14px;">{{msgLastName}}</p>
                                        </div> <!-- singel form --> 
                                    </div>

                                </div> <!-- row -->




                                <div class="row">

                                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                        <div class="singel-form form-group">
                                            
                                            <div class="form-group">
                                                <label>Gender <font color="red" size="3">*</font></label>
                                                <select class="form-control input-lg" id="genderadd" name="genderadd" ng-model="genderadd"  ng-change="setFlag()">
                                            <option value="" >Gender</option>
											<option value="M">Male</option>
											<option value="F">Female</option>
											<option value="O">Other</option>
                                                </select>
                                            </div>
                                            <p ng-show="errorGender == 1" style="color: red; font-size: 14px;">{{msgGender}}</p>
                                        </div> <!-- singel form -->
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                        <div class="singel-form form-group">
                                            <label> Email  <font color="red" size="3">*</font></label>
                                            <input type="email" id="emailadd" name="emailadd" ng-model="emailadd" placeholder="Email" style="margin-top: 0px;"  ng-change="setFlag()">
                                          <p ng-show="errorEmail == 1" style="color: red; font-size: 14px;">{{msgEmail}}</p>
                                        </div> <!-- singel form -->
                                    </div>

                                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                        <div class="singel-form form-group">
                                            <label> Mobile  <font color="red" size="3">*</font></label>
                                            <input type="text" id="mobilenoadd" name="mobilenoadd" ng-model="mobilenoadd" placeholder="Mobile No" class="" style="margin-top: 0px;"  ng-change="setFlag()">
                                          <p ng-show="errorMobileno == 1" style="color: red; font-size: 14px;">{{msgMobileno}}</p>
                                        </div> <!-- singel form --> 
                                    </div>

                                </div> <!-- row -->




                                <div class="row">

                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="singel-form form-group">
                                            <label> Company Website </label>
                                            <input type="text" id="rtwebsiteadd" name="rtwebsiteadd" ng-model="rtwebsiteadd" placeholder="Company Website" class="" style="margin-top: 0px;"  ng-change="setFlag()">
                                           <p ng-show="errorMobileno == 1" style="color: red; font-size: 14px;">{{msgMobileno}}</p>
                                        </div> <!-- singel form -->
                                    </div>



                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="singel-form form-group">
                                            
                                            <div class="form-group">
                                                <label> Country <font color="red" size="3">*</font></label>
                                                <select class="form-control input-lg" id="countryidadd" name="countryidadd" ng-model="countryidadd" ng-init="countryidadd=1"  ng-change="setFlag()">
                                                  <option value="">Select Country</option>
											<option ng-repeat="c in getcountry" value="{{c.countryId}}">{{c.countryName}}</option>
										</select>
                                            </div>
                                        </div> <!-- singel form -->
                                    </div>


          
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" ng-show="'<%= request.getParameter("membertype")%>' !='RMBFB Member' && !<%= session.getAttribute("memberid")%>">
										  <div class="singel-form form-group">
										<label class="mdl-textfield__label" for="password">Password</label>
										<input type="password" id="password" name="password" ng-model="password" placeholder="Password" class="mdl-textfield__input" style="margin-top: 0px;" ng-change="setFlag()">
										
										<p ng-show="errorPassword == 1" style="color: red; font-size: 14px;">{{msgPassword}}</p>
									</div>
									</div>
									
									
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" ng-show="'<%= request.getParameter("membertype")%>' !='RMBFB Member' && !<%= session.getAttribute("memberid")%>">
										<div class="singel-form form-group">
										<label class="mdl-textfield__label" for="cpassword">Confirm Password</label>
										<input type="password" id="cpassword" name="cpassword" ng-model="cpassword" placeholder="Confirm Password" class="mdl-textfield__input" style="margin-top: 0px;" ng-change="setFlag()">
										
										<p ng-show="errorCPassword == 1" style="color: red; font-size: 14px;">{{msgCPassword}}</p>
									</div>
									</div>
								
                                   <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"  ng-show="'<%= request.getParameter("membertype")%>' !='Others'">
										<div class="singel-form form-group">
										<label class="mdl-textfield__label" for="rtmemberadd">Rotary Member ID</label>
										<input type="text" id="rtmemberadd" name="rtmemberadd" ng-model="rtmemberadd" placeholder="Rotary Member ID" class="mdl-textfield__input" style="margin-top: 0px;" ng-change="setFlag()">
										
									</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"  ng-show="'<%= request.getParameter("membertype")%>' !='Others'">
											<div class="singel-form form-group">
										<label class="mdl-textfield__label" for="rtclubadd">Rotary Club Name</label>
										<input type="text" id="rtclubadd" name="rtclubadd" ng-model="rtclubadd" placeholder="Rotary Club Name"  class="mdl-textfield__input" style="margin-top: 0px;" ng-change="setFlag()">
										
									</div>
									</div>
									<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12"  ng-show="'<%= request.getParameter("membertype")%>' !='Others'">
											<div class="singel-form form-group">
											<label class="mdl-textfield__label" for="rtchapadd">RMB Chapter Name</label>
										<input type="text" id="rtchapadd" name="rtchapadd" ng-model="rtchapadd" placeholder="RMB Chapter Name" class="mdl-textfield__input" style="margin-top: 0px;" ng-change="setFlag()">
										
									</div>
									</div>
									

                                    <!-- <div class="col-md-12">
                                        <div class="singel-form form-group">
                                            <label> Business Classification </label>
                                            <textarea type="text" rows= "3" id="businessclsadd" name="businessclsadd" ng-model="businessclsadd" placeholder="Business Classification" ></textarea>
                                            <div class="help-block with-errors"></div>
                                        </div> singel form
                                    </div> -->


                                    <!-- <div class="col-md-12">
                                        <div class="singel-form form-group">
                                            <label> Short Description of your Company </label>
                                            <textarea type="text" rows= "3" id="shortdescadd" name="shortdescadd" ng-model="shortdescadd" placeholder="Short Description of your Company"></textarea>
                                            <div class="help-block with-errors"></div>
                                        </div> singel form
                                    </div> -->

                                 	
									<p ng-show="userSubmitError == 1" style="color: red; font-size: 15px;"><b>{{msgError}}</b></p>
									<p ng-show="userSubmitError1 == 1" style="color: red; font-size: 15px;"><b>{{msgError}}</b></p>
									
                                    
                                    
                                    <div class="col-md-12">
                                        <div class="singel-form">
											<!-- <button type="submit" class="btn btn-primary btn-lg btn-block" style="width: 90%; margin-top: 40px; ">Submit</button> -->
											<button ng-show="userSubmitError == 1"  ng-click="redirectToLoginPage(<%= request.getParameter("eid")%>, '<%= request.getParameter("membertype")%>')" class="main-btn" > Login</button>
											<button ng-show="userSubmitError != 1" type="submit" class="main-btn"><i class="fa fa-refresh fa-spin" ng-if="spin == 1"  ></i> Submit</button>
										</div>										
									</div>
									
								
                                </div> <!-- row -->

                            </form>
                        </div> <!-- main form -->
                    </div> <!--  contact from -->
                </div>

                <div class="col-lg-1"></div>

            </div> <!-- row -->
        </div> <!-- container -->
        </form>
    </section>
    
    <!--====== EVENT registration PART ENDS ======-->




<!--/#footer START-->
<%@include file="footer.jsp" %>
<!--/#footer END-->





<div id="success_tic" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
 
      <div class="page-body">
    <div class="head">  
      <h3 style="margin-top:5px;">Your payment is  successfull!</h3>
      <h4>Thanks for registration &#128578;</h4>
    </div>

  <h1 style="text-align:center;"><div class="checkmark-circle">
  <div class="background"></div>
  <div class="checkmark draw"></div>
</div><h1>
  <a style="margin-left: 42%;
    font-size: xxx-large;
    color: #969b99;" href="<%=request.getContextPath() %>/"><i class="fa fa-home"></i></a></h1>
  </div>

</div>


  
    </div>

  </div>
  
  
  
  
  <div id="fail_tic" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
 
      <div class="page-body">
    <div class="head">  
      <h3 style="margin-top:5px;">Your payment is failed!</h3>
      <h4>Please try again..</h4>
    </div>

  <h1 style="text-align:center;">
  
  <div class="checkmark-circle">
  <div class="background">  
  <i style="font-size: 100px;
    margin-top: 22px;
    color: beige;" class="fa fa-close"></i></div>

</div><h1>
  <a style="margin-left: 42%;
    font-size: xxx-large;
    color: #969b99;" href="<%=request.getContextPath() %>/"><i class="fa fa-home"></i></a></h1>
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




<script src='https://owlcarousel2.github.io/OwlCarousel2/assets/owlcarousel/owl.carousel.js'></script>

<script src="<%=request.getContextPath() %>/resources/admin/js/toastr.min.js"></script>


<script  src="js/index.js"></script>






</body>
</html>
