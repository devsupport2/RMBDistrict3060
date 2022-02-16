<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Payment History</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.min.js"></script>
	    <script src="<%=request.getContextPath() %>/resources/admin/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/payment_history.js"></script>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
		<link href="<c:url value="/resources/admin/css/bootstrap.min.css"></c:url>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/resources/admin/css/menustyle.css"></c:url>" rel="stylesheet" type="text/css" />	
		<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.common-material.min.css" />
		<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.min.css" />
		<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.mobile.min.css" />
		<script src="https://kendo.cdn.telerik.com/2017.3.1026/js/kendo.all.min.js"></script>
		<style>
			/* For Firefox */
			input[type='number'] {
			    -moz-appearance:textfield;
			}
			/* Webkit browsers like Safari and Chrome */
			input[type=number]::-webkit-inner-spin-button,
			input[type=number]::-webkit-outer-spin-button {
			    -webkit-appearance: none;
			    margin: 0;
			}
		</style>	
	</head>	
	<body ng-app="rcbs" ng-controller="paymentHistoryCtlr" ng-cloak ng-init="getCommitieByFellowship(<%=session.getAttribute("fellowshipId") %>,<%=session.getAttribute("roleId") %> )">
		<%@include file="header.jsp" %>		
		<div class="panel-body">
			<div class="container">
			<div class="row" style="color: #333;">
					<div class="col-md-4 " style="font-size: 25px;"></div>
						<div class="col-md-3 " style="font-size: 25px;">
						<span class="glyphicon glyphicon-user"> Payment History </span>													
					</div>
	</div>
				<div class="row panel panel-primary" style="background-color:#eee;">
					<div class="col-md-1" style="margin-top: 10px; margin-bottom: 10px; font-size: 18px;">
						<select id="pageSize" name="pageSize" ng-model="pageSize" ng-options="item for item in pages" class="form-control" ng-change="changepage()"></select>	
					</div>
					<div class="col-md-2"  ng-show="<%=session.getAttribute("roleId") %> == '1'" align="center" style="margin-top: 10px; margin-bottom: 10px; font-size: 18px;">
						<select class="form-control" id="rotaryyearid" ng-model="rotaryyearid" ng-options="item.rotaryYearId as item.rotaryYearTitle for item in rotaryyear" ng-change="getPaymentHistoryByYear()">
							<option value="">Select</option>									
						</select>					
					</div>
					<div class="col-md-3"  ng-show="<%=session.getAttribute("roleId") %> == '2'" align="center" style="margin-top: 10px; margin-bottom: 10px; font-size: 18px;">
						<select class="form-control" id="rotaryyearid" ng-model="rotaryyearid" ng-options="item.rotaryYearId as item.rotaryYearTitle for item in rotaryyear" ng-change="getPaymentHistoryByYear()">
							<option value="">Select</option>									
						</select>					
					</div>
					<!-- <div class="col-md-4" align="center" style="margin-top: 10px; margin-bottom: 10px; font-size: 18px;">
						<strong>Payment History</strong>					
					</div> -->
					<div class="col-md-1 " ng-show="<%=session.getAttribute("roleId") %> == '2'">
							
								
							</div>
						
							 <div class="col-md-3 " ng-show="<%=session.getAttribute("roleId") %> == '1'" style="margin-top: 10px; margin-bottom: 10px; font-size: 18px;">
							
								<select ng-model="fellowship_id" id="fellowship_id" name="fellowship_name" ng-change="getmember(fellowship_id)" class="form-control input-lg2">
									<option value=""selected>Select Fellowship Name</option>
									<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
								</select>
							</div>
							
							<div class="col-md-2 " style="margin-top: 10px; margin-bottom: 10px; font-size: 18px;">
							
								<select ng-model="paymentStatus" id="paymentStatus" name="paymentStatus" ng-change="getmember(paymentStatus)" class="form-control input-lg2">
									<option value="">Payment Status</option>
									<option value="Paid">Paid</option>
									<option value="UnPaid">UnPaid</option>
									
								</select>
							</div>
							
					<div class="col-md-1" align="center" style="margin-top: 10px; margin-bottom: 10px; font-size: 18px;">
						<button class="btn btn-success" title="Add Payment" data-toggle="modal" data-target="#addPaymentModal" ng-click="getfellowship(<%=session.getAttribute("fellowshipId") %>)"><span class="glyphicon glyphicon-plus"></span></button>					
					</div>
					<div class="col-md-3" align="center" style="margin-top: 10px; margin-bottom: 10px; font-size: 18px;">
						<div class="input-group">							
							<input placeholder="Search Member" type="text" class="form-control" id="search" name="search" ng-model="search" ng-keyup="$event.keyCode == 13 ? searchAppointedPatient() : null">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button" ng-click="searchRecord()" title="Search Member by Member Name">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</span>
						</div>					
					</div>	
					
													
				</div>
				<form role="form">										
					<div class="row">
						<div class="col-md-12 table-responsive">
							<table class="table table-striped" width="100%">
								<tr>
									<th>Fellowship Name</th>
									<th>Member</th>
									<th>Rotary Year</th>
									<th>Member Type</th>
									<th>Payment Method</th>		
									<th>Payment Status</th>						
									<th class="text-right">Paid Amt.(INR)</th>		
									<th> Mail / SMS &nbsp;<input type="checkbox" ng-model="selectedAll" ng-click="checkAll()"> </th>											
								</tr>								 
								<tr style="cursor:pointer;cursor:hand" ng-repeat="item in getpaymenthistory | filter: { fellowship_id: fellowship_id} | filter: { paymentStatus: paymentStatus}" ng-if="item.role_id != 1">
								<td data-toggle="modal" data-target="#paymentModal" title="Add Payment" ng-click="getPaymentDetail(item.memberId)">{{item.fellowship_name}}</td>
									<td data-toggle="modal" data-target="#paymentModal" title="Add Payment" ng-click="getPaymentDetail(item.memberId)">{{item.memberTitleName}} {{item.memberFirstName}} {{item.memberLastName}}</td>
									<td data-toggle="modal" data-target="#paymentModal" title="Add Payment" ng-click="getPaymentDetail(item.memberId)">{{item.rotaryYearTitle}}</td>
									<td data-toggle="modal" data-target="#paymentModal" title="Add Payment" ng-click="getPaymentDetail(item.memberId)">{{item.memberCategoryName}}</td>
									<td data-toggle="modal" data-target="#paymentModal" title="Add Payment" ng-click="getPaymentDetail(item.memberId)">{{item.paymentMethod}}</td>
									<td data-toggle="modal" data-target="#paymentModal" title="Add Payment" ng-click="getPaymentDetail(item.memberId)">{{item.paymentStatus}}</td>
									<td data-toggle="modal" data-target="#paymentModal" title="Add Payment" class="text-right" ng-click="getPaymentDetail(item.memberId)">{{item.paidAmount | number:2}} {{item.currencyCode}}</td>																											
									<td  class="text-center"><input type="checkbox" ng-model="item.selected" value="{{item.memberId}}"></td>
								</tr>	
																							
							</table>
							<div class="form-group" style="float:right; margin-right:65px">
									<!-- <input type="submit" id="Delete" name="submit" class="btn btn-success" value="SEND MAIL / SMS"> <span class="glyphicon glyphicon-send"></span> -->
								 <button class="btn btn-success "  ng-click="MemberCheck()" style="width:100%;" ng-disable="spin == 1">
								 <i class="fa fa-refresh fa-spin" ng-show="spin == 1"></i>&nbsp;&nbsp; SEND MAIL / SMS 
								  <span class="glyphicon glyphicon-send"></span></button> 
							</div>
						</div>							
					</div>								
				</form>	
				<div class="well well-sm">
					<div class="row">
						<div class="col col-lg-8 col-md-8 col-sm-7 col-xs-7 text-left" style="margin: 10px 0;">
							<div class="hint-text">Showing <b>{{startindex+1}}-{{getpaymenthistory.length}}</b> out of <b>{{getpendingpayments.length}}</b> entries</div>
						</div>
						<div class="col col-lg-4 col-md-4 col-sm-5 text-center">
							<ul class="pagination hidden-xs pull-right" style="margin: 5px 0;">
								<li class="disabled" ng-show="currentPage <= 0"><a href="#">Previous</a></li>
								<li class="page-item" ng-show="currentPage > 0"><a href="#" ng-click="prev()">Previous</a></li>
								<li class="active"><a href="#">{{currentPage+1}}</a></li>
								<li class="disabled" ng-show="getpaymenthistory.length+startindex == getpaymenthistory.length"><a href="#" class="page-link">Next</a></li>
								<li class="page-item" ng-show="getpaymenthistory.length+startindex != getpaymenthistory.length"><a href="#" class="page-link" ng-click="next()">Next</a></li>
							</ul>
							<ul class="pagination visible-xs pull-right" style="margin: 10px 0;">
								<li class="disabled" ng-show="currentPage <= 0"><a href="#"><span class="glyphicon glyphicon-arrow-left"></span></a></li>
								<li ng-show="currentPage > 0"><a href="#"><span class="glyphicon glyphicon-arrow-left"></span></a></li>
								<li class="disabled" ng-show="getpaymenthistory.length+startindex == getpaymenthistory.length"><a href="#"><span class="glyphicon glyphicon-arrow-right"></span></a></li>
								<li ng-show="getpaymenthistory.length+startindex != getpaymenthistory.length"><a href="#"><span class="glyphicon glyphicon-arrow-right"></span></a></li>
							</ul>
						</div>
					</div>
				</div>			
			</div>				
		</div>
		<div class="modal fade" id="paymentModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Add Payment</h4>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<table class="table table-bordered" style="width: 100%;">									
									<tbody align="center">
										<tr>											
											<td>Member Name</td>
											<td>Trasaction For</td>
											<td>Rotary Year</td>
											<td>Member Category</td>																										
										</tr>
										<tr>											
											<td><strong>{{getpendingpaymentdetailbymemberid.memberNameTitle}}{{getpendingpaymentdetailbymemberid.memberFirstName}} {{getpendingpaymentdetailbymemberid.memberMiddleName}} {{getpendingpaymentdetailbymemberid.memberLastName}}</strong></td>
											<td><strong>{{getpendingpaymentdetailbymemberid.transactionForName}}</strong></td>
											<td><strong>{{getpendingpaymentdetailbymemberid.rotaryYearTitle}}</strong></td>
											<td><strong>{{getpendingpaymentdetailbymemberid.memberCategoryName}}</strong></td>																									
										</tr>												
									</tbody>
								</table>
								<table class="table table-bordered" style="width: 100%;">									
									<tbody align="center">
										<tr>											
											<td>Amount</td>
											<td>Payment Status</td>
											<td>Payment Method</td>																																					
										</tr>
										<tr>											
											<!-- <td><strong>{{getpendingpaymentdetailbymemberid.paymentAmount | number : 2}} {{getpendingpaymentdetailbymemberid.currencyCode}}</strong></td> -->
											<td><strong>{{getpendingpaymentdetailbymemberid.paidAmount | number : 2}} {{getpendingpaymentdetailbymemberid.currencyCode}}</strong></td>
										
											<td><strong>{{getpendingpaymentdetailbymemberid.paymentStatus}}</strong></td>
											<td>
												<select class="form-control" id="paymentmethod" ng-model="paymentmethod">
													<option value="">Payment Type*</option>
													<option value="Cash">Cash</option>
													<option value="Cheque">Cheque</option>
													<option value="Demand Draft">Demand Draft</option>												
												</select>												
											</td>																																			
										</tr>
										<tr ng-show="paymentmethod == 'Cheque' || paymentmethod == 'Demand Draft' || paymentmethod == 'Debit Card'">																	
											<td>												
												<input type="text" class="form-control" placeholder="Bank Name" id="bankname" ng-model="bankname">
											</td>
											<td>												
												<input type="text" class="form-control" placeholder="Branch Name" id="branchname" ng-model="branchname">
											</td>
											<td>												
												<input type="text" class="form-control" placeholder="Cheque/Draft No." id="chequeno" ng-model="chequeno">
											</td>																																			
										</tr>
										<tr ng-show="paymentmethod == 'Cheque' || paymentmethod == 'Demand Draft' || paymentmethod == 'Debit Card'">
											<td colspan = 2>												
												Cheque/Draft Date: <input class="KendoDate" type="date" id="datepicker" title="Cheque/Draft Date" name="chequedate" ng-model="chequedate" style="width: 65%"/>
											</td>																												
											<td>												
												<input type="number" class="form-control" placeholder="Amount" id="chequepaidamount" ng-model="chequepaidamount" style="text-align: right;">
											</td>																																													
										</tr>
										<tr ng-show="paymentmethod == 'Cash'">
											<td colspan = 2>
												Payment Date: <input class="KendoDate" type="date" id="datepicker1" title="Payment Date" name="paymentdate" ng-model="paymentdate" style="width: 65%"/>		
											</td>																	
											<td>												
												<input type="number" class="form-control" placeholder="Amount" id="cashpaidamount" ng-model="cashpaidamount" style="text-align: right;">
											</td>																																													
										</tr>												
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group row">
  							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-left" align="right">
								<div class="alert alert-success" ng-hide="successMsg">
									<strong style="font-size: 12px;">Record Added Successfully!</strong>
								</div>
								<div class="alert alert-danger" ng-hide="errorMsg">
									<strong style="font-size: 12px;">Something wrong, please try again!</strong>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" align="right">
								<button type="button" class="btn btn-success" ng-click="addPaymentInfo()">Save</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
						</div>						
					</div>
				</div>
			</div>
		</div>
	
		<div class="modal fade" id="addPaymentModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Add Payment</h4>
					</div>
					<div class="modal-body">
						<div class="row">
						<%-- ng-show="<%=session.getAttribute("roleId") %> == '1'" --%>
						<!--  <div class="col-md-4 "  >
							<div class="form-group">
									<label>Fellowship Name<font color="red" size="3">*</font></label>
								<select ng-model="fellowship_id" id="fellowship_id" name="fellowship_name" ng-change="getmember(fellowship_id)" class="form-control input-lg2">
									<option value=""selected>Select Fellowship Name</option>
									<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
								</select>
								</div>
							</div> -->
										<div class="col-md-4" ng-show="<%=session.getAttribute("roleId") %> == '1'">
											<div class="form-group">
												<label>Fellowship Name<font color="red" size="3">*</font></label>									
													<select ng-model="fellowship_id" id="fellowship_id1" name="fellowship_name"  ng-change="getmember(fellowship_id)" class="form-control input-lg2">
														<option value="" selected>Select Fellowship Name </option>
														<option ng-repeat="items in getAllFellowshipNameList"  value="{{items.fellowship_id}}">{{items.fellowship_name}} </option>
													</select>

											</div>
										</div>
										
												
										<div class="col-md-4" ng-show="<%=session.getAttribute("roleId") %> == '2'">
											<div class="form-group">
												<label>Fellowship Name<font color="red" size="3">*</font></label>									
													<select ng-model="fellowship_id" id="fellowship_id2" name="fellowship_name"  class="form-control input-lg2 dropdownparrow" style=" background-color: #5b5fe424; color: black;" disabled >
														<option value="" selected>Select Fellowship Name </option>
														<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
													</select>

											</div>
										</div>
						
							<div class="col-md-4">
											<div class="form-group">
												<label>Member Name<font color="red" size="3">*</font></label>									
													<select ng-model="memberid" id="memberid" name="memberid" class="form-control input-lg2">
														<option value=""selected>Member Name </option>
														<option ng-repeat="items in getAllMemberNamedata | filter: { fellowship_id: fellowship_id}" value="{{items.member_id}}">{{items.firstName}} {{items.lastName}} - {{items.user_name}}</option>
													</select>

											</div>
										</div>		
							<div class="col-md-4">
								<div class="form-group">
									<label>Rotary Year<font color="red" size="3">*</font></label>
									<select class="form-control" id="rotaryyearid" ng-model="rotaryyearid" ng-options="item.rotaryYearId as item.rotaryYearTitle for item in rotaryyear">
										<option value="">Select</option>									
									</select>
								</div>						
							</div>
						
						</div>
						
							<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label>Member Type<font color="red" size="3">*</font></label>
									<select class="form-control" id="membercategoryid" ng-model="membercategoryid" ng-options="item.memberCategoryId as item.memberCategoryName for item in getmembercategory">
										<option value="">Select</option>									
									</select>
								</div>						
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label>Payment Method<font color="red" size="3">*</font></label>
									<select class="form-control" id="paymentmethod" ng-model="paymentmethod">
										<option value="">Payment Type*</option>
										<option value="Cash">Cash</option>
										<option value="Cheque">Cheque</option>
										<option value="Demand Draft">Demand Draft</option>												
									</select>
								</div>						
							</div>
							</div>
						<div class="row">
							<div class="col-md-12 table-responsive">
								<table class="table table-bordered" style="width: 100%;">									
									<tbody align="center">
										<tr ng-show="paymentmethod == 'Cheque' || paymentmethod == 'Demand Draft' || paymentmethod == 'Debit Card'">																	
											<td>												
												<input type="text" class="form-control" placeholder="Bank Name" id="bankname" ng-model="bankname">
											</td>
											<td>												
												<input type="text" class="form-control" placeholder="Branch Name" id="branchname" ng-model="branchname">
											</td>
											<td>												
												<input type="text" class="form-control" placeholder="Cheque/Draft No." id="chequeno" ng-model="chequeno">
											</td>																																			
										</tr>
										<tr ng-show="paymentmethod == 'Cheque' || paymentmethod == 'Demand Draft' || paymentmethod == 'Debit Card'">
											<td colspan = 2>												
												Cheque/Draft Date: <input class="KendoDate" type="date" id="datepicker" title="Cheque/Draft Date" name="chequedate" ng-model="chequedate" style="width: 65%"/>
											</td>																												
											<td>												
												<input type="number" class="form-control" placeholder="Amount" id="chequepaidamount" ng-model="chequepaidamount" style="text-align: right;">
											</td>																																													
										</tr>
										<tr ng-show="paymentmethod == 'Cash'">
											<td colspan = 2>
												Payment Date: <input class="KendoDate" type="date" id="datepicker1" title="Payment Date" name="paymentdate" ng-model="paymentdate" style="width: 65%"/>		
											</td>																	
											<td>												
												<input type="number" class="form-control" placeholder="Amount" id="cashpaidamount" ng-model="cashpaidamount" style="text-align: right;">
											</td>																																													
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group row">
  							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-left" align="right">
								<div class="alert alert-success" ng-hide="successMsg">
									<strong style="font-size: 12px;">Record Added Successfully!</strong>
								</div>
								<div class="alert alert-danger" ng-hide="errorMsg">
									<strong style="font-size: 12px;">Something wrong, please try again!</strong>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" align="right">
								<button type="button" class="btn btn-success" ng-click="addPayment()">Save</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
						</div>						
					</div>
				</div>
			</div>
		</div>				
		<script>
  		  	$(document).ready(function () {  				
  		         $("#datepicker,#datepicker1").kendoDatePicker({
  		       		format: "dd/MM/yyyy",
  					dateInput: true,
  					value: new Date()
  		         });	  		     
  		  	});
	  		$(".KendoDate").bind("focus", function(){
	        	$(this).data("kendoDatePicker").open();
	  		});	  		
  		</script>
		<%@include file="footer.jsp" %>
	</body>
</html>
