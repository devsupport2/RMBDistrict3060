<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Manage Members</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.min.js"></script>
	    <script src="<%=request.getContextPath() %>/resources/admin/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  	 -->		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/attendance.js"></script>
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
		</style>
	</head>	
	<body ng-app="rcbs" ng-controller="AttendanceCtrl" ng-cloak ng-init="<%=session.getAttribute("fellowshipId") %>">
		<%@include file="header.jsp" %>		
		<section>
			<div class="container">
				<div class="row">
					<div class="board">
						<div class="tab-content">
							<div class="tab-pane fade in active" id="membership">
							<div class="row" style="color: #333;">
												<div class="col-md-4 " style="font-size: 25px;"></div>
													<div class="col-md-8" style="font-size: 25px;">
													<span class="glyphicon glyphicon-user"> Manage Events Attendance  </span>													
												</div>
								</div>
										<br>			
								<div class="col-md-12">
									<div class="panel panel-default">
										<div class="panel-heading" style="border-top: 2px solid blue; background: -webkit-gradient(linear, left bottom, left top, color-stop(0, #e2e2e2), color-stop(1, #fafafa));">
												
											
											<div class="row" style="color: #333;margin-top: 10px;color: #333;">
												<div class="col-md-1" style="font-size: 20px;">
													
														<span><label>Shows</label> </span>
												
												</div>
												<!-- <div class="col-md-1">
													
														<select id="pageSize" name="pageSize" ng-model="pageSize" ng-options="item for item in pages" class="form-control" ng-change="changepage()">
														</select>
													
												</div> -->
												
												 <div class="col-md-3 " ng-show="<%=session.getAttribute("roleId") %> == '1'">
												
													<select ng-model="fellowship_id" id="fellowship_id" name="fellowship_name"  class="form-control input-lg2" ng-change="setFlag1()">
													<!-- 	<option value=""selected>{{items.fellowship_id}}</option> -->
														<option ng-repeat="items in getAllFellowshipNameList" value="{{items.fellowship_id}}" >{{items.fellowship_name}}</option>
													</select>
												<br><p ng-show="errorFellow == 1" style="color: red;" >{{fellowMessage}}</p>
												</div>
												
												
											 	<div class="col-md-3 " >
												
													<select ng-model="eventD" id="event_id" name="" class="form-control input-lg2" ng-change="setFlag1(); setEvent(eventD);">
														<option value=""selected>Select Event Name</option>
														<option ng-repeat="items in events" value="{{items}}">{{items.eventTitle}}</option>
													</select>
														<br><p ng-show="errorEvent == 1" style="color: red;">{{eventMessage}}</p>
												</div>
												
												
											</div>
										</div>
										<div class="panel-body">
											<div class="panel panel-success" ng-show="a == 0">
												<div class="panel-heading text-center">
													Loading Data Please Wait...
													<i class="fa fa-refresh fa-spin" style="font-size:24px"></i>
												</div>
											</div>											
											<div class="table-responsive">
												<table class="table table-bordered">
													<tbody >
													
														<tr style="color:black">
															<th style="color:black" width="5%">#</th>
														
															<th style="color:black" width="25%">NAME</th>														
															<th style="color:black" width="10%"> EMAIL ID</th>																
															<th style="color:black; text-align: center;"> Present </th>
															<th style="color:black; text-align: center;"> Absent</th>
															<th style="color:black; text-align: center;"> Leave</th>
															<th style="color:black; text-align: center;"> Substitute</th>
															<th style="color:black; text-align: center ;"> Time <br>{{eventTime}}</th>
															
																</tr>
														
														<tr ng-repeat="item in getmember1  | filter: { fellowship_id: fellowship_id}"  style="cursor:pointer;cursor:hand">
															<td style="color:black;" >{{$index + 1}}</td>
															
															<td style="color:black;" >{{item.firstName}}  {{item.lastName}} <span ng-if="item.user_role_id == 2"> [ {{item.user_role_name}} ] </span> </td>
															<td style="color:black;" > {{item.user_name}}</td>									
																<td style="color:black; text-align: center;"> <center> <input id="radio{{$index}}" ng-model="item.attendant_status" type="radio" name="p{{$index + 1}}" value="P"><br><p style="color: red;">{{item.ErrorMessage}}</p> </center></td>
															<td style="color:black; text-align: center;"> <center> <input ng-model="item.attendant_status" type="radio" name="p{{$index + 1}}" value="A"> </center></td>
															<td style="color:black; text-align: center;"> <center> <input ng-model="item.attendant_status" type="radio" name="p{{$index + 1}}" value="L"> </center></td>
															<td style="color:black; text-align: center;"> <center> <input ng-model="item.attendant_status" type="radio" name="p{{$index + 1}}" value="S"> </center></td>
															 <td style="color:black; text-align: center;"><input type="time" ng-model="item.arrival_time"  name="p" style="width: 100%"  >
																			
														</tr>
														
													</tbody>
												</table>
											</div>											
											<div class="clearfix"></div>
											<button type="button" class="btn btn-success" ng-click="addattendanceList()">Submit</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<%@include file="footer.jsp" %>
	</body>
</html>
