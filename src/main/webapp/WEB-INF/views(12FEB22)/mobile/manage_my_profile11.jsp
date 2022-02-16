<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title>  Add Reference    | Rotary Means Business Fellowship  </title>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<link rel="manifest" href="<%=request.getContextPath() %>/resources/mobile/manifest.json" />


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


<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2018.1.221/styles/kendo.common-material.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/datetimepicker/css/kendo.material.min.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/datetimepicker/css/kendo.material.mobile.min.css" />
<!--<script src="https://kendo.cdn.telerik.com/2018.1.221/js/jquery.min.js"></script>-->


<script src="<%=request.getContextPath() %>/resources/front2/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>

<script src="<%=request.getContextPath() %>/resources/admin/js/controller/conf_mobile.js"></script>	 

<%-- 	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/EditMobileProfile.js"></script>
 --%>
 <script src="<%=request.getContextPath() %>/resources/admin/js/controller/mobile_index.js"></script>
 
<script src="<%=request.getContextPath() %>/resources/front2/datetimepicker/js/kendo.all.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.Jcrop.js"></script>
<link href="<%=request.getContextPath() %>/resources/admin/css/jquery.Jcrop.css" rel="stylesheet" />

<link href="<%=request.getContextPath() %>/resources/admin/css/toastr.min.css" rel="stylesheet">
</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay" data-page="profile" ng-app="rcbs" ng-controller="MobileIndexCtrl"  ng-cloak ng-init="getmemberdetail(<%= session.getAttribute("loginid")%>) || getFellowship_id(<%= session.getAttribute("fellowshipId")%>) || getMemberDetailByIdProfile(<%= session.getAttribute("loginid") %>) ">


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


<%@include file="header_bk.jsp" %>

<form name="myForm">
			<input type="hidden" name="x" id="valuex"/>
			<input type="hidden" name="y" id="valuey"/>
			<input type="hidden" name="w" id="valuew"/>
			<input type="hidden" name="h" id="valueh"/>
		</form>

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
<h5 class="mb-0">  Edit Member Info  </h5>
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
<!-- Profile Wrapper-->
<div class="profile-wrapper-area py-3">

<!-- User Information-->
<div class="card user-info-card row">
<div class="card-body d-flex align-items-center">

<!-- <div class="user-profile avatar avatar-40 rounded-circle position-relative mr-3"><img src="img/bb.jpg" alt="">
<div class="change-user-thumb">
<form>
<input class="form-control-file" type="file">
<button><i class="fa fa-pencil"></i></button>
</form>
</div>
</div> -->

<div class="col-auto">
<div class="avatar avatar-80 rounded-circle position-relative">
<figure class="background">
<img src="{{getmemberdetail.memberProfilePicture}}" class="MemberProfile"  alt=""/>
<%-- onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'" --%>
 <img class="MemberProfile"  ng-if="!getmemberdetail.memberProfilePicture"  style="    src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'">

</figure>
</div>

<div class="change-user-thumb">
<form>
<input class="form-control-file" type="file"  name="file" id="imgInp" >

<button><i class="fa fa-pencil"></i></button>
</form>
</div>

</div>


<div class="user-info">
<h6>  Rtn. {{firstname}} {{lastname}} </h6>
<p class="mb-0 text-dark"> {{companyname}} </p>
</div>
</div>
</div>

	

<!-- User Meta Data-->
<div class="card user-data-card row">
<div class="card-body">

<img src="" id="target"/>
<div class="form-group">
<label for="exampleFormControlInput1"> First Name <span class="text-danger">*</span> </label>
<input type="text" class="form-control"placeholder="First Name" id="firstname" name="firstname" ng-model="firstname" ng-change="setflag()">
  <p ng-if="firstnameError == 1">{{firstnameMsg}}</p>
</div>


<div class="form-group">
    <label for="exampleFormControlInput1"> Middle Name </label>
    
    	<input type="text" id="middlename" name="middlename" ng-model="middlename" class="form-control " placeholder="Middle Name" ng-change="setflag()">
    	 <p ng-show="middlenameError==1">{{middlenameMsg}}</p>
    </div>


<div class="form-group">
<label for="exampleFormControlInput1"> Last Name <span class="text-danger">*</span></label>
	<input type="text" id="lastname" name="lastname" ng-model="lastname" class="form-control " placeholder="Last Name" ng-change="setflag()">
	 <p ng-if="lastnameError==1">{{lastnameMsg}}</p>
</div>

<!-- 	<div class="form-group">
			<label>Date Of Birth <span class="text-danger">*</span></label>
			<input class="KendoDate" id="profiledob" title="datepicker" placeholder="DD/MM/YYYY" style="width: 100%;"/>
		</div>
	 -->
<div class="form-group">
<label for="exampleFormControlInput1"> Mobile No. <span class="text-danger">*</span></label>
<input type="tel" class="form-control" id="mobile" placeholder="mobile " ng-model="mobile" ng-change="setflag()">
 <p ng-show="mobileError==1">{{mobileMsg}}</p>
</div>


<div class="form-group">
<label for="exampleFormControlInput1"> Email Address <span class="text-danger">*</span></label>
<input type="email" class="form-control" placeholder="email" ng-model="email" ng-change="setflag()">
 <p ng-if="emailError==1">{{emailMsg}}</p>
</div>



<!-- <div class="form-group">
<label for="exampleFormControlInput1"> Username <span class="text-danger">*</span></label>
<input type="text" class="form-control" placeholder="Enter Your Email" ng-model="email">
</div>
 -->

<div class="form-group">
<label for="exampleFormControlInput1"> Business Category  <span class="text-danger">*</span></label>
<select class="form-control" ng-model="businesscategoryid" id="businesscategoryid" ng-model="businesscategoryid" name="businesscategoryid" ng-options="item.businessCategoryId as item.businessCategoryName for item in allbusinesscategories" ng-change="setflag()">
				<option value="">Business Category</option>
</select>
 <p ng-if="businesscategoryidError==1">{{businesscategoryidMsg}}</p>
</div>


<div class="form-group">
<label for="exampleFormControlTextarea1"> About Business <span class="text-danger"></span></label>
<textarea class="form-control" rows="6" ng-model="aboutbusiness" ng-change="setflag()">
</textarea>
</div>



<div class="form-group">
<label for="exampleFormControlTextarea1"> Business Keywords (Comma separated) <span class="text-danger"></span></label>
<textarea class="form-control" rows="6" ng-model="businesskeywords" ng-change="setflag()">
</textarea>
</div>

<button class="btn btn-success w-100"  ng-click="editmemberdetail(memberid,2)"> Update </button>


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
<a href="#" class="">
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



<script>
			$(document).ready(function () {			 		         
		         $("#profiledob,#datepicker1").kendoDatePicker({
		       		format: "dd/MM/yyyy",
					dateInput: true,
					value: new Date()
		         });
		         $("#datepicker2").kendoDatePicker({
			    	format: "dd/MM/yyyy",
					dateInput: true					
			     });
		    });
			$(".KendoDate").bind("focus", function(){
	   			$(this).data("kendoDatePicker").open(); 
			});			
		</script>		
<!-- Required jquery and libraries -->
<%-- <script src="<%= request.getContextPath() %>/resources/mobile/js/jquery-3.3.1.min.js"></script> --%>
<script src="<%= request.getContextPath() %>/resources/mobile/js/popper.min.js"></script>
<script src="<%= request.getContextPath() %>/resources/mobile/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- cookie js -->
<script src="<%= request.getContextPath() %>/resources/mobile/js/jquery.cookie.js"></script>

<!-- Swiper slider  js-->
<script src="<%= request.getContextPath() %>/resources/mobile/vendor/swiper/js/swiper.min.js"></script>

<!-- Customized jquery file  -->
<script src="<%= request.getContextPath() %>/resources/mobile/js/main.js"></script>
<script src="<%= request.getContextPath() %>/resources/mobile/js/color-scheme-demo.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/toastr.min.js"></script>

  <script>
		jQuery(function($) {
			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();
					reader.onload = function(e) {
						if ($('#target').data('Jcrop')) {
							$('#target').data('Jcrop').destroy();
							$('#target').removeAttr('style');
						}

						var u = URL.createObjectURL(input.files[0]);
						var img = new Image;
						img.onload = function() {
							if (img.width < 100 || img.height < 100) {
								toastr.error("Minimum image size should be 100px X 100px");
								$('#target').attr('src', "");
								document.getElementById("sliderImage").value = null;
							} else {
								$('#target').css("max-width", "100%");
								//$('#target').css("width", "500px");

								$('#target').attr('src', e.target.result);
								 $('#target').Jcrop({
									aspectRatio : 1 / 1,
									//boxWidth : 840,
									//boxHeight : 400,
									//minSize : [ 600, 765 ],
									//maxSize : [ 1200, 1530 ],
									//setSelect : [ 0, 0, 600, 765 ],
									onChange : setCoordinates,
									onSelect : setCoordinates,
									trueSize: [img.width,img.height]
								}); 
								
							}
						};

						img.src = u;
					}
					reader.readAsDataURL(input.files[0]);
				}
			}
			$("#imgInp").change(function() {
				readURL(this);
			});
			$("#imgInp").click(function() {
				this.value = null;
			});
		});

		function setCoordinates(c) {
			document.myForm.x.value = Math.round(c.x);
			document.myForm.y.value = Math.round(c.y);
			document.myForm.w.value = Math.round(c.w);
			document.myForm.h.value = Math.round(c.h);
		};

		function checkCoordinates() {
			if (document.myForm.x.value == "" || document.myForm.y.value == "") {
				alert("Please select a crop region");
				return false;
			} else {
				return true;
			}
		};
	</script>
		
</body>

</html>
