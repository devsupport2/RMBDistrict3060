app.controller('fellowship_fees',['$scope','$filter','$http','$window','$location',function($scope, $filter, $http, $window, $location)
		{	
			var baseUrl = $location.protocol() + "://"+location.host + u;
			$scope.regUsers="All";
			$scope.MemberLi="All";
			$scope.regMem;
			$scope.FilterMember;
			$scope.spin =0;
			
	/*		var link = baseUrl+'getAllMemberContactInfoForMailer';
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getmember = data;			
			}).error(function(data, status, headers, config) {
				$scope.getmember = "Response Fail";
			});	*/
			$scope.totalfees = function(){
				
				$scope.paid_amount=	$scope.rmbdfees+$scope.rmbfess;
			}
			 $scope.getfellowship = function (fellowship_id){
				//	alert(fellowship_id);
					$scope.fellowship_id=fellowship_id;

					 }
					 
			 
			$scope.getCommitieByFellowship = function(fellowship_id,role_id)
			{
				if(role_id==1){
					var link = baseUrl+'getAllMemberNameList';  
				//	alert(link);
					$http.get(link).success(function(data, status, headers, config) {
						$scope.getmember = data;
						
					}).error(function(data, status, headers, config) {
						$scope.getmember = "Response Fail";
					});
					
				}else{
				var link = baseUrl + 'getFellowshipByFees?fellowship_id='+fellowship_id;
				$http.get(link).success(function(data, status, headers, config) {
					
					$scope.getmember1 = data;
					$scope.rmbdfees=$scope.getmember1.rmb_district_fee;
					var link = baseUrl+'getAllMemberNameList';  
				
						$http.get(link).success(function(data, status, headers, config) {
							$scope.getmember = data;
							
						}).error(function(data, status, headers, config) {
							$scope.getmember = "Response Fail";
						});
						
				
					$scope.fellowship_id=fellowship_id;
				
				
				}).error(function(data, status, headers, config) {
					$scope.getmember = "Response Fail";
				});
		
			
				}
			}
			$scope.FellowshipByFees = function(fellowship_id){
		
				var link = baseUrl + 'getFellowshipByFees?fellowship_id='+fellowship_id;
			
				$http.get(link).success(function(data, status, headers, config) {
						$scope.getmemberdata = data;
						$scope.fellowship_id=fellowship_id;
						$scope.rmbdfees=$scope.getmemberdata.rmb_district_fee;
					
					}).error(function(data, status, headers, config) {
						$scope.getmemberdata = "Response Fail";
					});				
			}
			
			
			var link = baseUrl+'getMemberCategory';
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getmembercategory = data;
			}).error(function(data, status, headers, config) {
				$scope.getmembercategory = "Response Fail";
			});
	
			
			 $scope.fellowship = function(){
			 var link = baseUrl+'getAllFellowshipName';  
			//	alert(link);
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getAllFellowshipNameList = data;
				
				}).error(function(data, status, headers, config) {
					$scope.getAllFellowshipNameList = "Response Fail";
				});		
			 }	
			 $scope.fellowshipByFees = function(){
				var fellowship_id =document.getElementById("fellowship_id1").value;
				//alert(fellowship_id);
				var link = baseUrl+'getFellowshipByFees?fellowship_id='+fellowship_id;  
			//	alert(link);
					$http.get(link).success(function(data, status, headers, config) {
						$scope.getmember = data;
						$scope.rmbdfees=$scope.getmember.rmb_district_fee;
					}).error(function(data, status, headers, config) {
						$scope.getmember = "Response Fail";
					});		
				 }	
			 
			var baseUrl = $location.protocol() + "://" + location.host + u;
			var link = baseUrl+'getAllFellowshipName';  
			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getAllFellowshipNameList = data;
				
			}).error(function(data, status, headers, config) {
				$scope.getAllFellowshipNameList = "Response Fail";
			});
			
		/*	var link = baseUrl+'getAllMemberNameList';  
			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getmember = data;
				
			}).error(function(data, status, headers, config) {
				$scope.getmember = "Response Fail";
			});*/
			
			var link = baseUrl + 'Events';
			$http.get(link).success(function(data, status, headers, config)
			{
				$scope.events = data;
			}).error(function(data, status, headers, config) 
			{
				$scope.events = "Response Fail";
			});
			
			
			
			var link = baseUrl + 'RotaryYear';
			$http.get(link).success(function(data,status,headers,config) {
				$scope.rotaryyear = data;
				$scope.rotaryyearid = 0;
				for (i in $scope.rotaryyear) {
					if ($scope.rotaryyear[i].defaultYear == "y") {
						$scope.rotaryyearid = $scope.rotaryyear[i].rotaryYearId;
						$scope.rotaryyeartitle = $scope.rotaryyear[i].rotaryYearTitle;
					}
				
				}
			});
			
			$scope.getMembers = function(){
				var link = baseUrl + 'getAllRegisteredMembersByEventID?eventid='+$scope.eventDrop;
				$http.get(link).success(function(data, status, headers, config)
				{
					$scope.RegisteredMembers = data;
				}).error(function(data, status, headers, config) 
				{
					$scope.RegisteredMembers = "Response Fail";
				});
				
				
			}
			
			$scope.memberlistUpdate = function(input){
				if($scope.membertype == "")
				{
					return true;
				}
				return angular.equals(input, $scope.membertype);
			}
			
			$scope.malierList = [];
			/*$scope.addEventMailerList = function(){
				if($scope.regUsers == "")
				{
					$scope.regUserError=1;
					$scope.regUserMsg = "Please select a Registered User";
				}
				else if($scope.regUsers == "All"){
					
					for(i=0;i<$scope.regMem.length;i++)
					{
						$scope.malierList.push({'memberEmail':$scope.regMem[i].emailId, 'memberFirstName': $scope.regMem[i].firstName, 'memberLastName': $scope.regMem[i].lastName, 'paid_amount': $scope.regMem[i].paid_amount, 'member_id': $scope.regMem[i].member_id});
					}
				}else{
					for(i=0;i<$scope.regMem.length;i++)
					{
						if($scope.regUsers == $scope.regMem[i].member_id)
						{
							$scope.malierList.push({'memberEmail':$scope.regMem[i].emailId, 'memberFirstName': $scope.regMem[i].firstName, 'memberLastName': $scope.regMem[i].lastName, 'paid_amount': $scope.regMem[i].paid_amount,'member_id': $scope.regMem[i].member_id});
						}
					}
				}
			}*/
			
			$scope.addMemberMailerList = function(){
				if($scope.MemberLi == "")
				{
					//alert(" If");
					$scope.memLiError=1;
					$scope.memLirMsg = "Please select a Member";
				}
				else if($scope.MemberLi == "All"){
				
					for(i=0;i<$scope.FilterMember.length;i++)
					{
						$scope.malierList.push({'memberEmail':$scope.FilterMember[i].user_name, 'memberFirstName': $scope.FilterMember[i].firstName, 'memberLastName': $scope.FilterMember[i].lastName, 'paid_amount': $scope.paid_amount, 'rmbdfees': $scope.rmbdfees, 'rmbfess': $scope.rmbfess, 'member_id': $scope.FilterMember[i].member_id, 'rotaryYearId': $scope.rotaryyearid, 'memberCategoryId': $scope.membercategoryid});
					}
				}else{
					//alert("Else");
					for(i=0;i<$scope.getmember.length;i++)
					{
						if($scope.MemberLi == $scope.getmember[i].member_id)
						{
							$scope.malierList.push({'memberEmail':$scope.getmember[i].user_name, 'memberFirstName': $scope.getmember[i].firstName, 'memberLastName': $scope.getmember[i].lastName, 'paid_amount': $scope.paid_amount, 'rmbdfees': $scope.rmbdfees, 'rmbfess': $scope.rmbfess, 'member_id': $scope.FilterMember[i].member_id, 'rotaryYearId': $scope.rotaryyearid, 'memberCategoryId': $scope.membercategoryid});
						}
					}
				}
			}
			
			
			$scope.removeEventMailerList = function(item) {
				var index = -1;
				for(var i=0; i<$scope.malierList.length; i++) {
					if($scope.malierList[i] == item){
						index = i;
						break;
					}
				}
				if(index < 0) {
					$window.alert("Error while removing record...Please try again!");
					return;
				}
				$scope.malierList.splice(index, 1);
			};
			$scope.emailList = [];
			$scope.phoneList = [];
			
			$scope.sendMail = function()
			{

				for(i=0;i<$scope.malierList.length;i++){
				var link = baseUrl+'addPaymentInfo1?member_id='+$scope.malierList[i].member_id+'&rmbdfees='+$scope.malierList[i].rmbdfees+'&rmbfees='+$scope.malierList[i].rmbfess+'&paid_amount='+$scope.malierList[i].paid_amount+'&rotaryYearId='+$scope.malierList[i].rotaryYearId+'&memberCategoryId='+$scope.malierList[i].memberCategoryId;		
	//alert(link);
			
				$http.post(link).success(function(data, status, headers, config) {
					 $scope.feesdata =data;
					}).error(function(data, status, headers, config) {
						 $scope.feesdata = "Response Fail";
					});
				
			} 
			location.reload(true);
		alert("SuccessFully data Inserted");
		
			}
			
	} ]);
