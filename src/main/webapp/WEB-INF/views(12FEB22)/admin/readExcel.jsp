<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="<%=request.getContextPath() %>/resources/admin/js/jquery.min.js"></script>
	    <script src="<%=request.getContextPath() %>/resources/admin/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/angular.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/front/images/favicon.png">
		<link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/admin/font-awesome/css/font-awesome.min.css">
		<link href="<c:url value="/resources/admin/css/bootstrap.min.css"></c:url>" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/resources/admin/css/menustyle.css"></c:url>" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">		
		<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
		<script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
		<script src="https://cdn.jsdelivr.net/webshim/1.12.4/extras/modernizr-custom.js"></script>
		<script src="//cdn.jsdelivr.net/webshim/1.14.5/polyfiller.js"></script>
				<script src="<%=request.getContextPath() %>/resources/admin/js/controller/config.js"></script>
		<script src="<%=request.getContextPath() %>/resources/admin/js/controller/readExcel.js"></script>
<style type="text/css">

table{
 margin: auto;
  width: 85%;

  padding: 10px;
}
th{
	text-align: center;
}
input{  width: 100%;border: none;}
.center {
  margin: auto;
  width: 50%;

  padding: 10px;
}
</style>
   <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/xlsx.full.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/jszip.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


</head>

<body id="page-top" ng-app="rcbs" ng-controller="ReadExcelCtrl">
 <%@ include file="header.jsp" %> 
<%-- <center> <h1> Excel Import <br></h1></center> --%>
	<div class="tab-pane fade in active" id="membership">
									<div class="col-md-12">
										<div class="panel panel-default">
											<div class="panel-heading" style="border-top: 2px solid blue; background: -webkit-gradient(linear, left bottom, left top, color-stop(0, #e2e2e2), color-stop(1, #fafafa));">
												<div class="row" style="color: #333;">
													<div class="col-md-6">
														<div class="panel-title1">Excel Import</div>
													</div>
													<!-- <div class="col-md-6" align="right">
														<div class="panel-title1">1</div>
													</div>	 -->																									
												</div>
											</div>
<div class="panel-body">
				<div class="row">
				
				<div class="col-md-3">
						<div class="form-group">
							<label>Fellowship Name<font color="red" size="3">*</font></label>
							<select ng-model="fellowship_id" id="fellowship_id" name="fellowship_name"   class="form-control input-lg2" requried>
								<option value=""selected>Select Fellowship Name</option>
								<option ng-repeat="items in getAllFellowshipNameList"  value="{{items.fellowship_id}}">{{items.fellowship_name}}</option>
							</select>
						</div>
					</div>
					
				
					<div class="col-lg-3">
						<div class="form-group">
							<label style="visibility: hidden;">ChooseFile<font color="red" size="3">*</font></label>
							<input type="file" id="fileUpload" style="cursor: pointer;font-size: 22px;" > 
						</div>
					</div>
					
					<div class="col-lg-3">
					<div class="form-group">
							<label style="visibility: hidden;">View<font color="red" size="3">*</font></label>
							<input type="button" id="upload" class=" btn btn-primary" value="View" style="cursor: pointer;cursor: pointer; border: black; height: 30px;"  ng-click="Upload()" >
						</div>
					</div>
					
					<div class="col-lg-3">
						<div class="form-group">
							<label  style="visibility: hidden;">Sample Excel<font color="red" size="3">*</font> <br></label>
							<div class="form-group">
									<a href="<%=request.getContextPath() %>/resources/front2/sample.xlsx" class="btn btn-success" style="    padding: 5px 12px" download data-toggle="tooltip" title="Sample Excel">
									  <span class="glyphicon glyphicon-download-alt"></span>
									  <span class="glyphicon glyphicon-list-alt"></span>
									</a>
									</div>
						</div>
					</div>
					
				
</div>

</div>	
</div>
</div>
</div>
												
<div class="row" >
<div class="col-lg-2"> </div>



</div>



<hr />


<form ng-submit="addExcel()">
<div id="dvExcel" style="text-align: center;" onload="findDupes()"></div>
<br><br><br>




<center>
	<input type="button" value="check" name="btn" class="ter btn btn-primary"  style="width: 6%;cursor: pointer;"> 
	<!-- <input type="submit"  ng-disabled="spin == 1" value="submit" name="btn" class="ter btn btn-success"  style="width: 6%;cursor: pointer;"> -->
	<button type="submit"  ng-disabled="spin == 1"  name="btn" class="ter btn btn-success"  style="width: 6%;cursor: pointer;"> Submit   <i ng-show="spin == 1" class="fa fa-spin fa-spinner" aria-hidden="true"></i></button>
</center>
</form>
</body>


<script>
$(document).ready(function(){
    $('.ter').click(function(e) {
        var stored  =   [];
        var inputs  =   $('.test');
        $.each(inputs,function(k,v){
            var getVal  =   $(v).val();
            if(stored.indexOf(getVal) != -1){
                $(v).focus().css({"background-color": "red"});
                $(v).focus().css({"color": "white"});
				
				}
            else{
                stored.push($(v).val());
                $(v).focus().css({"background-color": "#a3f5a361"});
                $(v).focus().css({"color": "black"});
                     
            }
        });
    });
});
</script>

<script>
$(document).ready(function(){
    $('.ter').click(function(e) {
        var stored  =   [];
        var inputs  =   $('.test1');
        $.each(inputs,function(k,v){
            var getVal  =   $(v).val();
            if(stored.indexOf(getVal) != -1){
                $(v).focus().css({"background-color": "red"});
                $(v).focus().css({"color": "white"});
                
				
				}
            else{
                stored.push($(v).val());
                $(v).focus().css({"background-color": "#a3f5a361"});
                $(v).focus().css({"color": "black"});
                     
            }
        });
    });
});
</script>

<script	src="<%=request.getContextPath()%>/resources/js/angular.min.js"></script>
<script	src="<%=request.getContextPath()%>/resources/js/controller/conf.js"></script>
<script	src="<%=request.getContextPath()%>/resources/js/controller/readExcel.js"></script>
</html>