<head>
<!-- Font Awesome -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/front2/font-awesome-4.7.0/css/font-awesome.min.css"> 

</head>

<!-- <style>

.dropdown-item1 {
    display: block;
    width: 100%;
    padding: .25rem;
    clear: both;
    font-weight: 400;
    color: #3a3b45;
    text-align: inherit;
    white-space: nowrap;
    background-color: transparent;
    border: 0;
    
    }
.dropdown-item1:hover {
    color: #2e2f37;
    text-decoration: none;
    background-color: #f8f9fc;
}
</style> -->
<!-- Page Wrapper -->
<div id="wrapper">

<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion toggled" id="accordionSidebar">

<!-- Sidebar - Brand -->
<a class="sidebar-brand d-flex align-items-center justify-content-center" href="<%=request.getContextPath() %>/">
<div class="sidebar-brand-icon">
<!--<i class="fas fa-laugh-wink"></i>-->
RMB&nbsp;
<small> District 3060 </small>
</div>
<!--<div class="sidebar-brand-text"> ERODE UNITED </div>-->
</a>

<!-- Divider -->
<hr class="sidebar-divider my-0">

<!-- Nav Item - Dashboard -->
<li class="nav-item active">
<a class="nav-link" href="<%=request.getContextPath() %>/index2">
<i class="fas fa-fw fa-tachometer-alt"></i>
<span>Dashboard</span></a>
</li>


<!-- Nav Item - Charts -->
<li class="nav-item">
<a class="nav-link" href="#">
<i class="fas fa-fw fa-chart-area"></i>
<span> Payments </span></a>
</li>

<!-- Nav Item - Charts -->
<li class="nav-item">
<a class="nav-link" href="#">
<i class="fas fa-fw fa-chart-area"></i>
<span> Events </span></a>
</li>


<!-- Nav Item - Charts -->
<li class="nav-item">
<a class="nav-link" href="#">
<i class="fas fa-fw fa-chart-area"></i>
<span> Chapter's Summary </span></a>
</li>


<!-- Nav Item - Charts -->
<li class="nav-item">
<a class="nav-link" href="<%=request.getContextPath() %>/member_meeting_list">
<i class="fas fa-fw fa-chart-area"></i>
<span> R2R Meetings </span></a>
</li>


<!-- Nav Item - Charts -->
<li class="nav-item">
<a class="nav-link" href="<%=request.getContextPath() %>/member_reference">
<i class="fas fa-fw fa-chart-area"></i>
<span>  References </span></a>
</li>


<!-- Nav Item - Charts -->
<li class="nav-item">
<a class="nav-link" href="<%=request.getContextPath() %>/member_business_transaction">
<i class="fas fa-fw fa-chart-area"></i>
<span>  Business Transactions  </span></a>
</li>


<!-- Nav Item - Charts -->
<li class="nav-item">
<a class="nav-link" href="<%=request.getContextPath() %>/change_password">
<i class="fas fa fa-unlock" aria-hidden="true"></i>
<span> Change Password  </span></a>
</li>



<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">

<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
<button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>

</ul>
<!-- End of Sidebar -->

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
<div id="content">

<!-- Topbar -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

<!-- Sidebar Toggle (Topbar) -->
<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
<i class="fa fa-bars"></i>
</button>


<!-- Topbar Navbar -->
<ul class="navbar-nav ml-auto">

<!-- Nav Item - Search Dropdown (Visible Only XS) -->
<li class="nav-item dropdown no-arrow d-sm-none">
<a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="fas fa-search fa-fw"></i>
</a>
<!-- Dropdown - Messages -->
<div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
<form class="form-inline mr-auto w-100 navbar-search">
<div class="input-group">
<input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
<div class="input-group-append">
<button class="btn btn-primary" type="button">
<i class="fas fa-search fa-sm"></i>
</button>
</div>
</div>
</form>
</div>
</li>

<!-- Nav Item - Alerts -->
<li class="nav-item dropdown no-arrow mx-1">
<!-- <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="fas fa-bell fa-fw"></i>
Counter - Alerts
<span class="badge badge-danger badge-counter">3+</span>
</a> -->
<!-- Dropdown - Alerts -->
<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
<h6 class="dropdown-header">
Alerts Center
</h6>
<a class="dropdown-item d-flex align-items-center" href="#">
<div class="mr-3">
<div class="icon-circle bg-primary">
<i class="fas fa-file-alt text-white"></i>
</div>
</div>
<div>
<div class="small text-gray-500">December 12, 2019</div>
<span class="font-weight-bold">A new monthly report is ready to download!</span>
</div>
</a>
<a class="dropdown-item d-flex align-items-center" href="#">
<!-- <div class="mr-3">
<div class="icon-circle bg-success">
<i class="fas fa-donate text-white"></i>
</div>
</div> -->
<div>
<div class="small text-gray-500">December 7, 2019</div>
$290.29 has been deposited into your account!
</div>
</a>
<a class="dropdown-item d-flex align-items-center" href="#">
<div class="mr-3">
<div class="icon-circle bg-warning">
<i class="fas fa-exclamation-triangle text-white"></i>
</div>
</div>
<div>
<div class="small text-gray-500">December 2, 2019</div>
Spending Alert: We've noticed unusually high spending for your account.
</div>
</a>
<a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
</div>
</li>


<div class="topbar-divider d-none d-sm-block"></div>

<!-- Nav Item - User Information -->
<li class="nav-item dropdown no-arrow">


<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<span class="mr-2 d-none d-lg-inline text-gray-600 small"> <%=session.getAttribute("membername") %> </span>
<%-- <img class="img-profile rounded-circle" src="<%=session.getAttribute("memberprofilepicture") %>"> --%>

	<img class="img-profile rounded-circle" alt="'<%=session.getAttribute("membername") %>'"  src="<%=session.getAttribute("memberprofilepicture") %>" onerror="this.onerror=null; this.src='<%=request.getContextPath() %>/resources/admin/images/UserImg.png'" >
	


</a>
<!-- Dropdown - User Information -->
<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
<a class="dropdown-item" href="<%=request.getContextPath() %>/index2">
<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
Profile
</a>
<a class="dropdown-item" href="#">
<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
Settings
</a>
<a class="dropdown-item" href="#">
<i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
Activity Log
</a>
<div class="dropdown-divider"></div>
<a class="dropdown-item" href="<%=request.getContextPath() %>/Frontlogout" data-toggle="modal" data-target="#logoutModal">
<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
Logout
</a>
</div>
</li>

</ul>

</nav>
<!-- End of Topbar -->
