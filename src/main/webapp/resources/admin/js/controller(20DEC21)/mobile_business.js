app.controller('MobilebusinessReceievdCtrl',function($scope, $http, $window, $filter, $location) {
	
		var baseUrl = $location.protocol()+"://"+location.host+u;
		
		$scope.given=1;
		
			var link = baseUrl+'getAllMembersDirectory';
		$http.get(link).success(function(data, status, headers, config) {
		
			$scope.getmember = data;			
		}).error(function(data, status, headers, config) {
			$scope.getmember = "Response Fail";
		});	
		
		$scope.getMembersBusinessById = function(memberid,fromdate,todate) {	
		
			/*$scope.currentDate = $filter('date')(new Date(), 'dd');
			$scope.currentMonth = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			$scope.fromdate = "0"+1+"/"+$scope.currentMonth+"/"+$scope.currentYear;		
			document.getElementById("businessfrom").value = $scope.fromdate;
			$scope.todate = $scope.currentDate+"/"+$scope.currentMonth+"/"+$scope.currentYear;
			document.getElementById("businessto").value = $scope.todate;*/		
			
			$scope.fromdate = fromdate;
			$scope.todate = todate;
			
			var link = baseUrl+'getMemberBusinessByIdRec?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;
			//	alert(link);		
		
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
			
			var link = baseUrl+'getMemberByMemberId?memberid='+memberid;			
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
		
		
		
		
		
		
		
		
		
		
		$scope.getMemberBusinessById = function(memberid) {	
		$scope.given=2;
			var date = new Date(), y = date.getFullYear(), m = date.getMonth() ,d=date.getDate() - 30;
			var fromdate = $filter('date')(new Date(y, m , d),'dd/MM/yyyy'); 
			var todate = $filter('date')(new Date(),'dd/MM/yyyy'); 			
			
			var link = baseUrl+'getMemberBusinessByIdRec?memberid='+memberid+'&fromdate='+fromdate+'&todate='+todate;			
		//	alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusinessdata = data;	
					//$scope.getBusinessByDate(memberid);				
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusinessdata = "Response Fail";
			});
			
			var link = baseUrl+'getMemberByMemberId?memberid='+memberid;			
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
		
		$scope.getBusinessByDate = function(memberid) {
			$scope.fromdate = document.getElementById("businessfrom").value;
			$scope.todate = document.getElementById("businessto").value;
			
			var link = baseUrl+'getMemberBusinessByIdRec?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
		//	alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
		}	
		
		
		$scope.setflag3=function(){
			$scope.tomemberidError=0;
			$scope.amountError=0;
			$scope.slipdateError=0;
			$scope.businesstypeError=0;
			$scope.referraltypeError=0;
			
			
		}
		
				
		$scope.saveThankYouSlip1 = function(temp) {	
			$scope.slipdate = document.getElementById("slipdate1").value;
			if($scope.comment == undefined){
				$scope.comment = "";
			}		
			if(!$scope.tomemberid){
				$scope.tomemberidError=1;
				$scope.tomemberidMsg="Please select member!";
				document.getElementById("tomemberid").focus();
				return;
			} else if(!$scope.amount){
				$scope.amountError=1;
				$scope.amountMsg="Please enter amount!";
				document.getElementById("amount").focus();
				return;
			} else if(!$scope.slipdate ){
				$scope.slipdateError=1;
				$scope.slipdateMsg="Please enter slip date!";
				document.getElementById("slipdate1").focus();
				return;
			}  else{
				$scope.spin = 1;				
				var link = baseUrl+'saveThankYouSlip1?tomemberid='+$scope.tomemberid+'&amount='+$scope.amount+'&slipdate='+$scope.slipdate+'&businesstype='+$scope.businesstype+'&referraltype='+$scope.referraltype+'&comment='+$scope.comment+'&BS='+$scope.businessStatus;				
				//alert(link);
				$http.post(link).success(function(data, status, headers, config) {
					$scope.savethankyouslip = data;
					$scope.spin = 0;					
					toastr.success("Data submitted successfully");
					$window.location.href = url + 'mobile_business';				
				}).error(function(data, status, headers, config) {
					$scope.savethankyouslip = "Response Fail";
				});
			}
		};
		
		
		//-------------------------------- Given
		
		
		
		$scope.getMemberBusinessByIdGiven = function(memberid) {	
			$scope.given=1;
		/*	$scope.currentDate = $filter('date')(new Date(), 'dd');
			$scope.currentMonth = $filter('date')(new Date(), 'MM');
			$scope.currentYear = $filter('date')(new Date(), 'yyyy');
			$scope.fromdate = "0"+1+"/"+$scope.currentMonth+"/"+$scope.currentYear;		
			$scope.todate = $scope.currentDate+"/"+$scope.currentMonth+"/"+$scope.currentYear;
			
		*/	
			var date = new Date(), y = date.getFullYear(), m = date.getMonth() ,d=date.getDate() - 30;
			var fromdate = $filter('date')(new Date(y, m , d),'dd/MM/yyyy'); 
			var todate = $filter('date')(new Date(),'dd/MM/yyyy'); 			
			
			var link = baseUrl+'getMemberBusinessById?memberid='+memberid+'&fromdate='+fromdate+'&todate='+todate;			
	//	alert(link);
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberBusiness = data;
				$scope.getBusinessByDate(memberid);			
			}).error(function(data, status, headers, config) {
				$scope.getMemberBusiness = "Response Fail";
			});
			
			var link = baseUrl+'getMemberByMemberId?memberid='+memberid;			
		//		alert(link);
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