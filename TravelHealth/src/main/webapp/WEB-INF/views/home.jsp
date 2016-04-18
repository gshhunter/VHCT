<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="The Travel Health website in Victoria">
<meta name="author" content="Shuhao Guo">
<title>Victoria Health Care Tourism</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/prettyPhoto.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">
<link id="preset" rel="stylesheet" type="text/css" href="<c:url value="/resources/css/presets/preset1.css" />">

<!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->

<link rel="shortcut icon" href="<c:url value="/resources/images/ico/new-favicon.png" />">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png" />">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png" />">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png" />">
<link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png" />">

</head>
<!--/head-->

<body>

	<div class="preloader">
		<div class="preloder-wrap">
			<div class="preloder-inner"></div>
		</div>
	</div>
	<!--/.preloader-->

	<header id="header">
		<div class="navbar navbar-inverse navbar-fixed-top" role="banner">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/travel"> 
					<img src="<c:url value="/resources/images/logo.png" />" alt="logo">
					</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="scroll active"><a href="#header">Home</a></li>
						<li class="scroll"><a href="#services">Services</a></li>
						<li class="scroll"><a href="#about-us">About Us</a></li>
						<li class="scroll"><a href="#contact-area">Contact</a></li>
						<li class="scroll"><a href="<%=request.getContextPath()%>/ourteam" target="_blank">Our Team</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<!--/#header-->

	<section id="home">
		<div id="home-carousel" class="carousel slide" data-interval="false">

			<div class="carousel-inner">

				<div class="item active">
					<!-- Videos -->
				    <video autoplay loop>
						<source src="http://www.maryjbz.com/mj/Site_video_-_shorter.webm" type="video/webm">
						<source src="http://www.maryjbz.com/mj/Site_video_-_shorter.mp4" type="video/mp4">
					</video>
				    
				    <!-- Slide Pictures -->
					<%-- <div class="fadein">
						<img src="<c:url value="/resources/images/slide1.jpg" />" /> 
						<img src="<c:url value="/resources/images/slide2.jpg" />" /> 
						<img src="<c:url value="/resources/images/slide3.jpg" />" />
					</div>
					<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
					<script type="text/javascript">
						$(function() {
							$('.fadein img:gt(0)').hide();

							setInterval(function() {
								$('.fadein :first-child').fadeOut().next('img')
										.fadeIn().end().appendTo('.fadein');
							}, 4000); // 4 seconds
						});
					</script> --%>

					<div class="carousel-caption">
						<div>
							<h2 class="heading animated bounceInRight">Victoria Health Care Tourism</h2>
							<p class="animated bounceInLeft">We provide 3 million travelers with health support</p>
							<a class="btn btn-default btn-transparent animated bounceInUp" href="#services">Get Started</a>

							<div class="search-basic">
								<form id="form-search" class="form-inline" method="post" action="<%=request.getContextPath()%>/hospital/search" role="form">

									<input type="text" id="input" name="input" class="form-control input-lg" placeholder="Suburb/Postcode" required>

									<select class="form-control input-lg" id="medicalType" name="medicalType">
										<option value="AH" selected>All Hospitals (default)</option>
										<option value="Emergency">Emergency Hospital</option>
										<option value="General Practitioner">General Practitioner</option>
										<!-- <option value="Pharmacy">Pharmacy</option> -->
									</select>
									
									<select class="form-control input-lg" id="language" name="language" style="display:none;">
										<option value="LS" selected>Doctor Languages</option>
										<option value="Arabic">Arabic</option>
										<option value="Chinese">Chinese</option>
										<option value="English">English</option>
										<option value="Indian">Indian</option>
									</select>
									
									<button class="btn btn-success btn-lg" type="submit" style="background-color:#2ecc71;">
										<span class="glyphicon glyphicon-search"></span> Search
									</button>

								</form>
							</div>
							<!-- #Search Basic-->
            			 	
							<div class="movedown">
								<a href="#services" title="To Down">
	                                <span class="glyphicon glyphicon-chevron-down" style="font-size:1.5em;color:#2ecc71;"></span>
	                            </a>
                            </div>
                            <!-- Move down button -->
                            
                            
            			 	
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#home-->

	<section id="services" class="parallax-section">
		<h2 class="title">Services</h2>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="service-items">
						<div class="services row">
							<div class="col-sm-6">
								<div class="media service-media">
									<img
										src="<c:url value="/resources/images/services/hospital_search.png" />"
										class="pull-left" alt="" />
									<div class="media-body">
										<h3 class="media-heading">
											<a>Hospital Search</a>
										</h3>
										<p>Let's you find hospitals near you</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media service-media">
									<img
										src="<c:url value="/resources/images/services/weather-warning.png" />"
										class="pull-left" alt="" />
									<div class="media-body">
										<h3 class="media-heading">
											<a>Weather Warning</a>
										</h3>
										<p>Receive live updates and warnings on local weather</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media service-media">
									<img
										src="<c:url value="/resources/images/services/travel_warning.png" />"
										class="pull-left" alt="" />
									<div class="media-body">
										<h3 class="media-heading">
											<a>Health Risks</a>
										</h3>
										<p>Provide health-related risks around Victoria</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media service-media">
									<img
										src="<c:url value="/resources/images/services/transport_finder.png" />"
										class="pull-left" alt="" />
									<div class="media-body">
										<h3 class="media-heading">
											<a>Transportation Finder</a>
										</h3>
										<p>Easy integration of journey planner</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/#service-->

	<section id="about-us" class="container-fluid">
		<div class="row">
			<div class="features">
				<div class="col-sm-7">
					<div class="tab-content">
						<div class="tab-pane active" id="creative">
							<div id="community-carousel" class="carousel slide"
								data-ride="carousel">
								<!-- Indicators -->
								<ul class="carousel-indicators">
									<li data-target="#community-carousel" data-slide-to="0"
										class="active"></li>
									<li data-target="#community-carousel" data-slide-to="1"></li>
									<li data-target="#community-carousel" data-slide-to="2"></li>
								</ul>

								<!-- Wrapper for slides -->
								<div class="carousel-inner">
									<div class="item active">
										<img
											src="<c:url value="/resources/images/about-us/about-us1.jpg" />" />
									</div>
									<div class="item">
										<img
											src="<c:url value="/resources/images/about-us/about-us3.jpg" />" />
									</div>
									<div class="item">
										<img
											src="<c:url value="/resources/images/about-us/about-us2.jpg" />" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<ul class="nav features-nav">
						<li class="active" data-target="#community-carousel"
							data-slide-to="0">
							<div class="vertical-middle">
								<div>
									<div class="media">
										<div class="pull-left">
											<i class="fa fa-magic media-object"></i>
										</div>
										<div class="media-body media-content">
											<h3 class="media-heading">Connect to hospitals</h3>
											<p>Help travelers look for nearby hospitals in Victoria</p>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li data-target="#community-carousel" data-slide-to="1">
							<div class="vertical-middle">
								<div>
									<div class="media">
										<div class="pull-left">
											<i class="fa fa-users media-object"></i>
										</div>
										<div class="media-body media-content">
											<h3 class="media-heading">Visualize health data</h3>
											<p>Provide map and visualized data of health care and
												safety in Victoria</p>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li data-target="#community-carousel" data-slide-to="2">
							<div class="vertical-middle">
								<div>
									<div class="media">
										<div class="pull-left">
											<i class="fa fa-comments media-object"></i>
										</div>
										<div class="media-body media-content">
											<h3 class="media-heading">Connect to health</h3>
											<p>Help travelers select a transport way to get health</p>
										</div>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!--/#about-us-->

	<section id="contact-area" class="clearfix">
	    <div id="contact">
	    	<!-- <div class="status alert alert-success" style="display: none"></div> -->
	    	<form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="sendemail.php">
	            <div class="form-group">
	                <input type="text" name="name" class="form-control" required placeholder="You Name">
	            </div>
	            <div class="form-group">
	                <input type="email" name="email" class="form-control" required placeholder="Email Address">
	            </div>
	            <div class="form-group">
	                <input type="text" name="subject" class="form-control" required placeholder="Subject">
	            </div>
	            <div class="form-group">
	                <textarea name="message" id="message" required class="form-control" rows="8" placeholder="Message"></textarea>
	            </div>                        
	            <div class="form-group">
	                <button type="submit" class="btn btn-primary">Send</button>
	            </div>
	        </form>
	        <!-- <div class="social-icons">
	            <a href=""><i class="fa fa-facebook"></i></a>
	            <a href=""><i class="fa fa-twitter"></i></a>
	            <a href=""><i class="fa fa-pinterest"></i></a>
	            <a href=""><i class="fa fa-dribbble"></i></a>
	            <a href=""><i class="fa fa-linkedin"></i></a>
	            <a href=""><i class="fa fa-google-plus"></i></a>
	            <a href=""><i class="fa  fa-flickr"></i></a>
	        </div> -->
	    </div>
	    <div id="contact-info">
	        <div class="row">
	            <div class="col-sm-8">
	                <p>Contact us and we'll get back to you within 24 hours.</p>
	                <p> </p>
      				<p><span class="glyphicon glyphicon-map-marker"></span> Melbourne, Australia</p>
      				<p><span class="glyphicon glyphicon-phone"></span> +61 01234567</p>
      				<p><span class="glyphicon glyphicon-envelope"></span> xxx@student.monash.edu</p>
	            </div>
	        </div>
	    </div> 		
	    <!-- <div id="gmap-wrap">
 			<div class="infowindow">
 				<h3>Miami Metro</h3>
 				<address>
 					<strong>1 Zoo Bouladk</strong><br />Old Bond Street<br />London, Uk
 				</address>
 			</div>
    	</div> -->
     </section>	
    <!--/#contact-area-->

	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<p>
						Copyright @ 2016<a target="_blank"
							href="http://mahara.infotech.monash.edu.au/mahara/view/view.php?t=5VCF3Qntx4EI76NW12lj">
							Daemon </a>
					</p>
				</div>
				<div class="col-sm-6">
					<p class="pull-right">
						Designed by <a target="_blank"
							href="http://mahara.infotech.monash.edu.au/mahara/view/view.php?t=5VCF3Qntx4EI76NW12lj">Daemon</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!--/#footer-->


	<script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/smoothscroll.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.prettyPhoto.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.ba-dotimeout.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.parallax.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/main.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/gmaps.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/html5shiv.js" />"></script>
	
</body>
</html>