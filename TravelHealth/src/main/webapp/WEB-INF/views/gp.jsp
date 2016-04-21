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
    		<div class="features">
    			<div class="col-sm-7">
    			    <div class="search-area">
	    				<form id="form-search" class="form-horizontal" method="post" action="<%=request.getContextPath() %>/hospital/search" role="form">
							<div class="form-group">
								<div class="col-sm-7">
									<input type="text" id="input" name="input" class="form-control input-md" value="${input}" placeholder="Suburb/Postcode" required>
								</div>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-sm-3">
										<select class="form-control input-md" id="medicalType" name="medicalType">
											<option value="AH">Hospital</option>
											<option value="Emergency">Emergency Hospital</option>
											<option value="General Practitioner">General Practitioner</option>
											<!-- <option value="Pharmacy">Pharmacy</option> -->
										</select>
									</div>
									<div class="col-sm-3">
										<select class="form-control input-md" id="language" name="language" >
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
								</div>
							</div>
							<div class="form-group">
								<button class="btn btn-success btn-md" style="background-color:#2ecc71;" type="submit"><span class="glyphicon glyphicon-search"></span> Search</button>
							</div>
						</form>
					</div>
					
					<div class="result-area">
						<c:if test="${empty doctors}">
							<p>There is no result yet!</p>
							<p>Please enter new search conditions.</p>
						</c:if>
						<c:if test="${not empty doctors }">
						    <table id="content" class="table table-striped table-bordered" >
						    	<thead>
						    		<tr>
						    			<th>GP Name</th>
						    			<th>Suburb</th>
						    			<th>Postcode</th>
						    			<th>Language</th>
						    		</tr>
						    	</thead>
						    	<tbody>
						    		<c:forEach items="${doctors}" var="doctor">
							    		<tr>
							    			<td><a href="<%=request.getContextPath() %>/hospital/gp_detail/${doctor['gp_id']}" target="_blank">${doctor['gp_name']}</a></td>
							    			<td>${doctor['suburb']}</td>
							    			<td>${doctor['postcode']}</td>
					    	    			<td>${doctor['language']}</td>
							    		</tr>
						    		</c:forEach>
						    	</tbody>
						    </table>  
						</c:if>
						
					</div>
					<%-- <div class="transport">
						<p>Taxi? <a href="https://www.uber.com" target="_blank"><img src="<c:url value="/resources/images/uber.png" />" /></a> now!</p>
						
					
					<div class="row">
							<p>Journey Planner? <a href="https://ptv.vic.gov.au/journey#jpsearch%5Baction%5D=showPlanner" target="_blank"><img src="<c:url value="/resources/images/ptv_logo.png" />" /></a> now!</p></div>
					</div> --%>
    			</div>
    			<div class="col-sm-5">
    				<div id="map" class="map" style="height:590px;width:500px"></div>
    				<script src="https://maps.googleapis.com/maps/api/js?output=embed&sensor=true" type="text/javascript"></script>
    				<!-- Add Google Map -->
    				<script>
    				  //Get a search result JSON
  				  	  var jsonh = '${jsong}';

				      function initMap() {
				    	var myLatLng1 = {lat: -37.831, lng: 144.962};
				        var map = new google.maps.Map(document.getElementById('map'), {
				          center: myLatLng1,
				          zoom: 11,
				          mapTypeId: google.maps.MapTypeId.TERRAIN
				        });
				    	
				      	//Infomation Window
				        var infowindow = new google.maps.InfoWindow();
				        //transfer json to array
					    var objArrary = eval(jsonh);
				        //Marker array
				        var markers = [];
				        
				        for (var i = 0; i < objArrary.length; i++) {
				        	var obj = objArrary[i];
				        	//Must be number
				        	var lat = parseFloat(obj['latitude']);
				        	var lng = parseFloat(obj['longitude']);
				        	//Address
				        	var address = obj['address'];
				        	
				        	//Hospital name
				        	var hname = obj['gp_name'];
				        	var myLatLng = {lat: lat, lng: lng};
				        	var marker = new google.maps.Marker({
					            position: myLatLng,
					            map: map,
					            icon: 'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png',
					            title: hname
					          });
				        	
				        	//Content
				        	var content = "<b>Doctor:</b> " + hname + '</br>' + "<b>Address:</b> " + address + '</br>' +
				        	     "<a href='https://www.google.com.au/maps/dir//" + obj['latitude'] + "," + obj['longitude'] + "'>Public Transport Finder</a>"; 
				        	
				        	//add info window
				        	google.maps.event.addListener(marker, 'click', (function(marker, content, infowindow) {
			                    return function() {
			                    	infowindow.close();
			                        infowindow.setContent(content);
			                        infowindow.open(map, marker);
			                    }
			                })(marker, content, infowindow));
				        	
				        	markers.push(marker);
				        	
				        }
				        
				        //info window for current location
				        var infocurrentlocation = new google.maps.InfoWindow();
				        
				     	// Try HTML5 geolocation.
				        if (navigator.geolocation) {
				            navigator.geolocation.getCurrentPosition(function(position) {
				            var pos = {
				              lat: position.coords.latitude,
				              lng: position.coords.longitude
				            };

				            infocurrentlocation.setPosition(pos);
				            infocurrentlocation.setContent('Location found.');
				            
				            var curMarker = new google.maps.Marker({
				            	position: pos,
				            	map: map,
				            	icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
				            	tittle: 'Current Location'
				            });
				            /* map.setCenter(pos); */
				            
				            //info window add to click listener
				            /* var con = "My Location" */
				            /* google.maps.event.addListener(marker, 'click', (function(curMarker, con, infocurrentlocation) {
			                    return function() {
			                    	infocurrentlocation.setContent(con);
			                    	infocurrentlocation.open(map, curMarker);
			                    }
			                })(curMarker, con, infocurrentlocation)); */
				            
				          }, function() {
				            handleLocationError(true, infocurrentlocation, map.getCenter());
				          });
				        } else {
				          // Browser doesn't support Geolocation
				          handleLocationError(false, infocurrentlocation, map.getCenter());
				        }
				     	//
				        function handleLocationError(browserHasGeolocation, infocurrentlocation, pos) {
				        	infocurrentlocation.setPosition(pos);
				        	infocurrentlocation.setContent(browserHasGeolocation ?
					    	                        'Error: The Geolocation service failed.' :
					    	                        'Error: Your browser doesn\'t support geolocation.');
					    }
				     	
				        //Set bounds
				        var bounds = new google.maps.LatLngBounds();
				        
				        for (var i = 0; i < markers.length; i++) {
				         bounds.extend(markers[i].getPosition());
				        }
				        //map will fit
				        map.fitBounds(bounds);
				      }
				      
				      google.maps.event.addDomListener(window, 'load', initMap);
				      
				      
				    </script>
    			</div>
    		</div>
    	</div>
    </section>
    <!-- /#Search -->
    
    <footer id="footer" class="container-fluid bg-2">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                   <p>Copyright  @2016  <a target="_blank" href="http://mahara.infotech.monash.edu.au/mahara/view/view.php?id=2192">Daemon</a></p>
                </div>
                <div class="col-sm-6">
                    <p class="pull-right"> Designed by <a target="_blank" href="http://mahara.infotech.monash.edu.au/mahara/view/view.php?id=2192">Daemon</a></p>
                </div>
            </div>
        </div>
    </footer>
    <!--/#footer-->
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
			
			if (language == null || language == undefined || language == '' || language == 'DL') {
				$("#language").val('DL');
			} else {
				$("#language").val(language);
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