<div class="modal-dialog" role="document">
<div class="modal-content">
<div  class="modal-header bg-gradient-primary">
<h5 class="modal-title text-white" id="exampleModalLabel">  ADD REFERENCE </h5>
<button class="close text-white" type="button" data-dismiss="modal" aria-label="Close">
<i class="fa fa-times"></i>
</button>
</div>

<div class="modal-body">

<form class="">

<div class="form-group">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<label>To <span class="red">*</span> </label>
<div class="team-members">
<div style="margin-bottom: 0px;" class="form-group  input-group">
<select  style="width: 100%;"name="tomemberid" id="tomemberid" ng-model="tomemberid">
<option value="">Select</option>
	<option ng-repeat="item in getmember" value="{{item.memberId}}" ng-hide="item.memberId == <%= session.getAttribute("loginid") %>">{{item.memberFirstName}} {{item.memberMiddleName}} {{item.memberLastName}}</option>
</select>		
</div>
</div>


</div>
</div>
</div>

<div class="form-group">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<lable>Referral<font color="red" size="3">*</font></lable>
		<input type="text" class="form-control" name="referralname" id="referralname" ng-model="referralname">														
</div>
</div>
</div>

<div class="form-group">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
<label> Date <span class="red">*</span>  </label>
<input id="refferal" title="todatetimepickeredit" ng-model="referdate" title="referl Date" placeholder="DD/MM/YYYY"  style="width: 100%;" />
</div>

<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
<label> Close by Date <span class="red">*</span>  </label>
<input id="closebydate" title="closebydate" ng-model="closebydate" title="referl Date" placeholder="DD/MM/YYYY"  style="width: 100%;" />
</div>
</div>
</div>




<div class="form-group">
<div class="row">

<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
		<div class="form-group">
			<lable>Referral Type<font color="red" size="3">*</font></lable><br>
		
	<select  style="width: 100%;" name="referraltype" id="referraltype" ng-model="referraltype" > 
		<option value="">Select Referral Type</option>
		<option value="Inside">Inside</option>
		<option value="Outside">Outside</option>
	</select>
		</div>
	</div>
<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
		<div class="form-group">
				<lable>Referal Status<font color="red" size="3">*</font></lable>
		
	<select  style="width: 100%;" name="referalstatus" id="referalstatus" ng-model="referalstatus" > 
		<option value="">--Status--</option>
		<option value="O" selected>Open</option>
		<option value="W">Working</option>
		<option value="C">Close</option>
	</select>
		</div>
	</div>
</div>
</div>


<div class="form-group">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<lable>Connection</lable><br>
		<label class="checkbox-inline"><input type="checkbox" id="card" ng-model="card" value="Given your card"> &emsp;Given your card  &emsp;</label>
		<label class="checkbox-inline"><input type="checkbox" id="call" ng-model="call" value="Told them you would call"> &emsp;Told them you would call</label>
	</div>
</div>
</div>

<div class="form-group">
<div class="row">
	
<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
<div class="form-group">
		<lable>Approx Value</lable>
		<input type="text" class="form-control" name="apprValue" id="apprvalue" ng-model="apprvalue">
	</div>
</div>
<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
<div class="form-group">
		<lable>Contact Number<font color="red" size="3">*</font></lable>
		<input type="number" class="form-control" name="referralcontactno" id="referralcontactno" ng-model="referralcontactno">
	</div>
	</div>
	
</div>

</div>



<div class="form-group">
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<lable>Email</lable>
			<input type="text" class="form-control" name="referralemail" id="referralemail" ng-model="referralemail">
		</div>
	</div>
</div>


<div class="form-group">
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<label> Address </label>
			<textarea placeholder="Enter Address..."name="referraladdress" id="referraladdress" ng-model="referraladdress" class="form-control" rows="3"></textarea>
			</div>
	</div>
</div>

<div class="form-group">
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<lable>Comments</lable>
			<textarea placeholder="Enter Comments..." name="comment" id="comment" ng-model="comment" class="form-control" rows="3"></textarea>
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
			 <button class="btn btn-primary" ng-click="saveReferral(flag='save')" style="background-color:  #005daa;    width: 100%;"><i class="fa fa-refresh fa-spin" ng-show="spin == 1"></i> Save</button>
			</div>
	</div>
</div>
</form>


</div>

</div>
</div>
