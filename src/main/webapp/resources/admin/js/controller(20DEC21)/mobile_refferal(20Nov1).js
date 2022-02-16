app.controller('MobileRefferalCtrl',function($scope, $http, $window, $filter, $location) {
		var baseUrl = $location.protocol()+"://"+location.host+u;	
		
		$scope.given=0;
		$scope.flagger = "Given";
		
		var link = baseUrl+'getAllMembersDirectory';
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getmember = data;			
		}).error(function(data, status, headers, config) {
			$scope.getmember = "Response Fail";
		});
		
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
			if($scope.tomemberid == undefined || $scope.tomemberid == ""){
				$window.alert("Please select member!");
				document.getElementById("tomemberid").focus();
				return;
			} else if($scope.referralname == undefined){
				$window.alert("Please enter referral name!");
				document.getElementById("referralname").focus();
				return;
			} else if($scope.referdate == undefined){
				$window.alert("Please select refer date!");
				document.getElementById("datepicker").focus();
				return;
			} else if($scope.closedate == undefined){
				$window.alert("Please select Close by date date!");
				document.getElementById("datepicker2").focus();
				return;
			} else if($scope.referraltype == undefined){
				$window.alert("Please select referral type!");
				document.getElementById("referraltype").focus();
				return;
			} /*else if(($scope.card == undefined && $scope.call == undefined) || ($scope.card == false && $scope.call == false)){
				$window.alert("Please select any connection!");				
				return;
			}*/ else if($scope.referalstatus == undefined || $scope.referalstatus == ""){
				$window.alert("Please select referral Status!");
				document.getElementById("referalstatus").focus();
				return;
			} else if($scope.referralcontactno == undefined){
				$window.alert("Please enter referral contact number!");
				document.getElementById("referralcontactno").focus();
				return;
			} else {
				$scope.spin = 1;				
				var link = baseUrl+'saveReferral?tomemberid='+$scope.tomemberid+'&referralname='+$scope.referralname+'&referdate='+$scope.referdate+'&referraltype='+$scope.referraltype+'&card='+$scope.card+'&call='+$scope.call+'&referralemail='+$scope.referralemail+'&referralcontactno='+$scope.referralcontactno+'&referraladdress='+$scope.referraladdress+'&comment='+$scope.comment+'&closedate='+$scope.closedate+'&referalstatus='+$scope.referalstatus+'&apprvalue='+$scope.apprvalue;				
			//alert(link);
				$http.post(link).success(function(data, status, headers, config) {
					$scope.savereferral = data;
					$scope.spin = 0;
			
					$window.alert("Data submitted successfully");
					$window.location.href = url + 'mobile_refferal_list';			
				}).error(function(data, status, headers, config) {
					$scope.savereferral = "Response Fail";
				});
			}
		};
		
		
		
		$scope.getMemberReferencesById = function(memberid) {
		$scope.given=0;	
		$scope.flagger = "Given";
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
			$scope.flagger = "Received";
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