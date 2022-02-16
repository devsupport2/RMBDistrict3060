app.controller('MobileRefferalCtrl',function($scope, $http, $window, $filter, $location) {
		var baseUrl = $location.protocol()+"://"+location.host+u;	
		
		$scope.given=0;
		
		var link = baseUrl+'getAllMembersDirectory';
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getmember = data;			
		}).error(function(data, status, headers, config) {
			$scope.getmember = "Response Fail";
		});
		
		$scope.setflag=function(){
			$scope.tomemberidError=0;
			$scope.referralnameError=0;
			$scope.referdateError=0;
			$scope.closedateError=0;
			$scope.referraltypeError=0;
			$scope.referalstatusError=0;
			$scope.aproxvalueError=0;
			$scope.referralcontactnoError=0;
			$scope.emailError=0;
			$scope.addressError=0;
			
		}
		
		$scope.saveReferral = function(temp) {
			
			$scope.referdate = document.getElementById("refferal").value;
			$scope.closedate = document.getElementById("closebydate").value;
			if($scope.referralemail == undefined){
				$scope.referralemail = "";
			}
			if($scope.apprvalue == undefined){
				$scope.apprvalue = "";
			}
			if($scope.referraladdress == undefined){
				$scope.referraladdress = "";
			}
			if($scope.comment == undefined){
				$scope.comment = "";
			}
			if($scope.card == true){
				$scope.card = "Given your card";
			} else {
				$scope.card = "";
			}
			if($scope.call == true){
				$scope.call = "Told them you would call";
			} else {
				$scope.call = "";
			}
			if(!$scope.tomemberid){
				$scope.tomemberidError=1;
				$scope.tomemberidMsg="Please select member!";
				document.getElementById("tomemberid").focus();
				return;
			} else if(!$scope.referralname ){
				$scope.referralnameError=1;
				$scope.referralnameMsg="Please enter referral name!";
				document.getElementById("referralname").focus();
				return;
			} else if(!$scope.referdate ){
				$scope.referdateError=1;
				$scope.referdateMsg="Please select refer date!";
				document.getElementById("datepicker").focus();
				return;
			} else if(!$scope.closedate ){
				$scope.closedateError=1;
				$scope.closedateMsg="Please select Close by date date!";
				document.getElementById("datepicker2").focus();
				return;
			} else if(!$scope.referraltype){
				$scope.referraltypeError=1;
				$scope.referraltypeMsg="Please select referral type!";
				document.getElementById("referraltype").focus();
				return;
			} else if(!$scope.referalstatus ){
				$scope.referalstatusError=1;
				$scope.referalstatusMsg="Please select referral Status!";
				document.getElementById("referalstatus").focus();
				return;
			} else if(!$scope.apprvalue){
				$scope.aproxvalueError=1;
				$scope.apprvalueMsg="Please enter referral approax value!";
				document.getElementById("apprvalue").focus();
				return;
			} else if(!$scope.referralcontactno){
				$scope.referralcontactnoError=1;
				$scope.referralcontactnoMsg="Please enter referral contact number!";
				document.getElementById("referralcontactno").focus();
				return;
			} 
		else if(!$scope.referralemail){
				$scope.emailError=1;
				$scope.referralemailMsg="Please enter referral email!";
				document.getElementById("referralemail").focus();
				return;
			} 
			else if(!$scope.referraladdress){
				$scope.addressError=1;
				$scope.referraladdressMsg="Please enter referral address!";
				document.getElementById("referraladdress").focus();
				return;
			} 
			if($scope.SubmitError){
				console.log("Some Error Occured form Submit prevented");
			}else  {
				$scope.spin = 1;				
				var link = baseUrl+'saveReferral?tomemberid='+$scope.tomemberid+'&referralname='+$scope.referralname+'&referdate='+$scope.referdate+'&referraltype='+$scope.referraltype+'&card='+$scope.card+'&call='+$scope.call+'&referralemail='+$scope.referralemail+'&referralcontactno='+$scope.referralcontactno+'&referraladdress='+$scope.referraladdress+'&comment='+$scope.comment+'&closedate='+$scope.closedate+'&referalstatus='+$scope.referalstatus+'&apprvalue='+$scope.apprvalue;				
			//alert(link);
				$http.post(link).success(function(data, status, headers, config) {
					$scope.savereferral = data;
					$scope.spin = 0;
			
					toastr.success("Data submitted successfully");
					$window.location.href = url + 'mobile_refferal_list';			
				}).error(function(data, status, headers, config) {
					$scope.savereferral = "Response Fail";
				});
			}
		};
		
		
		
		$scope.getMemberReferencesById = function(memberid) {
		$scope.given=0;	
			var date = new Date(), y = date.getFullYear(), m = date.getMonth() ,d=date.getDate() - 30;
			var fromdate = $filter('date')(new Date(y, m , d),'dd/MM/yyyy'); 
			var todate = $filter('date')(new Date(),'dd/MM/yyyy'); 			
							
			var link = baseUrl+'getMemberReferencesById?memberid='+memberid+'&fromdate='+fromdate+'&todate='+todate;			
		//	alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberReferences = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberReferences = "Response Fail";
			});
			
			var link = baseUrl+'getMemberDetailByMemberId?memberid='+memberid;		
			//alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getmemberdetail = data;
				
				$scope.firstname = $scope.getmemberdetail.memberFirstName;
				$scope.lastname = $scope.getmemberdetail.memberLastName;
				$scope.businesscategoryname = $scope.getmemberdetail.businessCategoryName;
				$scope.memberemail = $scope.getmemberdetail.memberEmail;
				$scope.membermobileno = $scope.getmemberdetail.memberMobileNumber;
				$scope.profilepic = $scope.getmemberdetail.memberProfilePicture;
				
			}).error(function(data, status, headers, config) {
				$scope.getmemberdetail = "Response Fail";
			});
		}
		
		
		$scope.getMemberReferralsById = function(memberid) {	
		var date = new Date(), y = date.getFullYear(), m = date.getMonth() ,d=date.getDate() - 30;
			var fromdate = $filter('date')(new Date(y, m , d),'dd/MM/yyyy'); 
			var todate = $filter('date')(new Date(),'dd/MM/yyyy'); 			
				$scope.given=1;						
								
			var link = baseUrl+'getMemberReferralsById?memberid='+memberid+'&fromdate='+fromdate+'&todate='+todate;			
		//alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberReferrals = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberReferrals = "Response Fail";
			});
			
			var link = baseUrl+'getMemberDetailByMemberId?memberid='+memberid;		
		//	alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getmemberdetail = data;
				
				$scope.firstname = $scope.getmemberdetail.memberFirstName;
				$scope.lastname = $scope.getmemberdetail.memberLastName;
				$scope.businesscategoryname = $scope.getmemberdetail.businessCategoryName;
				$scope.memberemail = $scope.getmemberdetail.memberEmail;
				$scope.membermobileno = $scope.getmemberdetail.memberMobileNumber;
				$scope.profilepic = $scope.getmemberdetail.memberProfilePicture;
				
			}).error(function(data, status, headers, config) {
				$scope.getmemberdetail = "Response Fail";
			});
		}
	
});