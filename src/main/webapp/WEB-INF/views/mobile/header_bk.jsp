

<!-- menu main -->
<div class="main-menu" ng-app="rcbs" ng-controller="MobileIndexCtrl" ng-init="getMemberDetailByIdProfile(<%= session.getAttribute("loginid") %>)"">
<div class="row mb-4 no-gutters">
<div class="col-auto"><button class="btn btn-link btn-40 btn-close text-white"><span class="material-icons">chevron_left</span></button></div>

<div class="col-auto">
<div class="avatar avatar-40 rounded-circle position-relative">
<figure class="">
<%-- <img src="<%=request.getContextPath() %>/resources/mobile/img/user3.png" alt=""> --%>
<img class="indexIcon" alt="'<%=session.getAttribute("membername") %>'"    src="{{getmemberdetail.memberProfilePicture}}"   >
<img class=""  ng-if="!getmemberdetail.memberProfilePicture" style="margin-top: -80px;height: 35px;margin-left: -2px;" src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'">
	
</figure>
</div>
</div>

<div class="col pl-3 text-left align-self-center">

<h6 class="mb-1"><a href="<%=request.getContextPath() %>/profile_bk" style="color: white;">  
 <%if(session.getAttribute("membername") == null) {%>  Login  <%} else {%>

 <%=session.getAttribute("membername") %>  </a> 	<%}%>		</h6>
<!-- <p class="small text-default-secondary"> chairman@rmbfmadurai.com </p> -->
</div>
</div>

<div class="menu-container">

<ul class="nav nav-pills flex-column ">

<li class="nav-item">
<a class="nav-link active" href="<%=request.getContextPath() %>/">
<div>
<span class="material-icons icon fa fa-home"> account_balance </span>
Home
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>

<li class="nav-item">
<a class="nav-link " href="<%=request.getContextPath() %>/committee">
<div>
<span class="material-icons icon"> account_balance </span>
Committees & Chairs
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


<li class="nav-item">
<a class="nav-link" href="<%=request.getContextPath() %>/member_bk">
<div>
<span class="material-icons icon">insert_chart</span>
Members
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


<li class="nav-item">
<a class="nav-link" href="<%=request.getContextPath() %>/member_meeting_list">
<div>
<span class="material-icons icon">perm_contact_calendar</span>
R2R Meetings
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


<li class="nav-item">
<a class="nav-link" href="<%=request.getContextPath() %>/mobile_refferal_list">
<div>
<span class="material-icons icon">card_giftcard</span>
References
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


<li class="nav-item">
<a class="nav-link" href="<%=request.getContextPath() %>/mobile_business">
<div>
<span class="material-icons icon">shopping_bag</span>
Business
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


<li class="nav-item">
<a class="nav-link" href="<%=request.getContextPath() %>/events">
<div>
<span class="material-icons icon">settings</span>
Events
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>



<li class="nav-item">
<a class="nav-link" href="#">
<div>
<span class="material-icons icon">layers</span>
Fellowship
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>

<li class="nav-item">
<a class="nav-link" href="<%=request.getContextPath() %>/gallery">
<div>
<span class="material-icons icon">widgets</span>
Gallery
</div>
<span class="arrow material-icons">chevron_right</span>
</a>
</li>


</ul>

<div class="text-center">
<%if(session.getAttribute("membername") == null) {%>    <%} else {%>

<a  href="<%=request.getContextPath() %>/Frontlogout" ng-click="Frontlogout()"class="btn btn-outline-primary text-white rounded my-3 mx-auto">Sign out</a> </a> 	<%}%>		</h6>

</div>

</div>
</div>
