app.controller('MobileIndexCtrl',function($scope, $http, $window, $filter, $location, $timeout) {
		var baseUrl = $location.protocol()+"://"+location.host+u;	
		
		
		$scope.todaydate = $filter('date')(new Date(),'yyyy-MM-dd');
	//	alert($scope.todaydate);

	/*Image calling */
	$scope.redirectSlider=function(redirectUrl){
		
		location.href=redirectUrl;
	}
	var link = baseUrl+'getActiveSliders';

	$http.get(link).
     success(function (data, status, headers, config) {
         //debugger;
         $scope.activeSlider = data;
     }).
     error(function (data, status, headers, config) {
    	   $scope.activeSlider = "No response";
     });
	
	/*Image calling end */
	$scope.searchByCategory = function(){
		//alert($scope.search);
		$window.location.href = baseUrl+'search_result?search='+$scope.search;	
	}
	
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
			$('#sendmsg').addClass('active');
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
	

	$scope.searchByCategory1 = function(){
		
		

		$window.location.href = baseUrl+'search_result?search='+$scope.search;					
		
	}
		
$scope.fellowshipdata = function(fellowship_id){
		
		
//alert(fellowship_id);
		$window.location.href = baseUrl+'members_directory?fellowship_id='+fellowship_id;					
		
	}


		var baseUrl = $location.protocol() + "://" + location.host + u;
	var link = baseUrl+'getAllFellowshipName';  
	
	$http.get(link).success(function(data, status, headers, config) {
		$scope.getAllFellowshipNameList = data;
		
	}).error(function(data, status, headers, config) {
		$scope.getAllFellowshipNameList = "Response Fail";
	});
	//---------------------------  AllCountList 
	
	
	var link = baseUrl+'getAllCountList';
//alert(link);
	$http.get(link).success(function(data, status, headers, config) {
		$scope.AllCountList = data;			
	}).error(function(data, status, headers, config) {
		$scope.AllCountList = "Response Fail";
	});		
	
	$scope.pathname = $window.location.pathname; 	
	
	if($scope.pathname == "/mobile/Frontlogout"){
		
		$window.location.href = url+'login';
		
	}
	
// ------------------------ Top Meeting Count
	
	$scope.getTopMemberMeeting = function() {	
		var date = new Date(), y = date.getFullYear(), m = date.getMonth();
    	var fromdate = $filter('date')(new Date(y, m - 1, 1),'dd/MM/yyyy'); 
		var todate = $filter('date')(new Date(y, m , 0),'dd/MM/yyyy'); 
		//alert(fromdate);
	    //alert(todate);
		var link = baseUrl+'getTopMemberMeeting?fromdate='+fromdate+'&todate='+todate;			
		//alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getTopmemberMeeting = data;			
		}).error(function(data, status, headers, config) {
			$scope.getTopmemberMeeting = "Response Fail";
		});
	}
	// ------------------------ getTopMemberBusiness
	$scope.getTopMemberBusiness = function() {	
		$scope.date = new Date();
		$scope.y = $scope.date.getFullYear();
		$scope.m = $scope.date.getMonth();
		$scope.fromdate = $filter('date')(new Date($scope.y, $scope.m - 1, 1),'dd/MM/yyyy'); 
		$scope.todate = $filter('date')(new Date($scope.y, $scope.m  , 0),'dd/MM/yyyy'); 
		//alert($scope.fromdate);
		const monthNames = ["January", "February", "March", "April", "May", "June",
			"July", "August", "September", "October", "November", "December"
			];
		if($scope.m == 0){
			$scope.y = $scope.y-1;
			$scope.m=monthNames[11];
		}
		else{
			$scope.m=monthNames[$scope.m-1];
		}
		
		var link = baseUrl+'getTopMemberBusiness?fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
		//alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getTopMemberBusinessdata = data;			
		}).error(function(data, status, headers, config) {
			$scope.getTopMemberBusinessdata = "Response Fail";
		});
	}
	// ------------------------getTopReferal
	$scope.getTopReferal = function() {	
		var date = new Date(), y = date.getFullYear(), m = date.getMonth();
    	var fromdate = $filter('date')(new Date(y, m - 1, 1),'dd/MM/yyyy'); 
		var todate = $filter('date')(new Date(y, m , 0),'dd/MM/yyyy'); 
	//	alert(fromdate);
		var link = baseUrl+'getTopMemberReferal?fromdate='+fromdate+'&todate='+todate;			
		//alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getTopReferaldata = data;			
		}).error(function(data, status, headers, config) {
			$scope.getTopReferaldata = "Response Fail";
		});
	}
	//--------------------------------------------- Album
	   $scope.currentPage = 0;
	    $scope.pageSize = 20;
	    $scope.search = '';
	    
	    $scope.getData = function ()
	    {
	    	return $filter('filter')($scope.data, $scope.search)
	    }
	    
	    $scope.numberOfPages=function()
	    {
	    	return Math.ceil($scope.album.length/$scope.pageSize);
	    } 
	    
	    var baseUrl = $location.protocol()+"://"+location.host+u;
	    
	    $scope.getBirthdaysAndAnniversariesByDate = function ()
	    {
			var currentdate = $filter('date')(new Date(),'MM-dd');
			
			var link = baseUrl+'getAllBirthdaysByDate?currentdate='+currentdate;					
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getallbirthdaysbydate = data;			
			}).error(function(data, status, headers, config) {
				$scope.getallbirthdaysbydate = "Response Fail";
			});
			
			var link = baseUrl+'getAllAnniversariesByDate?currentdate='+currentdate;					
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getallanniversariesbydate = data;			
			}).error(function(data, status, headers, config) {
				$scope.getallanniversariesbydate = "Response Fail";
			});
	    }
	    
	    var link = baseUrl + 'ServiceProject';
		$http.get(link).success(
			function(data,status,headers,config)
			{
				$scope.serviceproject = data;					
			})
			.error(function(data,status,headers,config)
			{
				$scope.serviceproject = "Responce Fail";
			});
	    
	    var link = baseUrl+'Album';
		$http.get(link).success(
			function(data, status, headers, config)
			{
				$scope.album = data;
			}).
			error(function(data, status, headers, config)
			{
				$scope.album = "Response Fail";
			});

		var link = baseUrl+'AlbumImages';
		$http.get(link).success(
			function(data, status, headers, config)
			{
				$scope.albumimages = data;
			}).
			error(function(data, status, headers, config)
			{
				$scope.albumimages = "Response Fail";
			});
		
		
		var link = baseUrl+'EventsByImages';
		$http.get(link).success(
			function(data, status, headers, config)
			{
				$scope.EventsByImagesdata = data;
			}).
			error(function(data, status, headers, config)
			{
				$scope.EventsByImagesdata = "Response Fail";
			});
		
		var link = baseUrl+'getAlbumOneImage';
		$http.get(link).success(
			function(data, status, headers, config)
			{
				$scope.getalbumoneimage = data;
			}).
			error(function(data, status, headers, config)
			{
				$scope.getalbumoneimage = "Response Fail";
			});
				
				var formData = new FormData();
				$scope.albumimage = [{}];
				
				$scope.addAlbumImageRow = function()
				{					
					var imagedescription = $scope.imagedescription;
					
					if(imagedescription==undefined || imagedescription=="")
					{
						imagedescription = "Description";
					}

					if($scope.imagetitle==undefined || $scope.imagetitle=="")
					{
						$window.alert("Please Enter Image Title!");
						document.getElementById("imagetitle").focus();
						return;
					}
					else
					{
						$scope.albumimage.push({'imageTitle':$scope.imagetitle, 'imageDescription':imagedescription});
						formData.append("image",image.files[0]);
					}
					
				};
				
				$scope.removeAlbumImageRow = function(imagetitle)
				{				
					var index = -1;
					var comArr = eval( $scope.albumimage);
					for( var i = 0; i < comArr.length; i++ ) {
						if( comArr[i].imageTitle === imagetitle ) {
							index = i;
							break;
						}
					}
					if( index === -1 ) {
						alert( "Something gone wrong" );
					}
					$scope.albumimage.splice( index, 1 );
				};			
				
				$scope.temp1 = 1;
				$scope.temp2 = 0;
				$scope.addalbum = function()
				{
					var project = $scope.project;					
					var title = $scope.albumtitle;
					var subtitle = $scope.albumsubtitle;
					var albumdate = $scope.albumdate;
					var description = $scope.description;
					
					if(project == undefined || project == "")
					{	
						project = 0;
					}									
					if(subtitle == undefined || subtitle == "")
					{	
						subtitle = 0;
					}					
					if(albumdate == undefined || albumdate == "")
					{	
						albumdate = "";
					}										
					if(description==undefined || description=="")
					{
						description="";
					}	
					
					if(title==undefined || title=="")
					{
						$window.alert("Please Enter Album Title!");
						document.getElementById("title").focus();
						return;
					}
					else
					{
						$scope.temp1 = 0;
						$scope.temp2 = 1;
						
						var pap = title.replace("&","$");
						var pap1 = pap.replace("#","~");
						var pap2 = pap1.replace("%","!");
						
						var link = baseUrl + 'addAlbum?projectid='+project+'&title='+pap2+'&subtitle='+subtitle+'&albumdate='+albumdate+'&description='+description;						
						$http.post(link).success(
								function(data, status, headers, config)
								{
									$scope.addalbum = data;											
														
									$scope.titleimage = [];
									$scope.desc = [];
									angular.forEach($scope.albumimage,
										function(item)
										{
											if(item.imageTitle != null)
											{
												var tit = item.imageTitle.replace("&","$");
												var tit1 = tit.replace("#","~");
												var tit2 = tit1.replace("%","!");												
													
												$scope.titleimage.push(tit2);
												$scope.desc.push(item.imageDescription);
											}
										});														
														
										var link = baseUrl + 'addAlbumImage?imagetitle='+$scope.titleimage+'&imagedescription='+$scope.desc;										
										$http({
												method: 'POST',
												url: link,
										        headers: {'Content-Type': undefined},
										        data: formData,
										        transformRequest: function(data, headersGetterFunction)
										        {
										        	return data;
										        }
										       }).success(
													function(data, status, headers, config)
													{
														$scope.addalbumimage = data;
														
														$scope.temp1 = 1;
														$scope.temp2 = 0;
														
														$window.alert("Album added successfully...");
														$window.location.href = adminurl+'photo_album';														
													}).
													error(function(data, status, headers, config)
													{
														$scope.addalbumimage = "Response Fail";
													});
												
												
							}).error(function()
							{
								$scope.addalbum = "Responce fail";
							});
				}																																																																							
			}
			
			$scope.getalbum = function(albumid)
			{
				 var link = baseUrl+'Album';
					$http.get(link).success(
						function(data, status, headers, config)
						{
							$scope.album = data;
							
							for (i in $scope.album)
							{
				                if ($scope.album[i].albumId == albumid)
				                {
				                	$scope.albumid = $scope.album[i].albumId;
				                	$scope.albumtitle = $scope.album[i].albumTitle;
				                	$scope.albumsubtitle = $scope.album[i].albumSubtitle;
				                	$scope.albumdate = $scope.album[i].albumDate;          	
				                	$scope.description = $scope.album[i].description;
				                	$scope.project = $scope.album[i].serviceProjectId;		                	
				                }
							}
						}).
						error(function(data, status, headers, config)
						{
							$scope.album = "Response Fail";
						});				
					
					var link = baseUrl+'AlbumImage?albumid='+albumid;					
					$http.get(link).success(
							function(data, status, headers, config)
							{
								$scope.albumimage = data;
							}).
							error(function(data, status, headers, config)
							{
								$scope.albumimage = "Response Fail";
							});
			}
				
			
				$scope.removeRow1 = function(imagetitle)
				{				
					var index = -1;
					var comArr = eval( $scope.albumimage);
					for( var i = 0; i < comArr.length; i++ ) {
						if( comArr[i].imageTitle === imagetitle ) {
							index = i;
							break;
						}
					}
					if( index === -1 ) {
						alert( "Something gone wrong" );
					}
					$scope.albumimage.splice( index, 1 );
				};
				
				var formData = new FormData();
				$scope.albumimagenew = [{}];
				
				$scope.addAlbumImageRowEdit = function()
				{
					if($scope.imagedescription==undefined || $scope.imagedescription=="")
					{
						$scope.imagedescription = "Description";
					}

					if($scope.imagetitle==undefined || $scope.imagetitle=="")
					{
						$window.alert("Please Enter Image Title!");
						document.getElementById("imagetitle").focus();
						return;
					}
					else
					{
						$scope.albumimagenew.push({'imageTitle':$scope.imagetitle, 'imageDescription':$scope.imagedescription});
						formData.append("image",image.files[0]);
					}
				};
						
				$scope.removeAlbumImageRowEdit = function(imagetitle)
				{				
					var index = -1;
					var comArr = eval( $scope.albumimagenew);
					for( var i = 0; i < comArr.length; i++ ) {
						if( comArr[i].imageTitle === imagetitle ) {
							index = i;
							break;
						}
					}
					if( index === -1 ) {
						alert( "Something gone wrong" );
					}
					$scope.albumimagenew.splice( index, 1 );
				};
				
				$scope.editalbum = function(albumid)
				{
					var project = $scope.project;					
					var title = $scope.albumtitle;
					var subtitle = $scope.albumsubtitle;
					var albumdate = $scope.albumdate;
					var description = $scope.description;		
					
					if(project == undefined || project == "")
					{	
						project = 0;
					}					
					if(subtitle == undefined || subtitle == "")
					{	
						subtitle = "";
					}					
					if(albumdate == undefined || albumdate == "")
					{	
						albumdate = "";
					}										
					if(description==undefined || description=="")
					{
						description="";
					}					
					if(title==undefined || title=="")
					{
						$window.alert("Please Enter Album Title!");
						document.getElementById("title").focus();
						return;
					}
					else
					{
						$scope.temp1 = 0;
						$scope.temp2 = 1;
						
						var link = baseUrl+'deleteSelectedAlbumImage?albumid='+albumid;
						$http['delete'](link).success(
								function(data, status, headers, config)
								{
									$scope.deleteselectedalbumimage = data;
								}).
								error(function(data, status, headers, config)
								{
									$scope.deleteselectedalbumimage = "Response Fail";
								});
													
						var pap = title.replace("&","$");
						var pap1 = pap.replace("#","~");
						var pap2 = pap1.replace("%","!");
						
						$scope.title = [];
						$scope.desc = [];
						angular.forEach($scope.albumimagenew,
							function(item)
							{
								if(item.imageTitle != null)
								{
									$scope.title.push(item.imageTitle);
									$scope.desc.push(item.imageDescription);
								}
							});
						
						var link = baseUrl + 'editAlbum?albumid='+albumid+'&project='+project+'&title='+pap2+'&subtitle='+subtitle+'&albumdate='+albumdate+'&description='+description;
						
						$http.put(link).success(
								function(data, status, headers, config)
								{
									$scope.editalbum = data;
									
									var link = baseUrl+'editAlbumImage?albumid='+albumid+'&imagetitle='+$scope.title+'&imagedescription='+$scope.desc;

									$http({
											method: 'POST',
											url: link,
											headers: {'Content-Type': undefined},
											data: formData,
											transformRequest: function(data, headersGetterFunction)
											{
									        	return data;
									        }
										})
										.success(function(data, status)
										{   
										  	$scope.editalbumimage = data;
										  	
										  	if($scope.albumimage.length == 0)
										  	{
										  		$scope.temp1 = 0;
												$scope.temp2 = 1; 
												
										  		$window.alert("Album Updated Successfully");
												$window.location.href = adminurl+'photo_album';
										  	}
										  	
										  	var a = 0;
										  	
										  	angular.forEach($scope.albumimage,
											   		function(item)
											   		{
														if(item.imageTitle != null)
														{
															var link = baseUrl+'editAlbumImageNew?albumid='+albumid+'&imagetitle='+item.imageTitle+'&imagedescription='+item.description+'&image='+item.image;
										    				$http.post(link).success(
									    						function(data, status, headers, config)
									    						{						    							
									    							$scope.editalbumimagenew = data;
									    							
									    							a = a + 1;
									    							
									    							if(a == $scope.albumimage.length)
									    							{
									    								$scope.temp1 = 0;
									    								$scope.temp2 = 1;
									    								
									    								$window.alert("Album Updated Successfully");
																		$window.location.href = adminurl+'photo_album';
									    							}
									    							
									    						}).
									    						error(function(data, status, headers, config)
									    						{
									    							$scope.editalbumimagenew = "Response Fail";
									    						});
														}
												    });											
										})
										error(function(data, status, headers, config)
										{
											$scope.editalbumimage = "Response Fail";
										});
								}).
								error(function(data, status, headers, config)
								{
									$scope.editalbum = "Response Fail";
								});
					}
				}				
				
				$scope.checkAll = function()
				{
					if ($scope.selectedAll)
					{
						$scope.selectedAll = false;
					}
					else
					{
			            $scope.selectedAll = true;
			        }
					angular.forEach($scope.album, function (item)
					{
						item.selected = $scope.selectedAll;
					});
			    }
				
				$scope.deletealbum = function()
				{
					deleteAlbum = $window.confirm('Are you sure you want to delete album?');
					if(deleteAlbum)
					{
					    angular.forEach($scope.album,
					    		function(item)
					    		{
					    			if (item.selected)
					    				{
						    				var link = baseUrl+'deleteAlbum?albumid='+item.albumId;
						    				$http['delete'](link).success(
						    						function(data, status, headers, config)
						    						{
						    							$scope.deletealbum = data;
						    						}).
						    						error(function(data, status, headers, config)
						    						{
						    							$scope.deletealbum = "Response Fail";
						    						});
					    				}
					    		});					    
						$window.location.href = adminurl+'photo_album';
					}
				}

	$scope.referalstatus = "O";
	
	$scope.redirectToMemberProfile = function(id) {					
		$window.location.href = url + 'member_profile?id='+id;
	}
	
/*	$scope.fla = 0;
	var a=document.createElement('a');
	a.href=document.referrer;
	$scope.urlRed = document.referrer;
	var pieces = a.pathname.split(/[\s/]+/);
	
	if(pieces[pieces.length-1] == 'registered_members_directory'){
		$scope.fla = 1;
	}else if(pieces[pieces.length-1] == 'members_directory'){
		$scope.fla = 2;
	}else{$scope.fla = 0;}
	a='';*/
	
	
	
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
			var date = new Date(), y = date.getFullYear(), m = date.getMonth();
		    	var fromdate = $filter('date')(new Date(y, m - 1, 1),'dd/MM/yyyy'); 
				var todate = $filter('date')(new Date(y, m , 0),'dd/MM/yyyy'); 
				
				var link = baseUrl+'getFirstdashboard?memberId='+memberId+'&fromdate='+fromdate+'&todate='+todate;
				//alert(link);
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getFirstGivendata = data;			
				}).error(function(data, status, headers, config) {
					$scope.getFirstGivendata = "Response Fail";
				});	
			}	
		//-------------------given Second Dashboard--------------------------		
		$scope.getSecondGiven = function(memberId) {
				var date = new Date(), y = date.getFullYear(), m = date.getMonth();
		    	var fromdate = $filter('date')(new Date(y, m - 1, 1),'dd/MM/yyyy'); 
				var todate = $filter('date')(new Date(y, m , 0),'dd/MM/yyyy'); 
				
				var link = baseUrl+'getSecondGiven?memberId='+memberId+'&fromdate='+fromdate+'&todate='+todate;
			//	alert(link);
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getSecondGivendata = data;			
				}).error(function(data, status, headers, config) {
					$scope.getSecondGivendata = "Response Fail";
				});	
			}	
		//------------------getThirdSummary--------------------------		
		$scope.getThirdSummary = function() {
		//	$scope.startdate3= document.getElementById("summaryfrom").value;
			//$scope.enddate3= document.getElementById("summaryto").value;
			
				var date = new Date(), y = date.getFullYear(), m = date.getMonth();
		    	var fromdate = $filter('date')(new Date(y, m - 1, 1),'dd/MM/yyyy'); 
				var todate = $filter('date')(new Date(y, m , 0),'dd/MM/yyyy'); 
				
				var link = baseUrl+'getThirdSummary?fromdate='+$scope.fromdate+'&todate='+$scope.todate;
			
				//alert(link);
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getThirdSummarydata = data;			
				}).error(function(data, status, headers, config) {
					$scope.getThirdSummarydata = "Response Fail";
				});	
			}	
			//-------------------------------------------
			
			
			
			
			
			var link = baseUrl + 'getAllMembersDirectory';						
//alert(link);
	$http.get(link).success(function(data, status, headers, config) {
			
		$scope.getMemberForMembersDirectory = data;	
	//	console.log(	$scope.getMemberForMembersDirectory );	
	}).error(function(data, status, headers, config) {
		
		$scope.getMemberForMembersDirectory = "Response Fail";
	});	
			    
/*	var link = baseUrl+'getMemberForMembersDirectoryByPage?pagesize='+$scope.pageSize+'&startindex='+$scope.currentPage;
	$http.get(link).success(function(data, status, headers, config) {
		$scope.getMemberForMembersDirectory = data;
		$scope.a = 1;
	}).error(function(data, status, headers, config) {
		$scope.getMemberForMembersDirectory = "Response Fail";
	});*/
	
	$scope.getFellowshipById = function(fellowship_id){
		if(fellowship_id == "null"){
			$scope.fellowship_id="";
		//	alert(fellowship_id);
		}else{
		$scope.fellowship_id=fellowship_id;
		}
	}
	$scope.next = function() {
		$scope.currentPage = $scope.currentPage + 1;
		$scope.startindex = $scope.pageSize * $scope.currentPage;
		
		$scope.a = 0;
		
		var link = baseUrl+'getMemberForMembersDirectoryByPage?pagesize='+$scope.pageSize+'&startindex='+$scope.startindex;		
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getMemberForMembersDirectory = data;
			$scope.a = 1;
		}).error(function(data, status, headers, config) {
			$scope.getMemberForMembersDirectory = "Response Fail";
		});								
	}
				
	$scope.prev = function() {
		$scope.currentPage = $scope.currentPage - 1;
		$scope.startindex = $scope.pageSize * $scope.currentPage;
		$scope.a = 0;
		
		var link = baseUrl+'getMemberForMembersDirectoryByPage?pagesize='+$scope.pageSize+'&startindex='+$scope.startindex;
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getMemberForMembersDirectory = data;
			$scope.a = 1;
		}).error(function(data, status, headers, config) {
			$scope.getMemberForMembersDirectory = "Response Fail";
		});			
	}
				
	$scope.searchmember = function() {		
		var search = $scope.search;
		if(search == undefined || search == "") {
			$scope.a = 0;
			var link = baseUrl+'getMemberForMembersDirectoryByPage?pagesize='+$scope.pageSize+'&startindex='+$scope.startindex;
			$http.get(link).success(function(data, status, headers, config) {
				$scope.getMemberForMembersDirectory = data;
				$scope.a = 1;
			}).error(function(data, status, headers, config) {
				$scope.getMemberForMembersDirectory = "Response Fail";
			});
		} else {
			$scope.a = 0;
			var link = baseUrl+'searchMembersForMembersDirectory?keyword='+search;
			$http.get(link).success(function(data, status, headers, config) {				
				$scope.getMemberForMembersDirectory = data;
				$scope.a = 1;
			}).error(function(data, status, headers, config) {
				$scope.getMemberForMembersDirectory = "Response Fail";
			});
		}
	}
	
	$scope.redirectToMemberProfile = function(id) {					
		$window.location.href = url + 'member_profile?id='+id;
	}
	
	$scope.directToMemberProfile = function(id) {					
		$window.location.href = url + 'mobile_member_details?id='+id;
	}
	
	$scope.getAllMemberDirectory = function () {			
		var link = baseUrl + 'getAllMembersDirectory';						
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getMemberdirectory = data;				
		}).error(function(data, status, headers, config) {
			$scope.getMemberdirectory = "Response Fail";
		});			 
    }
	
	
	
	
	$scope.getMemberDetailById11 = function(id) {					
		
		var link = baseUrl+'getMemberDetailByMemberId?memberid='+id;					
		
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getmemberdetail = data;
			$scope.memberid = $scope.getmemberdetail.memberId;
			$scope.firstname = $scope.getmemberdetail.memberFirstName;
			$scope.lastname = $scope.getmemberdetail.memberLastName;							
									
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
	
	$scope.setFlag = function() {
		$scope.errorFirstName = 0;
		$scope.msgFirstName = "";
		$scope.errorLastName = 0;
		$scope.msgLastName = "";
		$scope.errorEmail = 0;
		$scope.msgEmail = "";
		$scope.errorMobileNo = 0;
		$scope.msgMobileNo = "";
		$scope.errorMessage = 0;
		$scope.msgMessage = "";
	}
	
	$scope.sendMessage = function(memberid) {					
		if($scope.userfirstname == undefined || $scope.userfirstname == "") {
			$scope.errorFirstName = 1;
			$scope.msgFirstName = "Please enter your first name";
			document.getElementById("userfirstname").focus();
			return;
		} else if($scope.userlastname == undefined || $scope.userlastname == "") {
			$scope.errorLastName = 1;
			$scope.msgLastName = "Please enter your last name";
			document.getElementById("userlastname").focus();
			return;
		} else if($scope.useremail == undefined || $scope.useremail == "") {			
			$scope.errorEmail = 1;
			$scope.msgEmail = "Please enter your email";
			document.getElementById("useremail").focus();
			return;
		} else if($scope.usermobileno == undefined || $scope.usermobileno == "") {
			$scope.errorMobileNo = 1;
			$scope.msgMobileNo = "Please enter your mobile no.";
			document.getElementById("usermobileno").focus();
			return;
		} else if($scope.usermessage == undefined || $scope.usermessage == "") {
			$scope.errorMessage = 1;
			$scope.msgMessage = "Please enter your message";
			document.getElementById("usermessage").focus();
			return;
		} else {
			$scope.spin = 1;
			var link = baseUrl+'sendUserMessage?memberid='+memberid+'&firstname='+$scope.userfirstname+'&lastname='+$scope.userlastname+'&email='+$scope.useremail+'&mobileno='+$scope.usermobileno+'&usermessage='+$scope.usermessage;				
			$http.post(link).success(function(data, status, headers, config) {
				$scope.sendusermesaage = data;
				$scope.spin = 0;							
				$scope.submitSuccess = 1;
				$scope.msgSuccess = "Your message sent to member";
				$timeout(function(){
					$scope.submitSuccess = 0;
					$('#myModal').modal('hide');				
				}, 2000);
			}).error(function(data, status, headers, config) {
				$scope.sendusermesaage = "Response Fail";
				$scope.submitError = 1;
				$scope.msgError = "Some wrong! Please try again after some time!";
				$timeout(function(){
					$scope.submitError = 0;				
				}, 3000);				
			});
		}
	}
	
	$scope.getSearchedMembers = function(search){
		$scope.search = search;
		var link = baseUrl+'searchMembers?keyword='+search;			
	//	alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getMemberForMembersDirectory = data;				
		}).error(function(data, status, headers, config) {
			$scope.getMemberForMembersDirectory = "Response Fail";
		});
	}
	
		
	$scope.getMemberDetailByIdProfile = function(id) {		
		var link = baseUrl+'getMemberDetailByMemberId?memberid='+id;
					
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
//-----------------------------------------------------------------------------------------------------------
	
	$scope.getMembersMeetingsDetailById = function(memberid,fromdate,todate) {	
		/*$scope.currentDate = $filter('date')(new Date(), 'dd');
		$scope.currentMonth = $filter('date')(new Date(), 'MM');
		$scope.currentYear = $filter('date')(new Date(), 'yyyy');
		$scope.fromdate = "0"+1+"/"+$scope.currentMonth+"/"+$scope.currentYear;		
		document.getElementById("datepicker").value = $scope.fromdate;
		$scope.todate = $scope.currentDate+"/"+$scope.currentMonth+"/"+$scope.currentYear;
		document.getElementById("datepicker1").value = $scope.todate;*/			
		
		$scope.fromdate = fromdate;
		$scope.todate = todate;
		
		var link = baseUrl+'getMemberMeetingsById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;
		
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getMemberMeetings = data;			
		}).error(function(data, status, headers, config) {
			$scope.getMemberMeetings = "Response Fail";
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
	
	
	
	
	
	
	
	
	
	
	$scope.getMemberMeetingsDetailById = function(memberid) {	
		$scope.currentDate = $filter('date')(new Date(), 'dd');
		$scope.currentMonth = $filter('date')(new Date(), 'MM');
		$scope.currentYear = $filter('date')(new Date(), 'yyyy');
		$scope.fromdate = "0"+1+"/"+$scope.currentMonth+"/"+$scope.currentYear;		
		document.getElementById("datetimepicker").value = $scope.fromdate;
		$scope.todate = $scope.currentDate+"/"+$scope.currentMonth+"/"+$scope.currentYear;
		document.getElementById("todatetimepicker").value = $scope.todate;			
		
		var link = baseUrl+'getMemberMeetingsById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;
		//alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getMemberMeetings = data;			
		}).error(function(data, status, headers, config) {
			$scope.getMemberMeetings = "Response Fail";
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
	
	$scope.getMeetingsByDate = function(memberid) {
		$scope.fromdate = document.getElementById("datetimepicker").value;
		$scope.todate = document.getElementById("todatetimepicker").value;
		
		var link = baseUrl+'getMemberMeetingsById?memberid='+memberid+'&fromdate='+$scope.fromdate+'&todate='+$scope.todate;
		//alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getMemberMeetings = data;			
		}).error(function(data, status, headers, config) {
			$scope.getMemberMeetings = "Response Fail";
		});
	}	
	
	
	
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
		
		//$scope.invitedbymemberid = "00";	
		
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
		//alert(link);
			$http.post(link).success(function(data, status, headers, config) {
				$scope.saveonetoone = data;
				$scope.spin = 0;					
				$window.alert("Data submitted successfully");
				//if(temp == "new"){
				//	$window.location.href = url + 'one_to_one';
				//} else {
					$window.location.href = url + 'member_meeting_list';
				//};					
			}).error(function(data, status, headers, config) {
				$scope.saveonetoone = "Response Fail";
			});
		}
	};	
	
	
//---------------------------------------------------------------------------------------------------
	
	
	$scope.getMemberMeetingsDetailById = function(memberid) {	
		var date = new Date(), y = date.getFullYear(), m = date.getMonth();
    	var fromdate = $filter('date')(new Date(y, m - 1, 1),'dd/MM/yyyy'); 
		var todate = $filter('date')(new Date(y, m , 0),'dd/MM/yyyy'); 	
		
		var link = baseUrl+'getMemberMeetingsById?memberid='+memberid+'&fromdate='+fromdate+'&todate='+todate;
		//alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getMemberMeetings = data;			
		}).error(function(data, status, headers, config) {
			$scope.getMemberMeetings = "Response Fail";
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
	
	
	//-----------------------------------------------------------------------------------------------------------------------------
	
	$scope.getmemberdetail = function(memberid) {
		var link = baseUrl+'getMemberEducationDetail?memberid='+memberid;
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getmembereducationdetail = data;
		}).error(function(data, status, headers, config) {
			$scope.getmembereducationdetail = "Response Fail";
		});
		
		var link = baseUrl + 'getCurrentRotaryYear';
		$http.get(link).success(function(data,status,headers,config) {
			$scope.currentrotaryyear = data;
			$scope.rotaryyearid = $scope.currentrotaryyear.rotaryYearId;
			$scope.rotaryyeartitle = $scope.currentrotaryyear.rotaryYearTitle;			
			
			var link = baseUrl+'getMemberCurrentCategoryId?memberid='+memberid+'&rotaryyearid='+$scope.rotaryyearid;			
			 
			$http.get(link).success(function(data, status, headers, config) {				
				$scope.membercurrentcategory = data;
				$scope.membercategoryname = $scope.membercurrentcategory.memberCategoryId;					
				var link = baseUrl+'getMemberDetailByMemberId?memberid='+memberid;			
		//alert(link);
				$http.get(link).success(function(data, status, headers, config) {
					$scope.getmember = data;					
					$scope.memberid = $scope.getmember.memberId;
					$scope.membershipId = $scope.getmember.membershipNumber;					
					$scope.oldmembershipId = $scope.getmember.oldMembershipNumber;
					$scope.memberclubname = $scope.getmember.clubId;
					$scope.membertypename = $scope.getmember.memberTypeId;
					$scope.businesscategoryid = $scope.getmember.businessCategoryId;
					$scope.tenureplan = $scope.getmember.tenurePlan;
										
					$scope.membertitle = $scope.getmember.memberTitleName;
					$scope.firstname = $scope.getmember.memberFirstName;					
					$scope.middlename = $scope.getmember.memberMiddleName;
					$scope.lastname = $scope.getmember.memberLastName;
					$scope.gender = $scope.getmember.memberGender;										
										
					$scope.bloodgroup = $scope.getmember.memberBloodGroup;
					$scope.$parent.aadharnumber = $scope.getmember.memberAadharNumber;
					$scope.$parent.countrynamecitizenship = $scope.getmember.memberCountryIdCitizenship;
					$scope.passportnumber = $scope.getmember.memberPassportNumber;
					$scope.pannumber = $scope.getmember.memberPanNumber;
					$scope.profilepicture = $scope.getmember.memberProfilePicture;
					$scope.email = $scope.getmember.memberEmail;
					$scope.email1 = $scope.getmember.memberEmail;					
					$scope.memberbarcode = $scope.getmember.memberBarcode;
					$scope.memberqrcode = $scope.getmember.memberQrcode;
					$scope.joiningdate = $scope.getmember.joiningDate;
					$scope.dateofbirth = $scope.getmember.memberDateOfBirth;
					$scope.anniversarydate = $scope.getmember.memberAnniversaryDate;
					$scope.fellowship_id = $scope.getmember.fellowship_id;
					$scope.businesskeywords = $scope.getmember.memberCompanyKeywords;
					$scope.aboutbusiness = $scope.getmember.memberCompanyDescription;
					$scope.email = $scope.getmember.memberEmail;
					$scope.mobile = $scope.getmember.memberMobileNumber;
					$scope.password=$scope.getmember.memberPassword;
					$scope.companyname=$scope.getmember.memberCompanyName
					//alert($Scope.password);
					/*document.getElementById("datepicker").value = $scope.getmember.joiningDate;*/
					document.getElementById("profiledob").value = $scope.getmember.memberDateOfBirth;
				//	document.getElementById("anniversarydob").value = $scope.getmember.memberAnniversaryDate;
				}).error(function(data, status, headers, config) {
					$scope.getmember = "Response Fail";
				});					
			}).error(function(data, status, headers, config) {
				$scope.membercategoryname = "Response Fail";
			});
		}).error(function(data,status,headers,config) {
			$scope.currentrotaryyear = "Responce Fail";
		});		
	}
	
	
	var link = baseUrl+'getAllBusinessCategories';
	$http.get(link).success(function(data, status, headers, config) {
		$scope.allbusinesscategories = data;			
	}).error(function(data, status, headers, config) {
		$scope.allbusinesscategories = "Response Fail";
	});
	
		
	$scope.editmemberprofile = function() {
	alert("mk");
		var valuex = document.getElementById("valuex").value;
		var valuey = document.getElementById("valuey").value;
		var valuew = document.getElementById("valuew").value;
		var valueh = document.getElementById("valueh").value;
		
		if(valuex == ''){
			valuex = 0;
		}
		if(valuey == ''){
			valuey = 0;
		}
		if(valuew == ''){
			valuew = 0;
		}
		if(valueh == ''){
			valueh = 0;
		}		
		
		
		var profilepicture = $scope.profilepicture;				
		
			var link = baseUrl +'editProfilePicture1?memberid='+$scope.memberid+'&profileimage='+profilepicture+'&valuex='+valuex+'&valuey='+valuey+'&valuew='+valuew+'&valueh='+valueh+'&firstname='+$scope.firstname+'&middlename='+$scope.middlename+'&lastname='+$scope.lastname +'&mobile='+$scope.mobile+'&email='+$scope.email+'&password='+$scope.password+'&businesscategoryid='+$scope.businesscategoryid+'&aboutBusiness='+$scope.aboutBusiness+'&businesskeywords='+$scope.businesskeywords;                    
		alert(link);	
			var formData = new FormData();
			formData.append("profilepicture",imgInp.files[0]);
			$http({method: 'POST', url: link, headers: {'Content-Type': undefined}, data: formData, transformRequest: function(data, headersGetterFunction) {
				return data;
			}
			}).success(function(data, status) {
				$scope.addspousedetail = data;
		//		$window.alert("Profile Picture Updated Successfully");
		//		$window.location.href = baseUrl+"manage_my_profile11";
			}).error(function(data, status, headers, config) {
				$scope.editspousedetail = "Response Fail";
			});
			
	}
	
	
	
});