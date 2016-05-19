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
    <link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/prettyPhoto.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/hospital.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">
	<link id="preset" rel="stylesheet" type="text/css" href="<c:url value="/resources/css/presets/preset1.css" />" >
	<link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" />" rel="stylesheet">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="<c:url value="/resources/images/ico/new-favicon.png" />">
    <%-- <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png" />" >
    <link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png" />" > --%>
</head>

<body onLoad="initialize()">
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
                       	<li class="scroll"><a href="<%=request.getContextPath() %>#home">Home</a></li>
                       	<li class="scroll"><a href="<%=request.getContextPath()%>/ourteam">About Us</a></li>
                        <li class="scroll"><a href="<%=request.getContextPath()%>/searchPage">Search</a></li>
                        <li class="scroll"><a href="<%=request.getContextPath()%>/warning">Warnings</a></li>
						<li class="scroll"><a href="<%=request.getContextPath()%>/weather">Weather</a></li>
						<li class="scroll"><a href="<%=request.getContextPath()%>/transport">Transport Finder</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <!--/#header-->
    
    <div class="row" style="padding-top:85px;">
    <script>var directionDisplay, map;
        var directionsService = new google.maps.DirectionsService();
        var geocoder = new google.maps.Geocoder();
        function initialize() {
            // set the default center of the map
            var latlng = new google.maps.LatLng(-37.8140000, 144.9633200);
            // set route options (draggable means you can alter/drag the route in the map)
            var rendererOptions = { draggable: true };
            directionsDisplay = new google.maps.DirectionsRenderer(rendererOptions);
            // set the display options for the map
            var myOptions = {
                zoom: 14,
                center: latlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                mapTypeControl: false
            };
            // add the map to the map placeholder
            map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
            // bind the map to the directions
            directionsDisplay.setMap(map);
            // point the directions to the container for the direction details
            directionsDisplay.setPanel(document.getElementById("directionsPanel"));
            // start the geolocation API
            if (navigator.geolocation) {
                // when geolocation is available on your device, run this function
                navigator.geolocation.getCurrentPosition(foundYou, notFound);
            } else {
                // when no geolocation is available, alert this message
                alert('Geolocation not supported or not enabled.');
            }
        }
        function foundYou(position) {
            // convert the position returned by the geolocation API to a google coordinate object
            

            var service = new google.maps.places.PlacesService(map);
            var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
            // then try to reverse geocode the location to return a human-readable address
            geocoder.geocode({ 'latLng': latlng }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    // if the geolocation was recognized and an address was found
                    if (results[0]) {
                        // add a marker to the map on the geolocated point
                        marker = new google.maps.Marker({
                            position: latlng,
                            map: map
                        });
                        // compose a string with the address parts
                        var address = results[0].address_components[1].long_name + ' ' + results[0].address_components[0].long_name + ', ' + results[0].address_components[3].long_name
                        // set the located address to the link, show the link and add a click event handler
                        $('.autoLink span').html(address).parent().show().click(function () {
                            // onclick, set the geocoded address to the start-point formfield
                            $('#routeStart').val(address);
                            // call the calcRoute function to start calculating the route
                            calcRoute();
                        });
                    }
                } else {
                    // if the address couldn't be determined, alert and error with the status message
                    alert("Geocoder failed due to: " + status);
                }
            });
        }
        function calcRoute() {
            // get the travelmode, startpoint and via point from the form   
            var travelMode = $('input[name="travelMode"]:checked').val();
            var start = $("#routeStart").val();
            var end = $("#routeEnd").val();
            // compose a array with options for the directions/route request
            var request = {
                origin: start,
                destination: end,
                unitSystem: google.maps.UnitSystem.IMPERIAL,
                travelMode: google.maps.DirectionsTravelMode[travelMode]
            };
            // call the directions API
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    // directions returned by the API, clear the directions panel before adding new directions
                    $('#directionsPanel').empty();
                    // display the direction details in the container
                    directionsDisplay.setDirections(response);
                } else {
                    // alert an error message when the route could nog be calculated.
                    if (status == 'ZERO_RESULTS') {
                        alert('No route could be found between the origin and destination.');
                    } else if (status == 'UNKNOWN_ERROR') {
                        alert('A directions request could not be processed due to a server error. The request may succeed if you try again.');
                    } else if (status == 'REQUEST_DENIED') {
                        alert('This webpage is not allowed to use the directions service.');
                    } else if (status == 'OVER_QUERY_LIMIT') {
                        alert('The webpage has gone over the requests limit in too short a period of time.');
                    } else if (status == 'NOT_FOUND') {
                        alert('At least one of the origin, destination, or waypoints could not be geocoded.');
                    } else if (status == 'INVALID_REQUEST') {
                        alert('The DirectionsRequest provided was invalid.');
                    } else {
                        alert("There was an unknown error in your request. Requeststatus: nn" + status);
                    }
                }
            });
        }
    </script>
        <div class="col-md-10">
    <form action="#" onSubmit="calcRoute();return false;" id="routeForm">
  <label>
    From: <br />
   
      
      
       <input type="text" id="routeStart" value="Melbourne,victoria">
      <br />
          <a href="#" class="autoLink" style="display: none;">Use current location: <span>not found</span></a>
  </label>
        <label>
    To: <br />
    <input type="text" id="routeEnd" value="Victoria">
  </label>
  <label><input type="radio" name="travelMode" value="DRIVING" checked /> Driving</label>
  <label><input type="radio" name="travelMode" value="BICYCLING" /> Bicycling</label>
  <label><input type="radio" name="travelMode" value="TRANSIT" /> Public transport</label>
  <label><input type="radio" name="travelMode" value="WALKING" /> Walking</label>
  <input type="submit" value="Calculate route">
</form>
            </div>
    <div id="map_canvas" style="width:100%; height:300px"></div>
    <div id="directionsPanel">
  Enter a starting point and click "Calculate route".
        </div>
</div>
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
    
    
</body>
</html>