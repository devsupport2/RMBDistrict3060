<div class="modal-dialog" role="document">
<div class="modal-content">
<div  class="modal-header bg-gradient-primary">
<h5 class="modal-title text-white" id="exampleModalLabel"> Say Thank you for your closed business </h5>
<button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
<i class="fa fa-times"></i>
</button>
</div>

<div class="modal-body">

<form class="">

<div class="form-group">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">												
		<lable>Thank you to<font color="red" size="3">*</font></lable>
		<select class="form-control" name="tomemberid" id="tomemberid" ng-model="tomemberid">
			<option value="">Select</option>
			<option ng-repeat="item in getmember" value="{{item.memberId}}" ng-hide="item.memberId == <%= session.getAttribute("loginid") %>">{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</option>
		</select>														
	</div>
</div>
</div>


	
	<div class="form-group">
		<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">												
					<lable>Amount (in INR)<font color="red" size="3">*</font></lable>
					<input type="number" class="form-control" name="amount" id="amount" ng-model="amount" >														
				</div>
		</div>
	</div>





	<div class="form-group">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<lable>Date<font color="red" size="3">*</font></lable>
				<input class="KendoDate" id="slipdate1" ng-model="slipdate1" title="Select Date" placeholder="DD/MM/YYYY" style="width: 100%;"/>														
			</div>
		</div>
	</div>



<div class="form-group">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	<lable>Referral Type<font color="red" size="3">*</font></lable><br>
				&emsp;<label class="radio-inline"><input type="radio" name="optradio1" ng-model="referraltype" value="Inside">&emsp;Inside</label>
				&emsp;<label class="radio-inline"><input type="radio" name="optradio1" ng-model="referraltype" value="Outside">&emsp;Outside</label>
				&emsp;<label class="radio-inline"><input type="radio" name="optradio1" ng-model="referraltype" value="Tier 3+">&emsp;Tier 3+</label>																			
	</div>
</div>
</div>

<div class="form-group">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<lable>Business Type<font color="red" size="3">*</font></lable><br>
		&emsp;<label class="radio-inline"><input type="radio" name="optradio" ng-model="businesstype" value="New">&emsp;New</label>
		&emsp;<label class="radio-inline"><input type="radio" name="optradio" ng-model="businesstype" value="Repeat">&emsp;Repeat</label>																			
</div>
</div>
</div>


<div class="form-group">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<lable>Comments</lable>
			<textarea rows="4" class="form-control" name="comment" id="comment" ng-model="comment"></textarea>
	</div>
</div>
</div>
<div class="form-group">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<!-- <a href="#"  ng-click="saveOnetoOne(flag='save')"  class="btn btn-add btn-block">
<span class="text">  Add Meeting </span>
</a>
 -->
 <button class="btn btn-primary"  ng-click="saveThankYouSlip1(flag='save')"  style="background-color:  #005daa;    width: 100%;"><i class="fa fa-refresh fa-spin" ng-show="spin == 1"></i> Save</button>
</div>
</div>
</div>


</form>


</div>

</div>
</div>
