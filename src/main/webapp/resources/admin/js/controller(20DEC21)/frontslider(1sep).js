app.controller('SliderCtrl',function($scope, $http, $window, $filter, $location) {
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

	$scope.searchByCategory1 = function(){
		
		

		$window.location.href = baseUrl+'search_result?search='+$scope.search;					
		
	}
	$scope.fellowshipdata = function(fellowship_id){
		
		

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
	
	
	//var link = baseUrl+'getAllCountList';
	var link = baseUrl+'getFellowshipByCountFront';
	//alert(link);
	$http.get(link).success(function(data, status, headers, config) {
		$scope.AllCountList = data;			
	}).error(function(data, status, headers, config) {
		$scope.AllCountList = "Response Fail";
	});		
	
	$scope.pathname = $window.location.pathname; 	
	
	if($scope.pathname == "/Frontlogout"){
		
		$window.location.href = url+'';
	}
	
	// ------------------------ Top Meeting Count
	
	$scope.getTopMemberMeeting = function() {	
		var date = new Date(), y = date.getFullYear(), m = date.getMonth();
    	var fromdate = $filter('date')(new Date(y, m - 1, 1),'dd/MM/yyyy'); 
		var todate = $filter('date')(new Date(y, m , 0),'dd/MM/yyyy'); 
	
	//	var link = baseUrl+'getTopMemberMeeting?fromdate='+fromdate+'&todate='+todate;	
		var link = baseUrl+'getTopMemberMeetingByFellowship?fromdate='+fromdate+'&todate='+todate;	
	//	alert(link);
		$http.get(link).success(function(data, status, headers, config) {
			$scope.getTopmemberMeeting = data;			
		}).error(function(data, status, headers, config) {
			$scope.getTopmemberMeeting = "Response Fail";
		});
	}
	// ------------------------ getTopMemberBusiness
	$scope.getTopMemberBusiness = function() {	
		$scope.date = new Date(), $scope.y = $scope.date.getFullYear(), $scope.m = $scope.date.getMonth();
		$scope.fromdate = $filter('date')(new Date($scope.y, $scope.m - 1, 1),'dd/MM/yyyy'); 
		$scope.todate = $filter('date')(new Date($scope.y, $scope.m  , 0),'dd/MM/yyyy'); 
	
		const monthNames = ["January", "February", "March", "April", "May", "June",
			"July", "August", "September", "October", "November", "December"
			];
		$scope.m=monthNames[$scope.m-1];
		var link = baseUrl+'getTopMemberBusiness?fromdate='+$scope.fromdate+'&todate='+$scope.todate;			
	//	var link = baseUrl+'getTopMemberReferalByFellowship?fromdate='+$scope.fromdate+'&todate='+$scope.todate+'&fellowship_id=1';	
	//	alert(link);
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
	
		var link = baseUrl+'getTopMemberReferal?fromdate='+fromdate+'&todate='+todate;		
		//var link = baseUrl+'getTopMemberBusinessByFellowship?fromdate='+fromdate+'&todate='+todate+'&fellowship_id=1';	
		
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
				
				$scope.registerEvent = function(eventid){
					
					$scope.eventid= eventid;
				}
				
		$scope.redirectToNextPage = function(membertype, eid){
			if(membertype=="RMB District Member"){
				$window.location.href = url+'login_member?membertype='+membertype+'&eid='+eid;
			} else {
				//$window.location.href = url+'get_registered?membertype='+membertype+'&eid='+eid;
				$window.location.href = url+'registration?membertype='+membertype+'&eid='+eid;
			}
		}
		
		$scope.checkMemberLogin = function(eid,membertype) {
			var username = $scope.username;
			var password = $scope.password;
			var loggedin = $scope.loggedin;
			
			if(loggedin == true)
			{
				loggedin = "y";
			}
			else
			{
				loggedin = "n";
			}
			if (username == undefined || username == "") {
				$window.alert("Please enter username");
				document.getElementById("username").focus();
				return;
			} else if (password == undefined || password == "") {
				$window.alert("Please enter password");
				document.getElementById("password").focus();
				return;
			} else {
				var link = baseUrl + 'frontLogin?userName=' + username + '&password=' + password+'&loggedin='+loggedin;
				$http.post(link).success(function(data, status, headers,config) {
					if (data != "Successfully Login") {
						$window.alert("User Name or Password Incorrect...Try Again");
					} else {$window.location.href = url+'registered_members_directory?event_id='+eid;
					}
				}).error(function(data, status, headers,config) {
						$window.alert("Some thing wrong...Try again");
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

});