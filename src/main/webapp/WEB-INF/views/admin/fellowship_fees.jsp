<!DOCTYPE html>
<html lang="en">
	<head>
		<title>RMB Fees Manage</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.min.js"></script>
	    <script src="<%=request.getContextPath() %>/resources/admin/js/bootstrap.min.js"></script>
		
		<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  		 -->
		<%-- <script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script> --%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
		<link href="<c:url value="/resources/admin/css/bootstrap.min.css"></c:url>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/resources/admin/css/menustyle.css"></c:url>" rel="stylesheet" type="text/css" />		 		
		<%-- <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.maskedinput.js" type="text/javascript"></script> --%>		
		<!-------------- Bootstrap File Input Example Upload IMAGE  Scrept Start---->
		<link href="<%=request.getContextPath() %>/resources/upload-img/style.css" media="all" rel="stylesheet" type="text/css" />
		<link href="<%=request.getContextPath() %>/resources/upload-img/jquery-ui.css" media="all" rel="stylesheet" type="text/css" />		
<%-- 		<link href="<%=request.getContextPath() %>/resources/upload-img/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
		<script src="<%=request.getContextPath() %>/resources/upload-img/js/fileinput.js" type="text/javascript"></script>		
		<script src="<%=request.getContextPath() %>/resources/upload-img/js/fileinput_locale_fr.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath() %>/resources/upload-img/js/fileinput_locale_es.js" type="text/javascript"></script> --%>
		<!-------------- Bootstrap File Input Example Upload IMAGE  Scrept Start---->
	<!-- 	<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.common-material.min.css" />
		<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.min.css" />
		<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.mobile.min.css" /> -->
	
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/sidebar.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/fellowship_fees.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.Jcrop.js"></script>
	
		<style type="text/css" id="picture_basic_dependence_css">
			.picture-element-principal{background:url(images/icon_add_image2.png) no-repeat 50% 50%}.picture-dropped{border:2px #666 dashed!important;}
		</style>
		<style>	
			.table-wrapper{
				position: relative;
				height: 400px;
				overflow: auto;
			} 
			
			.custom-scroll {
				display: block;
			}		
			label {
			    display: inline-block;
			    max-width: 100%;
			    margin-bottom: 5px;
			    font-weight: 400;
			}	
			/* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}		
		</style>		
		<!-- <script type="text/javascript">
			jQuery(function($){
				   $("#joiningdate").mask("99/99/9999",{placeholder:"DD/MM/YYYY"});
				   $("#dateofbirth").mask("99/99/9999",{placeholder:"DD/MM/YYYY"});
				   $("#anniversarydate").mask("99/99/9999",{placeholder:"DD/MM/YYYY"});
				   $("#phone").mask("(999) 999-9999");
				   $("#tin").mask("99-9999999");
				   $("#ssn").mask("999-99-9999");
				});
		</script> -->
			
	</head>	
	<body ng-app="rcbs" ng-controller="fellowship_fees" ng-cloak ng-init="getRecevierDetail(<%= request.getParameter("memberid")%>) || getCommitieByFellowship(<%=session.getAttribute("fellowshipId") %>,<%=session.getAttribute("roleId") %> )  ">
		<%@include file="header.jsp" %>	
		<section>
			<div class="container">
				<div class="row">
					<div class="board">
						<div class="tab-content">
								<div class="tab-pane fade in active" id="membership">
									<div class="col-md-12">
										<div class="panel panel-default">
											<div class="panel-heading" style="border-top: 2px solid blue; background: -webkit-gradient(linear, left bottom, left top, color-stop(0, #e2e2e2), color-stop(1, #fafafa));">
												<div class="row" style="color: #333;">
													<div class="col-md-12 text-center">
														<div class="panel-title1">RMB-District 3060</div>
													</div>																									
												</div>
											</div>
											<div class="panel-body">
												<div class="row">
													
												
												<div style="border-top: 2px solid green;" class="panel panel-default">
													<div style="padding: 5px 0px 0px 0px;" class="panel-body">
														<div class="panel-heading1">Manage RMB Fellowship Fees   </div>
													</div>
													<div class="panel-body">
														<div class="row">
														
															<div class="col-md-4 " >
																		 <div class="form-group">
																	<label>Select Rotary Year</label>
																	<select class="form-control  input-lg2" id="rotaryyearid" ng-model="rotaryyearid" ng-options="item.rotaryYearId as item.rotaryYearTitle for item in rotaryyear" ng-change="getPaymentHistoryByYear()">
																		<option value="">Select</option>									
																	</select>					
															</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Member Type</label>
																	<select class="form-control input-lg2" id="membercategoryid" ng-model="membercategoryid" ng-options="item.memberCategoryId as item.memberCategoryName for item in getmembercategory">
																		<option value="">Select</option>									
																	</select>
																</div>						
															</div>
															
														<div class="col-md-4" ng-show="<%=session.getAttribute("roleId") %> == '1'">
															<div class="form-group">
																<label>Fellowship Name<font color="red" size="3">*</font></label>									
																	<select ng-model="fellowship_id" id="fellowship_id1" name="fellowship_name"  ng-change="FellowshipByFees(fellowship_id)" class="form-control input-lg2">
																		<option value="" selected>Select Fellowship Name </option>
																		<option ng-repeat="items in getAllFellowshipNameList"  value="{{items.fellowship_id}}">{{items.fellowship_name}} </option>
																	</select>
				
															</div>
														</div>
														
																
														<div class="col-md-4" ng-show="<%=session.getAttribute("roleId") %> == '2'">
															<div class="form-group">
																<label>Fellowship Name<font color="red" size="3">*</font></label>									
																	<select ng-model="fellowship_id" id="fellowship_id2" name="fellowship_name"  ng-init="getmember(fellowship_id)" class="form-control input-lg2 dropdownparrow" style=" background-color: #5b5fe424; color: black;" disabled  >
																		<option value="" selected>Select Fellowship Name </option>
																		<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
																	</select>
				
															</div>
														</div>
													
														
															</div>
														<div class="row">
															<div class="col-md-8">
															  <div class="form-group">
																<label>Select Members</label>
																
																<select class="form-control input-lg2" name="MemberLi" id="MemberLi" ng-model="MemberLi">
																	<option value="All"> Select All<!--  ({{getmember.length}}) --></option>
																	<option ng-repeat="item in FilterMember=(getmember | orderBy:'memberFirstName' | filter: { fellowship_id: fellowship_id})" value="{{item.member_id}}">{{item.firstName}} {{item.lastName}} - {{item.user_name}}</option>
																</select>
																<font style="color:red;" ng-if="memLiError == 1">{{memLirMsg}}</font>
															</div>
															
															</div>
														</div>	
															<div class="row">
															 <div class="col-md-4 " >
																	 <div class="form-group">
																<label>RMB-District Fellowship Fees</label>
																	<input type="number" ng-model="rmbdfees" class="form-control input-lg2"  ng-change="totalfees()"   placeholder="RMB-District Fellowship Fees" style=" background-color: #5b5fe424; color: black;" disabled  >
																</div>
															</div>
														<div class="col-md-3 " >
															<div class="form-group">
															<label>Fellowship Fees</label>
																<input type="number"  ng-model="rmbfess" class="form-control input-lg2"   ng-change="totalfees()"  placeholder="Fellowship Fees" />
															</div>
														</div>
														<div class="col-md-3 " >
															<div class="form-group">
															<label>Total Fees</label>
																<input type="number"  ng-model="paid_amount" class="form-control input-lg2"  ng-change="totalfees()"   placeholder="Total Fees" />
															</div>
														</div>
															<div class="col-md-2">
																<div class="form-group">
																	<a id="Add" value="Add" name="Add" ng-click="addMemberMailerList()" class="btn btn-primary btn-lg" style="margin-top:26px;"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp;Add</a>
																</div>
															</div>
														</div>
														
														
													</div>
												</div>
													
													
													
														
													
												</div>
												
												
												<div style="border-top: 2px solid green;" class="panel panel-default">
													<div style="padding: 5px 0px 0px 0px;" class="panel-body">
														<div class="panel-heading1"> Member List </div>
													</div>
													
												</div>
												<div class="table-wrapper custom-scroll">
												<div class="row text-center" >
													<div class="col-md-3">	<label> Name</label></div>
													<div class="col-md-3">	<label> Email</label></div>
													<div class="col-md-3">	<label> Total Fees</label></div>
													<div class="col-md-3">	<label> Delete</label></div>
												</div>
												<br>
													<div class="row text-center" ng-repeat="item in malierList">
														<div class="col-md-3">
															<div class="form-group">
																<label>{{item.memberFirstName}} {{item.memberLastName}}</label>
															</div>
														</div>
														<div class="col-md-3">
															<div class="form-group">
																<label>{{item.memberEmail}}</label>
															</div>
														</div>
														<div class="col-md-3">
															<div class="form-group">
																<label>{{item.paid_amount}} </label>
															</div>
														</div>
														<div class="col-md-3">
															<div class="form-group">
																<a class="btn btn-danger btn-sm" ng-click="removeEventMailerList(item)" /><span class="glyphicon glyphicon-remove"></span></a>
															</div>
														</div>
													</div>
												</div>
												
											</div>
										</div>
										<div class="row">
										<div class="col-md-12 text-center">
											
											<button class="btn btn-success btn-lg" ng-click="sendMail()" style="width:100%;" ng-disable="spin == 1"><i class="fa fa-refresh fa-spin" ng-show="spin == 1"></i><i class="fa fa-paper-plane" ng-show="spin != 1" ></i>&nbsp;&nbsp; Submit </button>
										</div>													
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
		<%@include file="footer.jsp" %>
		
	</body>
</html>
