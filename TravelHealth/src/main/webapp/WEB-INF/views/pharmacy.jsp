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
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
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
                        <li class="scroll"><a href="<%=request.getContextPath() %>#services">Services</a></li>
                        <li class="scroll"><a href="<%=request.getContextPath()%>/searchPage">Search</a></li>
                        <li class="scroll"><a href="<%=request.getContextPath() %>#about-us">About Us</a></li>
                        <li class="scroll"><a href="<%=request.getContextPath() %>#contact-area">Contact</a></li>
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
									<option value="Emergency">Emergency Hospital</option>
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
				      
				      var map;
				      var infowindow;
				      
				      /* initCurrentLocation(showPosition, showError); */
				      
				      //Initialize current location
				      /* function initCurrentLocation(showPosition, showError) {
				    	  navigator.geolocation.getCurrentPosition(showPosition, showError);
				      } */
				      
				      //show position
				      /* function showPosition() {
				    	  if (input == null || input == '' || input == undefined) {
				    		  lat = position.coords.latitude;
					    	  lng = position.coords.longitude;
				    		  var pDetail = '<p>';
				    		  pDetail += '<span>Cannot find any data, please input search condition again!</span><br/>';
				    		  pDetail += '</p>';
				    		  $('#list ul').append('<li>' + pDetail + '</li>');
				    	  } else {
				    		  lat = latitude;
				    		  lng = longitude;
				    		  initMap(lat, lng);
				    	  }
				      } */
				      
				      //show error
				      /* function showError(error) {
			            switch (error.code) {
			                case error.PERMISSION_DENIED:
			                    x.innerHTML = "User denied the request for Geolocation."
			                    break;
			                case error.POSITION_UNAVAILABLE:
			                    x.innerHTML = "Location information is unavailable."
			                    break;
			                case error.TIMEOUT:
			                    x.innerHTML = "The request to get user location timed out."
			                    break;
			                case error.UNKNOWN_ERROR:
			                    x.innerHTML = "An unknown error occurred."
			                    break;
			            }
			          } */

				      //Initialize map
				      function initMap() {
				        var latlng = {lat: latitude, lng: longitude};

				        map = new google.maps.Map(document.getElementById('map'), {
				          center: latlng,
				          zoom: 12,
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
				          radius: 5000,
				          types: ['pharmacy']
				        }, callback1);
				      }
				
				      function callback1(results, status) {
				        if (status === google.maps.places.PlacesServiceStatus.OK) {
				          for (var i = 0; i < results.length; i++) {
				            createMarker(results[i]);
				          }
				        }
				      }
				
				      //create marker
				      function createMarker(place) {
				    	
				    	//Output
				    	console.log(place);
				        var placeDetail = '<p>';
				        placeDetail += '<span><strong>' + place.name + '</strong></span><br/>';
				        placeDetail += '<span>Open Now: ' + place.opening_hours.open_now + '</span><br/>';
				        placeDetail += '<span>Address: ' + place.vicinity + '</span>';
				        placeDetail += '</p>';
				        $('#list ul').append('<li>' + placeDetail + '</li>');

				        var placeLoc = place.geometry.location;
				        var marker = new google.maps.Marker({
				            map: map,
				            position: place.geometry.location,
				            icon: 'http://maps.google.com/mapfiles/ms/icons/red-dot.png',
				        });
				
				        google.maps.event.addListener(marker, 'click', function() {
				            infowindow.setContent(place.name);
				            infowindow.open(map, this);
				        });
				      }
				    </script>
				    <div class="row">
						<div class="col-ml-12" style="padding-top:10px;">
	    					<div id="map" class="map" ></div>
	    				</div>
    				</div>
    				<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDtTvXm0F0AN7F4Q1OTZR1vcEATevSsYJc&libraries=places&callback=initMap" async defer></script>
    				<!-- #Add Google Map -->
					
					<!-- Result Area -->
					<div class="row col-sm-12">
					<div id="list" style="padding-top:10px;">
				        <ul>
				        
        				</ul>
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
        $('#content').DataTable({
        	stateSave: true,
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
			
			$("#medicalType").change(function(){
	    		if ($("#medicalType").val() == 'General Practitioner') {
		    		$("#language").show();
		    	} else {
		    		$("#language").hide();
		    	}	
	    	});
		})
	</script>
</body>
</html>