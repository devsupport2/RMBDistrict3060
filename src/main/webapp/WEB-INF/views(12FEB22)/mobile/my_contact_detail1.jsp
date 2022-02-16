<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="generator" content="">
<title> Edit  Contact Information | Edit Profile </title>

<!-- manifest meta -->
<meta name="apple-mobile-web-app-capable" content="yes">

<!-- Favicons -->
<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath() %>/resources/mobile/mg/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath() %>/resources/mobile/img/favicon/favicon-16x16.png">
<link rel="manifest" href="img/favicon/site.webmanifest">
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
<script src="<%=request.getContextPath() %>/resources/front2/vendor/jquery/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
			
	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
			<script src="<%=request.getContextPath() %>/resources/admin/js/controller/my_contact_detail.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.Jcrop.js"></script>
		
		<link href="<%=request.getContextPath() %>/resources/admin/css/toastr.min.css" rel="stylesheet">
				<style>
		
	.dropdownparrow {
  -webkit-appearance: none;
  /*webkit browsers */
  -moz-appearance: none;
  /*Firefox */
  appearance: none;
  /* modern browsers */
  border-radius: 0;
    background-color: #fbfbfb;
    color: black;
}

</style>
</head>

<body class="body-scroll d-flex flex-column h-100 menu-overlay" data-page="profile" ng-app="rcbs" ng-controller="manageContactDetailCtrl" ng-cloak ng-init="getcontactdetail(<%= session.getAttribute("loginid")%>) || getFellowship_id(<%= session.getAttribute("fellowshipId")%>)">


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
<a class="navbar-brand" href="<%=request.getContextPath() %>/edit_profile">
<h5 class="mb-0">  Edit  Contact Information  </h5>
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





<!-- User Meta Data-->
<div class="card user-data-card row">

<div class="card-body">


							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label for="exampleFormControlInput1"> Address Line 1
											<span class="text-danger">*</span>
										</label> <input type="text" id="address1" name="address1"
											ng-model="address1" class="form-control "
											placeholder="Address Line-1" ng-change="setflag()">
											<p ng-if="address1Error == 1"> {{address1Msg}}</p>
									</div>

									<div class="form-group">
										<label for="exampleFormControlInput1"> Address Line 2
											<span class="text-danger">*</span>
										</label> <input type="text" id="address2" name="address2"
											ng-model="address2" class="form-control "
											placeholder="Address Line-2" ng-change="setflag()">
											<p ng-if="address2Error == 1"> {{address2Msg}}</p>
									</div>


									<div class="form-group">
										<label for="exampleFormControlInput1"> Address Line 3
											<span class="text-danger">*</span>
										</label> <input type="text" id="address3" name="address3"
											ng-model="address3" class="form-control "
											placeholder="Address Line-3" ng-change="setflag()">
											<p ng-if="address3Error == 1"> {{address3Msg}}</p>
									</div>


									<div class="form-group">
										<label for="exampleFormControlSelect1"> Select Country
											<span class="text-danger">*</span>
										</label> <select id="countryname" name="countryname"
											ng-model="countryname"
											ng-options="item.countryId as item.countryName for item in getcountry"
											ng-init="countryname = 1" ng-change="onCountryChange()"
											class="form-control input-lg2" ng-change="setflag()">
											<option value="">---Select Country---</option>
											<p ng-if="countrynameError == 1"> {{countrynameMsg}}</p>
										</select>
									</div>


									<div class="form-group">
										<label for="exampleFormControlSelect1"> Select State <span
											class="text-danger">*</span>
										</label> <select id="statename" name="statename" ng-model="statename"
											ng-options="item.stateId as item.stateName for item in getrelatedstate"
											ng-init="statename = 1" class="form-control input-lg2" ng-change="setflag()">
											<option value="">---Select State---</option>
											<p ng-if="statenameError == 1"> {{statenameMsg}}</p>
										</select>
									</div>
									<div class="form-group">
										<label for="exampleFormControlInput1"> City Name <span
											class="text-danger">*</span>
										</label> <input type="text" id="cityname" name="cityname"
											ng-model="cityname" ng-init="cityname = 'Vadodara'"
											class="form-control input-lg1" placeholder="City" ng-change="setflag()">
											<p ng-if="citynameError == 1"> {{citynameMsg}}</p>
									</div>

								</div>
							</div>




							<!-- Work Details  -->
							<hr class="light-grey-hr mb-20">
							<div class="row">
								<div class="col-md-12">

									<h6 class="mb-20">Work Details</h6>


									<div class="form-group">
										<label for="exampleFormControlInput1"> Company Name </label> <input
											type="text" id="companyname" name="companyname"
											ng-model="companyname" class="form-control "
											placeholder="Company Name">
										<p ng-if="companynameError == 1"> {{companynameMsg}}</p>	
									</div>

									<!--  Company Logo  -->
									<hr class="light-grey-hr mb-20">

									<div class="user-info-card row mb-20">
										<div class="d-flex align-items-center">

											<div class="col-auto">
												<div class="avatar avatar-50 position-relative">
													<figure class="background">
														<img alt="" src="{{logoimage}}" class="img-responsive">
													</figure>
												</div>

												<div class="change-user-thumb">


													<input type='file' id="imgInp" class="form-control-file"
														accept=".jpg,.jpeg,.png" />
														<img id="target"/>
														<form name="myForm">
															<input type="hidden" name="x" id="valuex" /> 
															<input type="hidden" name="y" id="valuey" /> 
															<input type="hidden" name="w" id="valuew" />
															<input type="hidden" name="h" id="valueh" />
														</form>
													<button>
														<i class="fa fa-pencil"></i>
													</button>

												</div>


											</div>


											<div class="user-info">
												<h6>Company Logo</h6>
												<!-- <p class="mb-0 text-dark"> Founder Owner,    Ultra InfoTech  </p> -->
											</div>
										</div>
									</div>

									<!-- <div class="user-info">
										<img src="" id="target" />
									</div> -->
									<hr class="light-grey-hr mb-20">

									<div class="form-group">
										<label for="exampleFormControlInput1"> Occupation </label> <input
											class="form-control" id="occupation" name="occupation"
											ng-model="occupation" type="text" placeholder="Occupation">
									</div>

									<div class="form-group">
										<label for="exampleFormControlInput1"> Designation </label> <input
											type="text" id="designation" name="designation"
											ng-model="designation" class="form-control "
											placeholder="Designation">
									</div>

									<div class="form-group">
										<label for="exampleFormControlInput1"> Business Nature
										</label> <input type="text" id="businessnature" name="businessnature"
											ng-model="businessnature" class="form-control "
											placeholder="Business Nature">
									</div>

									<div class="form-group">
										<label for="exampleFormControlInput1"> Fax Number </label> <input
											type="text" id="faxnumber" name="faxnumber"
											ng-model="faxnumber" class="form-control "
											placeholder="Fax-Office">
									</div>

									<div class="form-group">
										<label for="exampleFormControlInput1"> Website </label> <input
											type="text" id="website" name="website" ng-model="website"
											class="form-control " placeholder="Website">
									</div>



									<div class="form-group">
										<label for="exampleFormControlTextarea1"> About
											Business <span class="text-danger">*</span>
										</label>
										<textarea rows="6" class="form-control input-lg1"
											id="aboutbusiness" name="aboutbusiness"
											ng-model="aboutbusiness" placeholder="About your business..."></textarea>

									</div>



									<div class="form-group">
										<label for="exampleFormControlTextarea1"> Business
											Keywords (Comma separated) <span class="text-danger">*</span>
										</label>
										<textarea rows="6" class="form-control input-lg1"
											id="businesskeywords" name="businesskeywords"
											ng-model="businesskeywords"
											placeholder="Ex.- IT Firm, Website, Mobile Application, ..."></textarea>
									</div>




									<div class="form-group">
										<label for="exampleFormControlInput1"> Address Line 1
											<span class="text-danger">*</span>
										</label> <input type="text" id="address1work" name="address1work"
											ng-model="address1work" class="form-control input-lg1"
											placeholder="Address Line-1" ng-change="setflag()">
											<p ng-if="address1workError == 1"> {{address1workMsg}}</p>	
									</div>

									<div class="form-group">
										<label for="exampleFormControlInput1"> Address Line 2
											<span class="text-danger">*</span>
										</label> <input type="text" id="address2work" name="address2work"
											ng-model="address2work" class="form-control input-lg1"
											placeholder="Address Line-2" ng-change="setflag()">
											<p ng-if="address2workError == 1"> {{address2workMsg}}</p>	
									</div>


									<div class="form-group">
										<label for="exampleFormControlInput1"> Address Line 3
											<span class="text-danger">*</span>
										</label> <input type="text" id="address3work" name="address3work"
											ng-model="address3work" class="form-control input-lg1"
											placeholder="Address Line-3" ng-change="setflag()">
											<p ng-if="address3workError == 1"> {{address3workMsg}}</p>											
									</div>


									<div class="form-group">
										<label for="exampleFormControlSelect1"> Select Country
											<span class="text-danger">*</span>
										</label> <select id="countrynamework" name="countrynamework"
											ng-model="countrynamework"
											ng-options="item.countryId as item.countryName for item in getcountry"
											ng-init="countrynamework = 1" ng-change="onCountryChange()"
											class="form-control input-lg2" ng-change="setflag()">
											<option value="">---Select Country---</option>
											<p ng-if="countrynameworkError == 1"> {{countrynameworkMsg}}</p>	
										</select>
									</div>


									<div class="form-group">
										<select id="statenamework" name="statenamework"
											ng-model="statenamework"
											ng-options="item.stateId as item.stateName for item in getrelatedstate"
											ng-init="statenamework = 1" class="form-control input-lg2" ng-change="setflag()">
											<option value="">---Select State---</option>
											<p ng-if="statenameworkError == 1"> {{statenameworkMsg}}</p>
										</select>
									</div>


									<div class="form-group">
										<label for="exampleFormControlInput1"> Email Address <span
											class="text-danger">*</span></label> <input type="text" id="email"
											name="email" ng-model="email" class="form-control input-lg1"
											placeholder="Email id" ng-change="setflag()">
											<p ng-if="emailError == 1"> {{emailMsg}}</p>
									</div>


									<!-- <div class="form-group">
<label for="exampleFormControlInput1"> Phone Number <span class="text-danger">*</span></label>
<input type="tel" class="form-control" placeholder="" value="0265234569">
</div>

 -->
									<div class="form-group">
										<label for="exampleFormControlInput1"> Mobile No. <span
											class="text-danger">*</span></label> <input type="text"
											id="mobilenumberwork" name="mobilenumberwork"
											ng-model="mobilenumberwork" class="form-control input-lg1"
											placeholder="Mobile" disallow-spaces ng-change="setflag()">
											<p ng-if="mobilenumberworkError == 1"> {{mobilenumberworkMsg}}</p>
									</div>

								</div>
							</div>






							<!-- Address for communication Details  -->
							<hr class="light-grey-hr mb-20">

							<div class="row">
								<div class="col-md-12">

									<div class="card">
										<div class="card-body pa-0">
											<h6 class="mb-15">Address for communication</h6>
											<div class="row">

												<div class="col-3 col-md-auto">
													<div class="custom-control custom-switch">
														<!-- <input type="radio" name="menustyle" class="custom-control-input" id="work" checked=""> -->
														<!-- <input type="radio" ng-value="'work'" id="communication" name="communication" ng-model="communication" ng-click="checkcommunication()"> -->
														<input type="radio" class="custom-control-input"
															ng-value="'work'" id="work" name="communication"
															ng-model="communication" ng-click="checkcommunication()">
														<label class="custom-control-label" for="work">
															Work </label>
													</div>
												</div>

												<div class="col-4 col-md-auto">
													<div class="custom-control custom-switch">
														<!-- <input type="radio" name="menustyle" class="custom-control-input" id="residential"> -->
														<!-- <input type="radio"  class="custom-control-input" ng-value="'residential'" id="communication" name="communication" ng-model="communication" ng-click="checkcommunication()"> -->
														<input type="radio" class="custom-control-input"
															ng-value="'residential'" id="residential"
															name="communication" ng-model="communication"
															ng-click="checkcommunication()"> <label
															class="custom-control-label" for="residential">
															Residential </label>
													</div>
												</div>

												<div class="col-3 col-md-auto">
													<div class="custom-control custom-switch">
														<!-- <input type="radio" name="menustyle" class="custom-control-input" id="both"> -->
														<!-- <input type="radio" ng-value="'both'" id="communication" name="communication" ng-model="communication" ng-click="checkcommunication()"> -->
														<input type="radio" class="custom-control-input"
															ng-value="'both'" id="both" name="communication"
															ng-model="communication" ng-click="checkcommunication()">
														<label class="custom-control-label" for="both">
															Both </label>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>



							<!-- Gains Profile Details  -->
							<hr class="light-grey-hr mt-20 mb-20">
							<div class="row">
								<div class="col-md-12">

									<h6 class="mb-20">Gains Profile</h6>


									<div class="form-group">
										<label for="exampleFormControlTextarea1"> Goals <span
											class="text-danger">*</span></label>
										<textarea rows="6" class="form-control input-lg1"
											id="businessgoals" name="businessgoals"
											ng-model="businessgoals" placeholder="Business Goals..."></textarea>

									</div>



									<div class="form-group">
										<label for="exampleFormControlTextarea1">
											Accomplishments <span class="text-danger">*</span>
										</label>
										<textarea rows="6" class="form-control input-lg1"
											id="accomplishments" name="accomplishments"
											ng-model="accomplishments" placeholder="Accomplishments..."></textarea>
									</div>



									<div class="form-group">
										<label for="exampleFormControlTextarea1"> Interests <span
											class="text-danger">*</span></label>
										<textarea rows="6" class="form-control input-lg1"
											id="interests" name="interests" ng-model="interests"
											placeholder="Interests..."></textarea>
									</div>

									<div class="form-group">
										<label for="exampleFormControlTextarea1"> Networks <span
											class="text-danger">*</span></label>
										<textarea rows="6" class="form-control input-lg1"
											id="networks" name="networks" ng-model="networks"
											placeholder="Networks..."></textarea>
										</textarea>
									</div>


									<div class="form-group">
										<label for="exampleFormControlTextarea1"> Skills <span
											class="text-danger">*</span></label>
										<textarea rows="4" class="form-control input-lg1" id="skills"
											name="skills" ng-model="skills" placeholder="Skills..."></textarea>
									</div>





									<!-- Tops Profile Profile  Details  -->
									<hr class="light-grey-hr mb-20">
									<div class="row">
										<div class="col-md-12">

											<h6 class="mb-20">Ideal Referral</h6>


											<div class="form-group">
												<label for="exampleFormControlTextarea1"> Ideal
													Referral <span class="text-danger">*</span>
												</label>
												<textarea rows="6" class="form-control input-lg1"
													id="idealreferral" name="idealreferral"
													ng-model="idealreferral" placeholder="Ideal Referral..."></textarea>
											</div>



											<div class="form-group">
												<label for="exampleFormControlTextarea1"> Top
													Product <span class="text-danger">*</span>
												</label>
												<textarea rows="6" class="form-control input-lg1"
													id="topproduct" name="topproduct" ng-model="topproduct"
													placeholder="Top Product..."></textarea>
											</div>


											<div class="form-group">
												<label for="exampleFormControlTextarea1"> Top
													Problem Solved <span class="text-danger">*</span>
												</label>
												<textarea rows="4" class="form-control input-lg1"
													id="topproblemsolved" name="topproblemsolved"
													ng-model="topproblemsolved"
													placeholder="Top Problem Solved..."></textarea>
											</div>





											<button class="btn btn-success w-100"
												ng-click="editcontactdetailmobile(memberid)">
												Update <i ng-show="spin == 1" class="fa fa-spin fa-spinner"
													aria-hidden="true"></i>
											</button>


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




<!-- Required jquery and libraries -->
<%-- <script src="<%=request.getContextPath() %>/resources/mobile/js/jquery-3.3.1.min.js"></script> --%>
<script src="<%=request.getContextPath() %>/resources/mobile/js/popper.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/mobile/vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- cookie js -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/jquery.cookie.js"></script>

<!-- Swiper slider  js-->
<script src="<%=request.getContextPath() %>/resources/mobile/vendor/swiper/js/swiper.min.js"></script>

<!-- Customized jquery file  -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/main.js"></script>
<script src="<%=request.getContextPath() %>/resources/mobile/js/color-scheme-demo.js"></script>
<script src="<%=request.getContextPath() %>/resources/admin/js/toastr.min.js"></script>

<!-- page level custom script -->
<script src="<%=request.getContextPath() %>/resources/mobile/js/app.js"></script>



<script>
			jQuery(function($) {
				 function readURL(input) {
				        if (input.files && input.files[0]) {
				            var reader = new FileReader();
				            
				            reader.onload = function (e) {
				            	if ($('#target').data('Jcrop')) {
								    $('#target').data('Jcrop').destroy();
								    $('#target').removeAttr('style');
								}
				                $('#target').attr('src', e.target.result);
				                $('#target').css("max-width", "100%");
				                $('#target').Jcrop({
				                	aspectRatio: 1 / 1,	
				                	boxWidth: 650,   
				                    boxHeight: 400,
				                    setSelect: [ 100, 100, 350, 350 ],
				    				onSelect : setCoordinates
				    			});
				            }		            
				            reader.readAsDataURL(input.files[0]);
				        }
				    }
				    
				    $("#imgInp").change(function(){
				        readURL(this);
				    });
				    
					
			});
			function setCoordinates(c) {
				//alert("x " + c.x + " y " + c.y);
				//alert("w " + c.w + " h " + c.h);
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