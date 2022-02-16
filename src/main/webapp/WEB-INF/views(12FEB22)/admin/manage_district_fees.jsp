<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Manage District Fees</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.min.js"></script>
	    <script src="<%=request.getContextPath() %>/resources/admin/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script> 
	<%-- 	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script> --%>
				<script src="<%=request.getContextPath() %>/resources/admin/js/controller/manage_district_fees.js"></script>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
		<link href="<c:url value="/resources/admin/css/bootstrap.min.css"></c:url>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/resources/admin/css/menustyle.css"></c:url>" rel="stylesheet" type="text/css" />
		<style>
			input[type="date"]:hover::-webkit-calendar-picker-indicator {
			  color: red;
			}
			input[type="date"]:hover:after {
			  content: " Date Picker ";
			  color: #555;
			  padding-right: 5px;
			}
			input[type="date"]::-webkit-inner-spin-button {
			  /* display: none; <- Crashes Chrome on hover */
			  -webkit-appearance: none;
			  margin: 0;
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
	</head>	
	<body ng-app="rcbs" ng-controller="ManageDistrictFees" ng-init="getfellowshipList()">
		<%@include file="header.jsp" %>		
		<div class="panel-body">
			<div class="container">
				<div class="row panel panel-primary" style="width:auto;background-color:#eee;">
					<div class="col-md-4" align="left">
						<h3>Manage District Fees</h3>					
					</div>
					<div class="col-md-4" align="center" style="margin-top:15px">
						<div class="input-group">
							<input type="text" id="search" name="search" ng-model="search" class="form-control" placeholder="Filter Text" ng-keyup="$event.keyCode == 13 ? searchRecord() : null"/>
							<a class="input-group-addon" ng-click="searchRecord()" style="cursor: pointer;">
								<span class="glyphicon glyphicon-search"></span>
							</a>
						</div>
					</div>
					<div class="col-md-2" align="right" style="margin-top:15px">
						<div class="form-group">
							<a href="#" data-toggle="modal" data-target="#AddClub" class="btn btn-success btn-default">Add &nbsp;<span class="glyphicon glyphicon-plus"></span></a>
						</div>
					</div>
					<div class="col-md-2" align="right" style="margin-top:15px">
						<div class="form-group">
							<!-- <select id="pageSize" name="pageSize" ng-model="pageSize" ng-options="item for item in pages" class="form-control" ng-change="changepage()"></select> -->
						</div>
					</div>					
				</div>
				<div class="row">
										<div class="col-md-12">
										<form role="form" ng-submit="deleteAdminMember11()">
											<div class="table-responsive">
												<table id="mytable" class="table table-bordred table-striped">
													<thead>				
														<th width="20%">Rotary Year </th>						
														<th width="20%">Fellowship Name </th>
												
														<th width="30%">Rmb Fellowship Fees</th>
														
																														
														<th width="10%"> Delete</th>
													</thead>
													 <tbody>  
														<tr ng-repeat="item in getAllManageDistrictFessdata" >
															<td data-toggle="modal">{{item.rotaryYearTitle}}</td>					
															<td data-toggle="modal">{{item.fellowship_name}}</td>									
														<td data-toggle="modal">{{item.rmb_district_fee}}</td>
															<td><input  style="cursor:pointer;cursor:hand" type="checkbox" ng-model="item.selected" value="{{item.rmb_district_fees_id}}"></td>
												</tr>
													</tbody> 
												</table>
												<div class="form-group" style="float:right; margin-right:65px">
													<input type="submit" ng-click="deleteDistrictfees()" id="Delete" name="submit" class="btn btn-danger" value="Delete">
												</div>
												<div class="clearfix"></div>							
											</div>
										</form>
									</div>
				</div>									
				
			</div>
			
			<!--Edit Modal-->
			<div class="container">
				<div class="modal fade" id="EditClub" role="dialog">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Edit Fellowship Info</h4>
							</div>
							<div class="modal-body">							
								<form role="form">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label>Fellowship Name<font color="red" size="3">*</font></label>									
													<select ng-model="fellowship_id" id="fellowship_id" name="fellowship_name"  class="form-control input-lg2">
														<option value=""selected>Select Fellowship Name</option>
														<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
													</select>

											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label>Member Name<font color="red" size="3">*</font></label>									
													<select ng-model="fellowship_id" id="fellowship_id" name="fellowship_name"  class="form-control input-lg2">
														<option value=""selected>Member Name</option>
														<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
													</select>

											</div>
										</div>
									</div>
									 <div class="row">								
										<div class="col-md-12">
											<div class="form-group">
												<label>City</label>
												<input type="text" class="form-control" id="fellowship_city" name="fellowship_city" ng-model="fellowship.fellowship_city" placeholder="City Name" autofocus>
											</div>
										</div>									
									</div>													
								</form>							
							</div>
							<div class="modal-footer">
						
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<button type="button" ng-click="editllowship(fellowship.fellowship_id)" class="btn btn-success">Submit</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>								
							</div>													
						</div>
					</div>
				</div>
				
				
				<div class="modal fade" id="AddClub" role="dialog">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Add District Fellowship Fees</h4>
							</div>
							<div class="modal-body">							
								<form role="form">
									
									<div class="row">
									
										<div class="col-md-3">
											<div class="form-group">
												<label>Rotary Year<font color="red" size="3">*</font></label>
												<select class="form-control" id="rotaryyearid" ng-model="manageDistrictFess.rotary_year" >
													<option value="">Select</option>	
													<option ng-repeat="items in getRotarydata"  value="{{items.rotaryYearId}}">{{items.rotaryYearTitle}}</option>								
												</select>
											</div>						
										</div>
											<div class="col-md-3">
												<div class="form-group">
													<label>Fellowship Name<font color="red" size="3">*</font></label>									
														<select ng-model="manageDistrictFess.fellowship_id" id="fellowship_id" name="fellowship_name"  ng-change="getmember(fellowship_id)" class="form-control input-lg2">
															<option value=""selected>Select Fellowship Name</option>
															<option ng-repeat="items in getAllFellowshipNameList"  value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
														</select>
	
												</div>
										</div>
										<div class="col-md-4 " >
											 <div class="form-group">
										<label>RMB-District Fellowship Fees</label>
											<input type="number" ng-model="manageDistrictFess.rmb_district_fee" class="form-control input-lg2" id="rmb_district_fees" placeholder="RMB-District Fellowship Fees" />
										</div>
									</div>
										<div class="col-md-1"  style="margin-top:26px;">
										<div class="form-group">
											<a   ng-click="addmanageDistrictFess()"  class="btn btn-success btn-default">Add <!-- Admin --></a>
										</div>
									</div>
									</div>	
									
									<br><br>
									<div class="row">
										<div class="col-md-12">
										<form role="form" ng-submit="deleteAdminMember()">
											<div class="table-responsive">
												<table id="mytable" class="table table-bordred table-striped">
													<thead>										
														<th width="20%">Rotary Year </th>						
														<th width="20%">Fellowship Name </th>
												
														<th width="30%">RMB District Fees </th>
													
																														
														<th width="10%"> Delete</th></thead>
													 <tbody>  
														<tr ng-repeat="item in getAllManageDistrictFessdata" >
															<td data-toggle="modal">{{item.rotaryYearTitle}}</td>					
															<td data-toggle="modal">{{item.fellowship_name}}</td>	
															<td data-toggle="modal">{{item.rmb_district_fee}}</td>								
														
															<td><input  style="cursor:pointer;cursor:hand" type="checkbox" ng-model="item.selected" value="{{item.rmb_district_fees_id}}"></td>
												</tr>
													</tbody> 
												</table>
												<div class="form-group" style="float:right; margin-right:65px">
													<input type="submit" ng-click="deleteAdminMember()" id="Delete" name="submit" class="btn btn-danger" value="Delete">
												</div>
												<div class="clearfix"></div>							
											</div>
										</form>
									</div>
				</div>											
								</form>							
							</div>
							<div class="modal-footer">
						
								<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
									<!-- <button type="button"  class="btn btn-success">Save</button> -->
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>								
							</div>						
						</div>
					</div>
				</div>
			</div>			
		</div>		
		<%@include file="footer.jsp" %>
	</body>
</html>
