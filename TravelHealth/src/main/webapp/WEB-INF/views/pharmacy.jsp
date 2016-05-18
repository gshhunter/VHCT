<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Shuhao Guo">
    <title>Victoria Health Care Tourism</title>
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
    <link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/prettyPhoto.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/search-page.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/hospital.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">
	<link id="preset" rel="stylesheet" type="text/css" href="<c:url value="/resources/css/presets/preset1.css" />" >
	<link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" />" rel="stylesheet">
    <!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="<c:url value="/resources/images/ico/new-favicon.png" />">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png" />" >
    <link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png" />" >
    <style>
    	#body 
    </style>
</head><!--/head-->

<body>
  <div class="container">
	<header id="header">      
        <div class="navbar navbar-inverse navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="<%=request.getContextPath()%>">
                    	<img src="<c:url value="/resources/images/logo.png" />" alt="logo">
                    </a>
                    
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                       	<li class="scroll"><a href="<%=request.getContextPath() %>">Home</a></li>
                       	<li class="scroll"><a href="<%=request.getContextPath()%>/ourteam">About Us</a></li>
						<!-- <li class="scroll"><a href="#services">Services</a></li>
						<li class="scroll"><a href="#contact-area">Contact</a></li> -->
						<li class="scroll"><a href="<%=request.getContextPath()%>/searchPage">Search</a></li>
                    </ul>
                </div>
            </div>
        </div>
        
    </header>
    <!--/#header-->
    
    <section id="body" class="container-fluid">
    	<div class="row">
    		<div class="col-sm-12" style="width:100%;">
    			    <!-- Search Area -->
    			    <div class="search-area">
	    				<form id="form-search" class="form-inline" method="post" action="<%=request.getContextPath() %>/hospital/search" role="form">
							<div class="form-group">
							  
								<input type="text" id="input" name="input" class="form-control input-md" value="${input}" placeholder="Suburb/Postcode" required>
							  
							</div>
							<div class="form-group">
								<select class="form-control" id="medicalType" name="medicalType">
									<option value="AH">Hospital</option>
									<option value="General Practitioner">General Practitioner</option>
									<option value="Pharmacy">Pharmacy</option>
								</select>
							</div>
							<div class="form-group">
								<select class="form-control" id="language" name="language" >
									<option value="DL" selected>Doctor Languages</option>
									<option value="Arabic">Arabic</option>
									<option value="Chinese">Chinese</option>
									<option value="French">French</option>
									<option value="German">German</option>
									<option value="Greek">Greek</option>
									<option value="Hindi">Hindi</option>
									<option value="Indonesian">Indonesian</option>
									<option value="Italian">Italian</option>
									<option value="Malay">Malay</option>
									<option value="Persian">Persian</option>
									<option value="Russian">Russian</option>
									<option value="Spanish">Spanish</option>
									<option value="Vietnamese">Vietnamese</option>
								</select>
							</div>
							<div class="form-group">
								<select class="form-control" id="distance" name="distance">
									<!-- <option value="5000" selected>5KM</option> -->
									<option value="10000" selected>10KM</option>
									<option value="15000">15KM</option>
									<option value="20000">20KM</option>
									<option value="25000">25KM</option>
								</select>
							</div>
							<div class="form-group">
								<button class="btn btn-success btn-md" style="background-color:#2ecc71;" type="submit"><span class="glyphicon glyphicon-search"></span> Search</button>
							</div>
						</form>
					</div>
					</div>
					</div>
					<!-- #Search-area -->
					
					<!-- Map -->
    				<script>
				      // This example requires the Places library. Include the libraries=places
				      // parameter when you first load the API. For example:
				      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
				
				      var input = '${input}';
				      var type = '${type}';
				      var latitude = parseFloat('${latitude}');
				      var longitude = parseFloat('${longitude}');
				      var distance = '${distance}';
				      var dt;
				      if (distance == null || distance == '' || distance == undefined) {
				    	  dt = 10000;  
				      } else {
				    	  dt = parseInt('${distance}');
				      }
				      console.log("Distance: " + dt);
				      
				      var map;
				      var infowindow;
				      
				      //Initialize map
				      function initMap() {
				        var latlng = {lat: latitude, lng: longitude};

				        map = new google.maps.Map(document.getElementById('map'), {
				          center: latlng,
				          zoom: 10,
				          mapTypeId: google.maps.MapTypeId.TERRAIN
				        });
				
				        //Create a marker for current location
				        var marker = new google.maps.Marker({
				        	position: latlng,
				        	map: map,
				        	icon: 'http://maps.google.com/mapfiles/ms/icons/arrow.png',
				        	tittle: 'You are here!'
				        });
				        
				        infowindow = new google.maps.InfoWindow();
				        
				        var service = new google.maps.places.PlacesService(map);
				        service.nearbySearch({
				          location: latlng,
				          radius: dt,
				          types: ['pharmacy']
				        }, processResults);
				      }
				
				      function processResults(results, status, pagination) {
				        if (status === google.maps.places.PlacesServiceStatus.OK) {
				          
				            createMarkers(results);
				        	
				            if (pagination.hasNextPage) {
				            	var moreButton = document.getElementById('more');
				            	moreButton.disabled = false;
				            	moreButton.addEventListener('click', function() {
				            		moreButton.disabled = true;
				            		pagination.nextPage();
				            	});
				            }
				        }
				      }
				
				      //create markers
				      function createMarkers(places) {
				    	var placesList = document.getElementById('places');
				    	for (var i = 0, place; place = places[i]; i++) {
				    	 	var serv = new google.maps.places.PlacesService(map);
				    	 	var request = {placeId: place.place_id};
				    	 	//Get details
				    	 	serv.getDetails(request, callback1);
				    	 	function callback1(plc, stat){
				    	 		if (stat == google.maps.places.PlacesServiceStatus.OK) {
							    	var color = 'red';
								    var isopen = 'closed';
								    if (plc.opening_hours.open_now == true) {
								        color = 'green-dot'
								        isopen = 'open now';
								    }
							    	  
							    	//Output
							    	console.log(plc);
							    	var periods = '';
							    	var myDate = new Date();
							    	
							    	//Tansfer 0-6:Sunday-Saturday -> 0-6:Monday-Sunday
							    	if (myDate.getDay() - 1 >= 0) {
							    		var weekday = myDate.getDay() - 1;
							    	} else {
							    		var weekday = 6;	
							    	}
							    	
							    	for (var j = 0; j < plc.opening_hours.periods.length; j++) {
							    		if (weekday === j && plc.opening_hours.open_now == true) {
							    			periods += "<span style='color:green;'>" + plc.opening_hours.weekday_text[j] + "</span><br/>";
							    		} else if (weekday === j && plc.opening_hours.open_now == false) {
							    			periods += "<span style='color:red;'>" + plc.opening_hours.weekday_text[j] + "</span><br/>";
							    		} else {
							    			periods += "<span>" + plc.opening_hours.weekday_text[j] + "</span><br/>";
							    		}
							    	}
							        var placeDetail = '';
							        placeDetail += '<td>' + plc.name + '</td><br/>';
							        placeDetail += '<td>' + plc.formatted_address + '</td><br/>';
							        placeDetail += '<td>' + plc.formatted_phone_number + '</td><br/>';
							        placeDetail += '<td>' + periods + '</td>';
							        $('#content tbody').append('<tr>' + placeDetail + '</tr>');
							        
							        //Marker method
							        var marker = new google.maps.Marker({
							            map: map,
							            position: plc.geometry.location,
							            icon: 'http://maps.google.com/mapfiles/ms/icons/' + color + '.png',
							        });
							
							        var content = "<b>Pharmacy:</b> " + plc.name + ' (' + isopen +')' + '</br>' + "<b>Address:</b> " + plc.vicinity + '</br>' +
					        	     "<a href='https://www.google.com.au/maps/dir//" + plc.geometry.location.lat() + "," + plc.geometry.location.lng() + "' target='_blank'>Public Transport Finder</a>";
							        
							        google.maps.event.addListener(marker, 'click', function() {
							            infowindow.setContent(content);
							            infowindow.open(map, this);
							        });
				    	 		}
				    	 	}
				      	}
				      }
				    </script>
				    <div class="row">
						<div class="col-ml-12" style="padding-top:10px;">
	    					<div id="map" class="map" ></div>
	    				</div>
    				</div>
    				<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDtTvXm0F0AN7F4Q1OTZR1vcEATevSsYJc&libraries=places&callback=initMap" async defer></script>
    				<!-- #Add Google Map -->
    				
    				<!-- Icon Description -->
					<div class="row" style="padding-top:10px;">
						<img alt="" src="http://maps.google.com/mapfiles/ms/icons/green-dot.png">: Opening |  
						<img alt="" src="http://maps.google.com/mapfiles/ms/icons/red.png">: Closed | 
						<img alt="" src="http://maps.google.com/mapfiles/ms/icons/arrow.png">: Search Location
					</div>
					<!-- #Icon Description -->
					
					<!-- Result Area -->
					<div class="row col-sm-12">
					<div id="list" class="table-responsive" style="padding-top:10px;">
				        <table id="content" class="table table-hover table-bordered" >
				        	<thead>
				        		<tr>
				        			<th>Pharmacy Name</th>
				        			<th>Address</th>
				        			<th>Phone Number</th>
				        			<th>Opening Hours</th>
				        		</tr>
				        	</thead>
				        	<tbody>
				        		
				        	</tbody>
				        </table>
				        <div style="right:0px;">
				        	<input type="button" id="more" value="More Results"/>
				        </div>
    				</div>
					</div>
					<!-- #Result Area -->

    </section>
    <!-- /#Search -->
   
  	</div>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />" ></script>
    <%-- <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />" ></script> --%>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
 	
  	<%-- <script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.86080.js" />" ></script> --%>
	<script type="text/javascript" src="<c:url value="/resources/js/smoothscroll.js" />" ></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.isotope.min.js" />" ></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.prettyPhoto.js" />" ></script>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.parallax.js" />" ></script>
    <%-- <script type="text/javascript" src="<c:url value="/resources/js/main.js" />" ></script> --%>  
    <%-- <script type="text/javascript" src="<c:url value="/resources/js/switcher.js" />" ></script> --%>
   	<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.11/js/dataTables.bootstrap.min.js"></script>
    <!-- Data Table jQuery -->
    <script type="text/javascript">
    $(document).ready(function() {
        $('#').DataTable({

        	scrollY: '40vh',
        	scrollCollapse: true,
        	"lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, 'All']],
        	"oLanguage": {
        		"sSearch": "Filter: "	
        	}
        });
    } );
    </script>
    <script type="text/javascript">
		$(document).ready(function(){
			var input = '${input}';
			var type = '${type}';
			var language = '${language}';
			var distanceStr = '${distance}';
			
			if (type == null || type == undefined || type == '' || type == 'AH') {
				$("#medicalType").val('AH');
			} else {
				$("#medicalType").val(type);
			}
			
			if ($("#medicalType").val() == 'General Practitioner') {
				$("#language").show();
			} else {
				$("#language").hide();
			}
			
			if (distanceStr == null || distanceStr == undefined || distanceStr == '') {
				$("#distance").val('10000');
			} else {
				$("#distance").val(distanceStr);
			}
			
			$("#medicalType").change(function(){
				
				if ($("#medicalType").val() == 'AH' || $("#medicalType").val() == 'Pharmacy') {
					$("#distance").show();
					$("#language").hide();
				} else if ($("#medicalType").val() == 'General Practitioner') {
		    		$("#language").show();
		    		$("#distance").hide();
		    	} else {
		    		$("#language").hide();
		    		$("#distance").hide();
		    	}
	    	});
		})
	</script>
</body>
</html>