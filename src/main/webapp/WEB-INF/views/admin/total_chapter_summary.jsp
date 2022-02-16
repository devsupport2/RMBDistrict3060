<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Manage Admin List</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.min.js"></script>
	    <script src="<%=request.getContextPath() %>/resources/admin/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script> 
	<%-- 	<script src="<%=request.getContextPath() %>/resources/admin/js/controller/app.js"></script> --%>
				<script src="<%=request.getContextPath() %>/resources/admin/js/controller/total_chapter.js"></script>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
		<link href="<c:url value="/resources/admin/css/bootstrap.min.css"></c:url>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/resources/admin/css/menustyle.css"></c:url>" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.common-material.min.css" />
		<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.min.css" />
		<link rel="stylesheet" href="https://kendo.cdn.telerik.com/2017.3.1026/styles/kendo.material.mobile.min.css" />
		<script src="https://kendo.cdn.telerik.com/2017.3.1026/js/kendo.all.min.js"></script>		
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
		</style>
	</head>	
	<body ng-app="rcbs" ng-controller="TotalChapterCtrl" ng-init="getfellowshipName()">
		<%@include file="header.jsp" %>		
		<div class="panel-body">
			<div class="container">
				<div class="row panel panel-primary" style="width:auto;background-color:#eee;">
					<div class="col-md-4" align="left">
						<h3>Manage Chapter Summary </h3>					
					</div>
					<div class="col-md-4" align="center" style="margin-top:15px">
						<div class="input-group">
							<input type="text" id="search" name="search" ng-model="search" class="form-control" placeholder="Filter Text" ng-keyup="$event.keyCode == 13 ? searchRecord() : null"/>
							<a class="input-group-addon" ng-click="searchRecord()" style="cursor: pointer;">
								<span class="glyphicon glyphicon-search"></span>
							</a>
						</div>
					</div>
				
					
									
				</div>
				<div class="row">
										<div class="col-md-12">
										<form role="form" ng-submit="deleteAdminMember11()">
											<div class="table-responsive">
												<table id="mytable" class="table table-bordred table-striped">
													<thead>										
														<th width="20%">Fellowship Name</th>
														<th width="10%">Refference Count</th>
														<th width="10%">Business Count</th>
													 <th width="10%">Meeting Count</th> 
													<!-- 	<th width="65%">Description</th>	 -->																		
													
													</thead>
													 <tbody>  
													
													 
														<tr ng-repeat="item in totalsummary"  style="cursor:pointer; cursor:hand">					
															<td ng-click="getdatasummary(item.fellowship_id)">{{item.fellowship_name}}</td>
															<td  ng-click="getdatasummary(item.fellowship_id)" >{{item.allCo.refferencecount}} </td>	
															<td   ng-click="getdatasummary(item.fellowship_id)">{{item.allCo.Businessgiven}}</td>	
															<td   ng-click="getdatasummary(item.fellowship_id)">{{item.allCo.given_meetingcount}}</td>
														</tr>
													</tbody> 
												</table>
												
												<div class="clearfix"></div>							
											</div>
										</form>
									</div>
				</div>									
				
			</div>
			
			
					
		</div>		
		<%@include file="footer.jsp" %>
	</body>
	<script>
			$(document).ready(function () {			 		         
		         $("#datepicker, #datepicker1").kendoDatePicker({
		       		format: "dd/MM/yyyy",
					dateInput: true					
		         });		         
		    });
			$(".KendoDate").bind("focus", function(){
	   			$(this).data("kendoDatePicker").open(); 
			});
		</script>	
</html>
