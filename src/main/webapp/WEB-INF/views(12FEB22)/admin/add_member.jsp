<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Add Member</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.min.js"></script>
	    <script src="<%=request.getContextPath() %>/resources/admin/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<link href="<%=request.getContextPath() %>/resources/front/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> -->
  		<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
		<link href="<c:url value="/resources/admin/css/bootstrap.min.css"></c:url>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/resources/admin/css/menustyle.css"></c:url>" rel="stylesheet" type="text/css" />		 		
		
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> -->
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.maskedinput.js" type="text/javascript"></script>
		
		<!-------------- Bootstrap File Input Example Upload IMAGE  Scrept Start---->
		<link href="<%=request.getContextPath() %>/resources/upload-img/style.css" media="all" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath() %>/resources/upload-img/jquery-ui.css" media="all" rel="stylesheet" type="text/css" />		
		<link href="<%=request.getContextPath() %>/resources/upload-img/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
		<script src="<%=request.getContextPath() %>/resources/upload-img/js/fileinput.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath() %>/resources/upload-img/js/fileinput_locale_fr.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath() %>/resources/upload-img/js/fileinput_locale_es.js" type="text/javascript"></script>
		<!-------------- Bootstrap File Input Example Upload IMAGE  Scrept Start---->	
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.Jcrop.js"></script>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/admin/css/jquery.Jcrop.css"	type="text/css" />
		<style type="text/css" id="picture_basic_dependence_css">
			.picture-element-principal{background:url(images/icon_add_image2.png) no-repeat 50% 50%}.picture-dropped{border:2px #666 dashed!important;}
		</style>
		<style>			
			label {
			    display: inline-block;
			    max-width: 100%;
			    margin-bottom: 5px;
			    font-weight: 400;
			}			
		</style>
		
		<script type="text/javascript">
			jQuery(function($){
				   $("#joiningdate").mask("99/99/9999",{placeholder:"DD/MM/YYYY"});
				   $("#dateofbirth").mask("99/99/9999",{placeholder:"DD/MM/YYYY"});
				   $("#anniversarydate").mask("99/99/9999",{placeholder:"DD/MM/YYYY"});
				   $("#phone").mask("(999) 999-9999");
				   $("#tin").mask("99-9999999");
				   $("#ssn").mask("999-99-9999");
				});
		</script>
			
	</head>	
	<body ng-app="rcbs" ng-controller="memberCtrl" ng-cloak >
		<%@include file="header.jsp" %>	
		<section>
			<div class="container">
				<div class="row">
					<div class="board">
						<div class="board-inner" ng-show="membercategoryname != 7">
							<ul class="nav nav-tabs" id="myTab">
								<div class="liner"></div>
								<li class="active">
									<a href="#membership" data-toggle="tab" title="MEMBERSHIP">
										<span class="round-tabs one">
											<i class="glyphicon glyphicon-home"></i>
										</span>
									</a>
								</li>
								<li class="disabled">
									<a href="#" data-toggle="tab" title="CONTACT DETAILS">
										<span class="round-tabs two">
											<i class="glyphicon glyphicon-gift"></i>
										</span>
									</a>
								</li>
								<li class="disabled">
									<a href="#spouse" data-toggle="tab" title="FAMILY DETAILS">
										<span class="round-tabs three">
											<i class="glyphicon glyphicon-comment"></i>
										</span>
									</a>
								</li>								
								<li class="disabled">
									<a href="#references" data-toggle="tab" title="REFERENCES">
										<span class="round-tabs five">
											<i class="glyphicon glyphicon-ok"></i>
										</span>
									</a>
								</li>
								<li class="disabled">
									<a href="#payments" data-toggle="tab" title="PAYMENTS">
										<span class="round-tabs four">
											<i class="glyphicon glyphicon-comment"></i>
										</span>
									</a>
								</li>
							</ul>
						</div>
						<div class="tab-content">
							<!-- Membership	 START-->
							<!-- <form role="form" > -->
								<div class="tab-pane fade in active" id="membership">
									<div class="col-md-12">
										<div class="panel panel-default">
											<div class="panel-heading" style="border-top: 2px solid blue; background: -webkit-gradient(linear, left bottom, left top, color-stop(0, #e2e2e2), color-stop(1, #fafafa));">
												<div class="row" style="color: #333;">
													<div class="col-md-6">
														<div class="panel-title1">Membership INFO</div>
													</div>
													<div class="col-md-6" align="right">
														<div class="panel-title1">{{rotaryyeartitle}}</div>
													</div>																										
												</div>
											</div>
											<div class="panel-body">
												<div class="row">
												<div class="col-md-3">
														<div class="form-group" ng-init="setFellowshipId('<%= session.getAttribute("fellowshipId") %>')">
															<label>Fellowship Name<font color="red" size="3">*</font></label>
														<!-- <select ng-model="fellowship_id" id="fellowship_id" name="fellowship_name"  class="form-control input-lg2"> -->
																<select ng-model="fellowship_id"  disabled id="fellowship_id1" name="fellowship_name" ng-options="items.fellowship_id as items.fellowship_name for items in getAllFellowshipNameList" ng-change="FellowshipByFees(fellowship_id)" class="form-control input-lg2">
																<option value=""selected>Select Fellowship Name</option>
															<!-- 	<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}">{{items.fellowship_name}}</option> -->
															</select>
		
														</div>
													</div>
													<div class="col-md-3">
														<div class="form-group">
															<label>Club Name<font color="red" size="3">*</font></label>
															<select ng-model="memberclubname" id="memberclubname" name="memberclubname" ng-options="item.clubId as item.clubName for item in allclubs" class="form-control input-lg2">
																<option value="">Club Name</option>
															</select>
														</div>
													</div>
													<div class="col-md-3">
														<div class="form-group">
															<label>Type Of Member<font color="red" size="3">*</font></label>
															<select ng-model="membercategoryname" id="membercategoryname"   ng-init="membercategoryname = 1 ; typeschange()" name="membercategoryname" ng-options="item.memberCategoryId as item.memberCategoryName for item in getmembercategory" ng-change="typeschange()" class="form-control input-lg2">
																<option value="">Type Of Member</option>
															</select>
														</div>
													</div>
													<div class="col-md-3">
														<label>Membership No<font color="red" size="3">*</font></label>
														<input type="text" disabled="disabled" ng-model="membershipId" class="form-control input-lg2" placeholder="Membership No" />
													</div>
												</div>
												<div class="row">												
													<div class="col-md-3">
														<label>Business Category<font color="red" size="3">*</font></label>
														<div class="input-group">															
															<select ng-model="businesscategoryid" id="businesscategoryid" name="businesscategoryid" ng-options="item.businessCategoryId as item.businessCategoryName for item in allbusinesscategories" class="form-control input-lg2">
																<option value="">Business Category</option>
															</select>
															<span class="input-group-btn">
																<button class="btn btn-info input-lg2" type="button" data-toggle="modal" data-target="#businessCategoryModal" title="Add New Business Category"><i class="fa fa-plus"></i></button>
															</span>
														</div>
													</div>																
													<div class="col-md-3">
														<div class="form-group">
															<label>Tenure Plan</label>
															<select id="tenureplan" name="tenureplan"  ng-init="tenureplan = 1" ng-model="tenureplan" class="form-control input-lg2">
																<option value="">Tenure Plan</option>
																<option value="1">1 year</option>
																<option value="2">2 years</option>
																<option value="3">3 years</option>
																<option value="4">4 years</option>
																<option value="5">5 years</option>
																<option value="6">6 years</option>
																<option value="7">7 years</option>
																<option value="8">8 years</option>
																<option value="9">9 years</option>
																<option value="10">10 years</option>																
															</select>
														</div>
													</div>	
													<div class="col-md-3">
														<div class="form-group">
															<label>Vocation </label>
															<select id="tenureplan" name="vocation" ng-model="vocation" class="form-control input-lg2">
																<option value="">Vocation</option>
																<option ng-repeat="item in getVocation" value="{{item.VocationId}}">{{item.VocationTitle}}</option>																
															</select>
														</div>
													</div>													
													<div class="col-md-3">
														<div class="form-group">
															<label>Date of Joining</label>
															<input type="text" id="joiningdate" ng-init="getDateForMember()" name="joiningdate" ng-model="joiningdate" class="form-control input-lg2" >
														</div>
													</div>
												</div>								
												<div style="padding-bottom: 15px;" class="panel panel-default">
													<div style="padding: 5px 0px 0px 0px;" class="panel-body">
														<div class="panel-heading1"> Personal Info </div>
													</div>
													<div class="panel-body">
														<div class="row">
															<div class="col-md-2">
																<div class="form-group">
																	<label>Title</label>
																	<select id="membertitle" name="membertitle" ng-model="membertitle" class="form-control input-lg2">
																		<option value="">Title</option>
																		<option value="Dr.">Dr</option>
																		<option value="Er.">Er</option>
																		<option value="Mr.">Mr</option>
																		<option value="Ms.">Ms</option>
																		<option value="Mx.">Mx</option>
																		<option value="Mrs.">Mrs</option>
																		<option value="Miss.">Miss</option>
																	</select>
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>First Name<font color="red" size="3">*</font></label>
																	<input type="text" id="firstname" name="firstname" ng-model="firstname" class="form-control input-lg1" placeholder="First Name" >
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>Middle Name</label>
																	<input type="text" id="middlename" name="middlename" ng-model="middlename" class="form-control input-lg1" placeholder="Middle Name" >
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Last Name<font color="red" size="3">*</font></label>
																	<input type="text" id="lastname" name="lastname" ng-model="lastname" class="form-control input-lg1" placeholder="Last Name" >
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-2">
																<label>Gender<font color="red" size="3">*</font></label>
																<select id="gender" name="gender" ng-model="gender" class="form-control input-lg2">
																	<option value="">Gender</option>
																	<option value="M">Male</option>
																	<option value="F">Female</option>
																</select>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Date Of Birth</label>
																	<input type="text" id="dateofbirth" name="dateofbirth" ng-model="dateofbirth" class="form-control input-lg2" placeholder="DD/MM/YYYY">
																</div>
															</div>
															<div class="col-md-2">
																<label>Blood Group</label>
																<select id="bloodgroup" name="bloodgroup" ng-model="bloodgroup" class="form-control input-lg2">
																	<option value="">Blood Group</option>
																	<option value="A+">A+</option>
																	<option value="A+">A-</option>
																	<option value="B+">B+</option>
																	<option value="B-">B-</option>
																	<option value="B+">O+</option>
																	<option value="B+">O-</option>
																	<option value="B+">AB+</option>
																	<option value="B+">AB-</option>
																</select>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Anniversary Date</label>
																	<input type="text" id="anniversarydate" name="anniversarydate" ng-model="anniversarydate" class="form-control input-lg2" placeholder="DD/MM/YYYY">
																</div>
															</div>														
														</div>
														<div class="row">
															<div class="col-md-3">
																<div class="form-group" id="typediv">
																	<label>Nationality</label>																	
																	<select ng-model="membertypename" id="membertypename" name="membertypename" ng-options="item.countryId as item.countryName for item in getcountry" ng-change="onCountryChange()" class="form-control input-lg2"> <!-- ng-options="item.memberTypeId as item.memberTypeName for item in getmembertype" class="form-control input-lg2"> -->
																		<option value="">Nationality</option>
																	</select>
																</div>
															</div>
															<div class="col-md-3">
																<div class="form-group" ng-show="membertypename == 1 || membertypename == 2">
																	<label>Aadhar Number</label>
																	<input type="text" id="aadharnumber" name="aadharnumber" ng-model="$parent.aadharnumber" class="form-control input-lg1" placeholder="Aadhar Number" disallow-spaces capitalize>
																</div>
																<div class="form-group" ng-show="membertypename == 3">
																	<label>Country Of Citizenship<font color="red" size="3">*</font></label>
																	<select id="countrynamecitizenship" name="countrynamecitizenship" ng-model="$parent.countrynamecitizenship" ng-options="item.countryId as item.countryName for item in getcountry" ng-change="onCountryChange()" class="form-control input-lg2">
																		<option value="">Select Country</option>
																	</select>
																</div>
															</div>
															<div class="col-md-3">
																<div class="form-group">
																	<label>Passport Number</label>
																	<input type="text" id="passportnumber" name="passportnumber" ng-model="passportnumber" class="form-control input-lg1" placeholder="Passport Number" disallow-spaces capitalize>
																</div>
															</div>
															<div class="col-md-3">
																<div class="form-group">
																	<label>PAN Number</label>
																	<input type="text" id="pannumber" name="pannumber" ng-model="pannumber" class="form-control input-lg1" placeholder="PAN No" disallow-spaces capitalize>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<input id="email" name="email" ng-model="email" type="email" class="form-control input-lg1" placeholder="Email">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<input id="mobilenumber" name="mobilenumber" ng-model="mobilenumber" type="text" class="form-control input-lg1" placeholder="Mobile number">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<input id="password" name="password" ng-model="password" type="password" class="form-control  input-lg1" value="" placeholder="Password*" >                                         
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12" align="center">
																<label style="float: left;">Profile Picture</label>
																<input type='file' id="imgInp" class="form-control"/>																
																<img src="#" id="target"/>																									
																<form name="myForm">
																	<input type="hidden" name="x" id="valuex" ng-model="valuex"/>
																	<input type="hidden" name="y" id="valuey" ng-model="valuey"/>
																	<input type="hidden" name="w" id="valuew" ng-model="valuew"/>
																	<input type="hidden" name="h" id="valueh" ng-model="valueh"/>																	
																</form>																
															</div>
														</div>
												</div>
												<div style="border-top: 2px solid green;" class="panel panel-default">
													<div style="padding: 5px 0px 0px 0px;" class="panel-body">
														<div class="panel-heading1"> education details </div>
													</div>
													<div class="panel-body">
														<div class="row">
															<div class="col-md-2">
																<div class="form-group">
																	<label>Degree Name</label>
																	<input id="degreename" name="degreename" ng-model="degreename" type="text" class="form-control input-lg1" placeholder="Degree">
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>Passing Year</label>
																	<input id="passingyear" name="passingyear" ng-model="passingyear" type="text" class="form-control input-lg1" placeholder="Passing Year">
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>Grade or %</label>
																	<input id="grade" name="grade" ng-model="grade" type="text" class="form-control input-lg1" placeholder="Grade or %">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Institute / University</label>
																	<input id="institutename" name="institutename" ng-model="institutename" type="text" class="form-control input-lg1" placeholder="Institute or College">
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<a id="Add" value="Add" name="Add" ng-click="addEducationRow()" class="btn btn-primary btn-lg" style="margin-top:26px;"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;Add</a>
																</div>
															</div>
														</div>
														<div class="row" ng-repeat="item in education">
															<div class="col-md-2">
																<div class="form-group">
																	<label>{{item.degreeName}}</label>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>{{item.passingYear}}</label>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<label>{{item.grade}}</label>
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>{{item.instituteName}}</label>
																</div>
															</div>
															<div class="col-md-2">
																<div class="form-group">
																	<a class="btn btn-danger btn-sm" ng-click="removeEducationRow(item.degreeName)" ng-if="item.degreeName != null"/><span class="glyphicon glyphicon-remove"></span></a>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!-- <div style="border-top: 2px solid green;" class="panel panel-default">
													<div style="padding: 5px 0px 0px 0px;" class="panel-body">
														<div class="panel-heading1"> login credentials </div>
													</div>
													<div class="panel-body">
														<div class="row">
															<div class="col-md-6">
																<div class="input-group">
																	<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
																	<input id="mobilenumber" name="mobilenumber" ng-model="mobilenumber" type="text" class="form-control input-lg1" placeholder="Mobile number*" ng-blur="checkmobilenumber()">
																</div>
															</div>
															<div class="col-md-6">
																<div class="input-group">
																	<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
																	<input id="password" name="password" ng-model="password" type="password" class="form-control  input-lg1" value="" placeholder="Password*" >                                         
																</div>
															</div>
														</div>
													</div>
													<div class="w3-note w3-example ">
														<p> <span style="color: red; font-weight: 600;"> Note: </span> your user name is your Mobile No.</p>
													</div>
												</div> -->
											</div>
										</div>
										<div style="padding: 1px 10px 0px 0px;  margin-top: -20px;">
											<nav aria-label="...">
												<ul class="pager">
													<li ng-show="membercategoryname == 7" class="next"><button type="submit" id="nextButOg" ng-click="addmemberdetail()" style="float: right; padding: 10px 20px; background-color: #fff; border: 1px solid #ddd; border-radius: 15px;">Save <i class="fa fa-plus" aria-hidden="true" ng-if="nospin == 1"></i><i class="fa fa-refresh fa-spin" ng-if="spin == 1"></i></button></li>
													<li ng-show="membercategoryname != 7" class="next"><button type="submit" id="nextButOg" ng-click="addmemberdetail()" style="float: right; padding: 10px 20px; background-color: #fff; border: 1px solid #ddd; border-radius: 15px;">Save & Next <i class="fa fa-plus" aria-hidden="true" ng-if="nospin == 1"></i><i class="fa fa-refresh fa-spin" ng-if="spin == 1"></i></button></li>
												</ul>
											</nav>
										</div>
									<!-- </form> -->
								</div>
							</div>
							<!-- Membership	 END-->	
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<div class="modal fade" id="businessCategoryModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Add Business Category</h4>
					</div>
					<div class="modal-body">							
						<form role="form">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<label>Business Category Title<font color="red" size="3">*</font></label>									
										<input type="text" class="form-control" id="businesscategorytitle" name="businesscategorytitle" ng-model="businesscategorytitle" placeholder="Business Category Title" autofocus>
									</div>
								</div>
							</div>
							<div class="row">								
								<div class="col-md-12">
									<div class="form-group">
										<label>Description</label>
										<textarea rows="3" class="form-control" name="businesscategorydescription" id="businesscategorydescription" ng-model="businesscategorydescription" placeholder="Description"></textarea>
									</div>
								</div>									
							</div>														
						</form>							
					</div>
					<div class="modal-footer">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-left" align="right">
							<div class="alert alert-success" style="margin-bottom: 0px; padding: 12px;" ng-hide="successMsg">
								<strong style="font-size: 16px;">Data added successfully!</strong>
							</div>
							<div class="alert alert-danger" style="margin-bottom: 0px; padding: 12px;" ng-hide="errorMsg">
								<strong style="font-size: 16px;">Something wrong, please try again!</strong>
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<button type="button" ng-click="addBusinessCategory()" class="btn btn-success">Save</button>
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>								
					</div>						
				</div>
			</div>
		</div>
		<%@include file="footer.jsp" %>	
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
