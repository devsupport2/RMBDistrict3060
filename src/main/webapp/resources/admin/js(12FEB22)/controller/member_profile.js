app.controller('memberProfileCtrl', function($scope, $http, $window, $filter, $location) {
	var baseUrl = $location.protocol() + "://" + location.host + u;	
	
	$scope.referalstatus = "O";
	
	$scope.redirectToMemberProfile = function(id) {					
		$window.location.href = url + 'member_profile?id='+id;
	}
	
	
	$scope.fla = 0;
	var a=document.createElement('a');
	a.href=document.referrer;
	$scope.urlRed = document.referrer;
	var pieces = a.pathname.split(/[\s/]+/);
	
	if(pieces[pieces.length-1] == 'registered_members_directory'){
		$scope.fla = 1;
	}else if(pieces[pieces.length-1] == 'members_directory'){
		$scope.fla = 2;
	}else{$scope.fla = 0;}
	a='';
	
	$scope.getMemberDetailById = function(id) {		
		var link = baseUrl+'getMemberDetailByMemberId?memberid='+id;
		//alert(link);					
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getmemberdetail = data;
			$scope.memberid = $scope.getmemberdetail.memberId;
			$scope.firstname = $scope.getmemberdetail.memberFirstName;
			$scope.lastname = $scope.getmemberdetail.memberLastName;							
			$scope.getFirstGiven($scope.memberid);		
			$scope.getSecondGiven($scope.memberid);	
			$scope.getThirdSummary();
		}).error(function(data, status, headers, config) {
			$scope.getmember = "Response Fail";
		});
					
		var link = baseUrl+'getspousedata?memberid='+id;
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getspousedata = data;
		}).error(function(data,status,headers,config) {
			$scope.getspousedata = "Response Fail";
		});
	}	
	
	$scope.Frontlogout = function() {		
		var link = baseUrl + 'Frontlogout';
		$http.post(link).success(function(data, status, headers, config) {
			$window.location.href = url+'';
		}).error(function(data, status, headers, config) {
			$scope.frontlogout = "Response Fail";
		});
	}
	//---------------------------  AllCountList 
	
/*	
	var link = baseUrl+'getAllCountList';
	$http.get(link).success(function(data, status, headers, config) {
		
		
		$scope.AllCountList = data;		
		
	}).error(function(data, status, headers, config) {
		$scope.AllCountList = "Response Fail";
	});	*/	
	
	//---------------------------  Meeting 
	
	
		var link = baseUrl+'getAllMembersDirectory';
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getmember = data;			
		}).error(function(data, status, headers, config) {
			$scope.getmember = "Response Fail";
		});		

		$scope.setNewMemberId = function() {
			$scope.memberid = $scope.metmemberid;
		}
		
		$scope.saveOnetoOne = function(invitedbymemberid) {			
			$scope.meetingdate = document.getElementById("todatetimepickeredit").value;	
			
			if($scope.metmemberid == undefined || $scope.metmemberid == ""){
				$window.alert("Please select member!");
				document.getElementById("metmemberid").focus();
				return;
			} /*else if($scope.invitedbymemberid == undefined){
				$window.alert("Please select invited by member!");
				document.getElementById("invitedbymemberid").focus();
				return;
			}*/ else if($scope.meetingdate == undefined){
				$window.alert("Please select meeting date!");
				document.getElementById("meetingdate").focus();
				return;
			} else if($scope.location == undefined){
				$window.alert("Please enter meeting location!");
				document.getElementById("location").focus();
				return;
			} else if($scope.topic == undefined){
				$window.alert("Please enter topics of conversation!");
				document.getElementById("topic").focus();
				return;
			} else {
				$scope.spin = 1;				
				var link = baseUrl+'saveOnetoOne?metmemberid='+$scope.metmemberid+'&invitedbymemberid='+invitedbymemberid+'&meetingdate='+$scope.meetingdate+'&location='+$scope.location+'&topic='+$scope.topic;				
		//	alert(link);
				$http.post(link).success(function(data, status, headers, config) {
					$scope.saveonetoone = data;
					$scope.spin = 0;					
					$window.alert("Data submitted successfully");
					//if(temp == "new"){
					//	$window.location.href = url + 'one_to_one';
					//} else {
						$window.location.href = url + 'index2';
					//};					
				}).error(function(data, status, headers, config) {
					$scope.saveonetoone = "Response Fail";
				});
			}
		};	
		
		
	//---------------------Refferance Add------------------------
		

		
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
					$window.location.href = url + 'index2';			
				}).error(function(data, status, headers, config) {
					$scope.savereferral = "Response Fail";
				});
			}
		};
		
	//-------------------Count Meeting--------------------------
		$scope.MeetingCount = function(memberId) {
		var link = baseUrl+'getCountMettingById?memberId='+memberId;
		$http.get(link).success(function(data, status, headers, config) {
			$scope.meetingcount = data;			
		}).error(function(data, status, headers, config) {
			$scope.meetingcount = "Response Fail";
		});	
		}	
//-------------------Count Refferal--------------------------
		$scope.RefferalCount = function(memberId) {
		var link = baseUrl+'getCountRefferal?memberId='+memberId;
		$http.get(link).success(function(data, status, headers, config) {
			$scope.refferalcount = data;			
		}).error(function(data, status, headers, config) {
			$scope.refferalcount = "Response Fail";
		});	
		}	
		
		//-------------------Count Refferal--------------------------
		$scope.RefferalCountRecievd = function(memberId) {
		var link = baseUrl+'getCountRefferalRecied?memberId='+memberId;
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getCountRefferalReciedcount = data;			
		}).error(function(data, status, headers, config) {
			$scope.getCountRefferalReciedcount = "Response Fail";
		});	

		}
		//-------------------Business Count--------------------------		
		$scope.getCountBusiness = function(memberId) {
			var link = baseUrl+'getCountBusiness?memberId='+memberId;
			
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getCountBusinessdata = data;			
			}).error(function(data, status, headers, config) {
				$scope.getCountBusinessdata = "Response Fail";
			});	

			}
		//-------------------Thank You-------------------------		
		var link = baseUrl+'getAllMembersDirectory';
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getmember = data;			
		}).error(function(data, status, headers, config) {
			$scope.getmember = "Response Fail";
		});
		
		$scope.saveThankYouSlip = function(temp) {	
			$scope.slipdate = document.getElementById("slipdate").value;
			if($scope.comment == undefined){
				$scope.comment = "";
			}		
			if($scope.tomemberid == undefined || $scope.tomemberid == ""){
				$window.alert("Please select member!");
				document.getElementById("tomemberid").focus();
				return;
			} else if($scope.amount == undefined){
				$window.alert("Please enter amount!");
				document.getElementById("amount").focus();
				return;
			} else if($scope.slipdate == undefined){
				$window.alert("Please enter slip date!");
				document.getElementById("slipdate").focus();
				return;
			} else if($scope.businesstype == undefined){
				$window.alert("Please select business type!");
				document.getElementById("businesstype").focus();
				return;
			} else if($scope.referraltype == undefined){
				$window.alert("Please select referral type!");
				document.getElementById("referraltype").focus();
				return;
			}  else {
				$scope.spin = 1;				
				var link = baseUrl+'saveThankYouSlip?tomemberid='+$scope.tomemberid+'&amount='+$scope.amount+'&slipdate='+$scope.slipdate+'&businesstype='+$scope.businesstype+'&referraltype='+$scope.referraltype+'&comment='+$scope.comment;				
			//	alert(link);
				$http.post(link).success(function(data, status, headers, config) {
					$scope.savethankyouslip = data;
					$scope.spin = 0;					
					$window.alert("Data submitted successfully");
					$window.location.href = url + 'index2';				
				}).error(function(data, status, headers, config) {
					$scope.savethankyouslip = "Response Fail";
				});
			}
		};
		
				
		$scope.saveThankYouSlip1 = function(temp) {	
			$scope.slipdate = document.getElementById("slipdate1").value;
			if($scope.comment == undefined){
				$scope.comment = "";
			}		
			if($scope.tomemberid == undefined || $scope.tomemberid == ""){
				$window.alert("Please select member!");
				document.getElementById("tomemberid").focus();
				return;
			} else if($scope.amount == undefined){
				$window.alert("Please enter amount!");
				document.getElementById("amount").focus();
				return;
			} else if($scope.slipdate == undefined){
				$window.alert("Please enter slip date!");
				document.getElementById("slipdate1").focus();
				return;
			} else if($scope.businesstype == undefined){
				$window.alert("Please select business type!");
				document.getElementById("businesstype").focus();
				return;
			} else if($scope.referraltype == undefined){
				$window.alert("Please select referral type!");
				document.getElementById("referraltype").focus();
				return;
			}  else {
				$scope.spin = 1;				
				var link = baseUrl+'saveThankYouSlip1?tomemberid='+$scope.tomemberid+'&amount='+$scope.amount+'&slipdate='+$scope.slipdate+'&businesstype='+$scope.businesstype+'&referraltype='+$scope.referraltype+'&comment='+$scope.comment;				
			//	alert(link);
				$http.post(link).success(function(data, status, headers, config) {
					$scope.savethankyouslip = data;
					$scope.spin = 0;					
					$window.alert("Data submitted successfully");
					$window.location.href = url + 'index2';				
				}).error(function(data, status, headers, config) {
					$scope.savethankyouslip = "Response Fail";
				});
			}
		};
		
		//-------------------given First Dashboard--------------------------		
		$scope.getFirstGiven = function(memberId) {
			/*$scope.startdate1= document.getElementById("datetimepicker").value;
			$scope.endate1= document.getElementById("todatetimepicker").value;*/
			$scope.startdate1=$("#datetimepicker").val();
			$scope.endate1=$("#todatetimepicker").val();
				var link = baseUrl+'getFirstdashboard?memberId='+memberId+'&fromdate='+$scope.startdate1+'&todate='+$scope.endate1;
				//alert(link);
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getFirstGivendata = data;			
				}).error(function(data, status, headers, config) {
					$scope.getFirstGivendata = "Response Fail";
				});	
			}	
		//-------------------given Second Dashboard--------------------------		
		$scope.getSecondGiven = function(memberId) {
			$scope.startdate2= document.getElementById("receviedfrom").value;
			$scope.enddate2= document.getElementById("receviedto").value;
				var link = baseUrl+'getSecondGiven?memberId='+memberId+'&fromdate='+$scope.startdate2+'&todate='+$scope.enddate2;
				//alert(link);
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getSecondGivendata = data;			
				}).error(function(data, status, headers, config) {
					$scope.getSecondGivendata = "Response Fail";
				});	
			}	
		//------------------getThirdSummary--------------------------		
		$scope.getThirdSummary = function() {
			$scope.startdate3= document.getElementById("summaryfrom").value;
			$scope.enddate3= document.getElementById("summaryto").value;
				var link = baseUrl+'getThirdSummary?fromdate='+$scope.startdate3+'&todate='+$scope.enddate3;
				//alert(link);
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getThirdSummarydata = data;			
				}).error(function(data, status, headers, config) {
					$scope.getThirdSummarydata = "Response Fail";
				});	
			}			
			
});