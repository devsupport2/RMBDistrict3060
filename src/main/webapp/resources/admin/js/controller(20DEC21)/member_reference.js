app.controller('memberReferralCtrl',function($scope, $http, $window, $filter, $location) {
		var baseUrl = $location.protocol()+"://"+location.host+u;		
		
	
		$scope.reasonError = 1;
		$scope.spin = 0;
		$scope.getMembersReferencesById = function(memberid,fromdate,todate) {	
			/*$scope.currentDate = $filter('date')(new Date(), 'dd');
			$scope.currentMonth = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			$scope.fromdate = "0"+1+"/"+$scope.currentMonth+"/"+$scope.currentYear;		
			document.getElementById("reffralfrom").value = $scope.fromdate;
			$scope.todate = $scope.currentDate+"/"+$scope.currentMonth+"/"+$scope.currentYear;
			document.getElementById("reffralto").value = $scope.todate;*/		
			$scope.fromdate = fromdate;
			$scope.todate = todate;
			/*document.getElementById("reffralfrom").value = fromdate;
			document.getElementById("reffralto").value = todate;*/
					
			var link = baseUrl+'getMemberReferencesById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberReferences = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberReferences = "Response Fail";
			});
			
			var link = baseUrl+'getMemberDetailByMemberId?memberid='+memberid;		
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
		
		var link = baseUrl+'getAllMembersDirectory';
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getmember = data;			
		}).error(function(data, status, headers, config) {
			$scope.getmember = "Response Fail";
		});
		
		$scope.getMemberReferencesById = function(memberid) {	
			
			$scope.currentDateFrom = $filter('date')(new Date(new Date().setDate(new Date().getDate() - 30)), 'dd');
			$scope.currentDateTo = $filter('date')(new Date(), 'dd');
			$scope.currentMonthFrom = $filter('date')(new Date(new Date().setMonth(new Date().getMonth() - 1)), 'MM');
			$scope.currentMonthTo = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			
			$scope.fromdate = $scope.currentDateFrom+"/"+$scope.currentMonthFrom+"/"+$scope.currentYear;		
			document.getElementById("reffralfrom").value = $scope.fromdate;
			$scope.todate = $scope.currentDateTo+"/"+$scope.currentMonthTo+"/"+$scope.currentYear;
			document.getElementById("reffralto").value = $scope.todate;
								
			var link = baseUrl+'getMemberReferencesById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
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
		
		$scope.getReferencesByDate = function(memberid) {
			$scope.fromdate = document.getElementById("reffralfrom").value;
		//	alert($scope.fromdate);
			$scope.todate = document.getElementById("reffralto").value;
			
			var link = baseUrl+'getMemberReferencesById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;		
		//	alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberReferences = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberReferences = "Response Fail";
			});
		}
		
		
		
		
		
		$scope.getMembersReferralsById = function(memberid,fromdate,todate) {	
			/*$scope.currentDate = $filter('date')(new Date(), 'dd');
			$scope.currentMonth = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			$scope.fromdate = "0"+1+"/"+$scope.currentMonth+"/"+$scope.currentYear;		
			document.getElementById("reffralfrom").value = $scope.fromdate;
			$scope.todate = $scope.currentDate+"/"+$scope.currentMonth+"/"+$scope.currentYear;
			document.getElementById("reffralto").value = $scope.todate;*/		
			$scope.fromdate = fromdate;
			$scope.todate = todate;
			/*document.getElementById("reffralfrom").value = fromdate;
			document.getElementById("reffralto").value = todate;*/
					
			var link = baseUrl+'getMemberReferralsById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
		//	alert(link);	
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberReferrals = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberReferrals = "Response Fail";
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
			
			$scope.currentDateFrom = $filter('date')(new Date(new Date().setDate(new Date().getDate() - 30)), 'dd');
			$scope.currentDateTo = $filter('date')(new Date(), 'dd');
			$scope.currentMonthFrom = $filter('date')(new Date(new Date().setMonth(new Date().getMonth() - 1)), 'MM');
			$scope.currentMonthTo = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			
			$scope.fromdate = $scope.currentDateFrom+"/"+$scope.currentMonthFrom+"/"+$scope.currentYear;		
			document.getElementById("reffralfrom").value = $scope.fromdate;
			$scope.todate = $scope.currentDateTo+"/"+$scope.currentMonthTo+"/"+$scope.currentYear;
			document.getElementById("reffralto").value = $scope.todate;
								
			var link = baseUrl+'getMemberReferralsById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
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
		
		$scope.getReferralsByDate = function(memberid) {
			$scope.fromdate = document.getElementById("reffralfrom").value;
		
			$scope.todate = document.getElementById("reffralto").value;
			
			var link = baseUrl+'getMemberReferralsById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;		
		//alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberReferrals = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberReferrals = "Response Fail";
			});
		}
		
		
		$scope.getReferenceDetail = function(memberreferralid) 
		{			
			var link = baseUrl + 'getReferenceDetailById?memberreferralid='+memberreferralid;				
			$http.get(link).success(function(data, status, headers, config) { 
				$scope.getReferencebyid = data;
				$scope.getReferencebyid.CloseReason="";
			}).error(function(data, status, headers, config) {
				$scope.getReferencebyid = "Response Fail";
			});	
		}
		
		$scope.ChangeRefStatus = function(memberreferralid,status){
			if(status != "C")
			{
				var link = baseUrl + 'ChangeRefStatus?memberreferralid='+memberreferralid+'&status='+status;				
				$http.post(link).success(function(data, status, headers, config) { 
					$scope.getReferencebyid = data;
					document.location.reload();
				}).error(function(data, status, headers, config) {
					$scope.getReferencebyid = "Response Fail";
				});
			}
				
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
					$window.location.href = url + 'index2';			
				}).error(function(data, status, headers, config) {
					$scope.savereferral = "Response Fail";
				});
			}
		};
		
		$scope.CloseRef = function(memberreferralid){
			if(!$scope.getReferencebyid.CloseComment)
			{
				$scope.getReferencebyid.CloseComment="";
			}
			if(!$scope.getReferencebyid.CloseReason)
			{
				$scope.reasonError = 1;
				$scope.reasonMsg = "Reason is mandatory";
				return;
			}
			else {
				$scope.spin = 1;
				var link = baseUrl + 'CloseRef?memberreferralid='+memberreferralid+'&closeComment='+$scope.getReferencebyid.CloseComment+'&closeReason='+$scope.getReferencebyid.CloseReason;				
			//	alert(link);
				$http.post(link).success(function(data, status, headers, config) { 
					$scope.closeref = data;
					document.location.reload();
				}).error(function(data, status, headers, config) {
					$scope.closeref = "Response Fail";
				});
			}
				
		}
	});