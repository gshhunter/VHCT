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
    
    <section id="body" class="container-fluid">

					<!-- Map -->
					<div class="row">
					<div class="col-ml-12">
    					<div id="map" class="map"></div>
    				</div>
				    </div>
					<script src="https://maps.googleapis.com/maps/api/js?output=embed&sensor=true" type="text/javascript"></script>
					
    				<script>
    				  //Get a search result JSON
  				  	  var jsonh = '${jsonh}';

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
				        	var hname = obj['hospital_name'];
				        	var myLatLng = {lat: lat, lng: lng};
				        	var marker = new google.maps.Marker({
					            position: myLatLng,
					            map: map,
					            icon: 'http://maps.google.com/mapfiles/ms/icons/red-dot.png',
					            title: hname
					          });
				        	
				        	//Content
				        	var content = "<b>Hospital:</b> " + hname + '</br>' + "<b>Address:</b> " + address + '</br>' +
				        	     "<a href='https://www.google.com.au/maps/dir//" + obj['latitude'] + "," + obj['longitude'] + "' target='_blank'>Public Transport Finder</a>"; 
				        	
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
				            navigator.geolocation.getCurrentPosition(
				                function(position) {
				            		var pos = {lat: position.coords.latitude, lng: position.coords.longitude};
									infocurrentlocation.setPosition(pos);
				            		infocurrentlocation.setContent('Location found.');
						            var curMarker = new google.maps.Marker({
						            	position: pos,
						            	map: map,
						            	icon: 'http://maps.google.com/mapfiles/ms/icons/arrow.png',
						            	tittle: 'Current Location'
						            });
				            
				          		}, 
				          		function() {
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
					<!-- #Map -->
					
					<!-- Result Area -->
					<div class="row col-sm-12">
						<div class="result-area" style="padding-top:10px;">
							<c:if test="${empty hospitals}">
								<p>There is no result yet!</p>
								<p>Please enter new search conditions.</p>
							</c:if>
							<c:if test="${not empty hospitals }">
							    <table id="content" class="table table-striped table-bordered" >
							    	<thead>
							    		<tr>
							    			<th>Hospital Name</th>
							    			<th>Address</th>
							    			<th>Phone Number</th>
							    			
							    		</tr>
							    	</thead>
							    	<tbody>
							    		<c:forEach items="${hospitals}" var="hospital">
								    		<tr>
								    			<td>${hospital['hospital_name']}</td>
								    			<td>${hospital.address} ${hospital.suburb} VIC ${hospital.postcode}</td>
								    			<c:if test="${not empty hospital.phoneno}">
								    				<td>${hospital.phoneno}</td>
								    			</c:if>
								    			<c:if test="${empty hospital.phoneno}">
								    				<td>n/a</td>
								    			</c:if>
								    		</tr>
							    		</c:forEach>
							    	</tbody>
							    </table>  
							</c:if>
						</div>
					</div>
					<!-- #Result-area -->
    </section>
    <!-- /#Search -->
    
    <!-- <footer id="footer" class="container-fluid bg-2">
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
    </footer> -->
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
			var distanceStr = '${distance}';
			
			if (type == null || type == undefined || type == '' || type == 'AH') {
				$("#medicalType").val('AH');
			} else {
				$("#medicalType").val(type);
			}
			
			if ($("#medicalType").val() == 'Emergency') {
				$("#distance").hide();
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