<!--====== FOOTER PART START ======-->

<footer id="footer-part" ng-app="rcbs" ng-controller="footerctrl">
<div class="footer-top">
<div class="container">
<div class="row">
<div class="col-lg-4 col-md-6">
<div class="footer-about">
<div class="footer-title pb-pb-15">
<h6> Follow us on </h6>
</div>


<ul class="pt-20">
<li ng-repeat="item in getsocialmedialinks" ><a target="_blank" href="{{item.socialMediaUrl}}"><i class="fa {{item.socialMediaPlatformTitle}}"></i></a></li>
</ul>

</div> <!-- footer about -->
</div>

<div class="col-lg-5 col-md-5 col-sm-6">
<div class="footer-link">
<div class="footer-title pb-20">
<h6> Quick Links </h6>
</div>

<ul>
<li><a href="<%=request.getContextPath() %>/about_rmb3060"><i class="fa fa-angle-right"></i>  About RMB District 3060 </a></li>
<!-- <li><a href="#"><i class="fa fa-angle-right"></i> Board of Directors </a></li> -->
<li><a href="<%=request.getContextPath() %>/committees"><i class="fa fa-angle-right"></i> Committees & Chairs </a></li>
<li><a href="<%=request.getContextPath() %>/members_directory"><i class="fa fa-angle-right"></i> Members Directory </a></li>

</ul>

<ul>
<li><a href="<%=request.getContextPath() %>/#events"><i class="fa fa-angle-right"></i> Events </a></li>
<li><a href="<%=request.getContextPath() %>/#publication-part"><i class="fa fa-angle-right"></i> Media </a></li>
<!-- <li><a href="#"><i class="fa fa-angle-right"></i> Calendar </a></li>
<li><a href="#"><i class="fa fa-angle-right"></i> Contact </a></li> -->

</ul>
</div> <!-- footer link -->
</div>















<div class="col-lg-2 col-md-6 col-sm-6">
<div class="footer-link support">
<div class="footer-title pb-20">
<h6> Customer Service </h6>
</div>
<ul>
<!-- <li><a href="#"><i class="fa fa-angle-right"></i>FAQS</a></li> -->
<li><a href="<%=request.getContextPath() %>/terms_and_conditions"><i class="fa fa-angle-right"></i> Terms & Conditions </a></li>
<li><a href="<%=request.getContextPath() %>/privacy_policy"><i class="fa fa-angle-right"></i>Privacy Policy</a></li>
<!--<li><a href="#"><i class="fa fa-angle-right"></i>Support</a></li>-->
<li><a href="<%=request.getContextPath() %>/refund_and_cancellation"><i class="fa fa-angle-right"></i> Refund & Cancellation</a></li>
</ul>
</div> <!-- support -->
</div>



</div> <!-- row -->
</div> <!-- container -->
</div> <!-- footer top -->

<div class="footer-copyright pt-10 pb-25">
<div class="container">
<div class="row">
<div class="col-md-4"> </div>
<div class="col-md-8">
<div class="copyright text-md-left text-center pt-15">
<p> Content © 2020 RMB District 3060 | Powered by: <a target="_blank" href="https://www.myclubman.com"> My Club Manager</a>  </p>
</div>
</div>

<div class="col-md-4">
<div class="copyright text-md-right text-center pt-15">

</div>
</div>
</div> <!-- row -->
</div> <!-- container -->
</div> <!-- footer copyright -->
</footer>

<!--====== FOOTER PART ENDS ======-->

<!--====== BACK TO TP PART START ======-->

<a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

<!--====== BACK TO TP PART ENDS ======-->
<script>
$('.footer-link ul li a').on('click',function(event){
	   var $anchor = $(this);
	   $('html, body').animate({
	     scrollTop: $("#"+($anchor.attr('href').split('#').pop())).offset().top + "px"
	   }, 1500);
	   event.preventDefault();
	});
</script>
