<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<link href="<c:url value="/resources/css/presets/preset1.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">
	<link id="preset" rel="stylesheet" type="text/css" href="<c:url value="/resources/css/presets/preset1.css" />" >
	<link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  	<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="<c:url value="/resources/images/ico/favicon.ico" />" >
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png" />" >
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png" />">
    <link rel="apple-touch-icon-precomposed" href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png" />" >
</head><!--/head-->

<body>
	
	<div class="preloader">
		<div class="preloder-wrap">
			<div class="preloder-inner">
			</div>
		</div>
	</div>
	<!--/.preloader-->

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

                    <a class="navbar-brand" href="/travel">
                    	<img src="<c:url value="/resources/images/presets/preset1/logo5.png" />" alt="logo">
                    </a>
                    
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="scroll active"><a href="#header">Home</a></li>
                        <li class="scroll"><a href="#services">Services</a></li>
                        <li class="scroll"><a href="#about-us">About Us</a></li> 
                        <li class="scroll"><a href="#our-team">Our Team</a></li>
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
					<video autoplay loop>
						<!-- <source src="https://a0.muscache.com/airbnb/static/London-P1-0.webm" type="video/webm">
						<source src="https://a0.muscache.com/airbnb/static/London-P1-1.mp4" type="video/mp4"> -->
						<!-- <source src="https://s3.amazonaws.com/fancyfootageclips/website/vid/2015-03-01-extreme.webm" type="video/webm">
						<source src="https://s3.amazonaws.com/fancyfootageclips/website/vid/2015-03-01-extreme.mp4" type="video/mp4"> -->
						<!-- <source src="http://videvo.net/videvo_files/converted/2013_04/videos/MelbourneEurekaTowerH264.mov15367.mp4" type="video/mp4"> -->
						<source src="http://www.maryjbz.com/mj/Site_video_-_shorter.webm" type="video/webm">
						<source src="http://www.maryjbz.com/mj/Site_video_-_shorter.mp4" type="video/mp4">
					</video>
					<div class="carousel-caption">
						<div>
							<h2 class="heading animated bounceInRight">Victoria Health Care Tourism</h2>
							<p class="animated bounceInLeft">We provide 3 million travelers with health support</p>
							  <a class="btn btn-default btn-transparent animated bounceInUp" href="#services">Get Started</a>
							
							<div class="search-basic">
							<form id="form-search" class="form-inline" method="post" action="<%=request.getContextPath() %>/hospital/search" role="form">
							  <div class="form-group">
								<input type="text" id="input" name="input" class="form-control input-lg" placeholder="Suburb/Zipcode" required> 
							  </div>
							  
							  <div class="form-group">
								<select class="form-control input-lg" id="medicalType" name="medicalType">
									<option value="MT" selected>Medical Type</option>
									<option value="Emergency">Emergency Hospital</option>
									<option value="General Practitioner">General Practitioner</option>
									<option value="Kid Emergency">Kid Emergency Hospital</option>
									<option value="Pharmacy">Pharmacy</option>
								</select>
							  </div>
							  
								<select class="form-control input-lg" id="language" name="language" disabled>
									<option value="LS" selected>Doctor Languages</option>
									<option value="Arabic">Arabic</option>
									<option value="Chinese">Chinese</option>
									<option value="English">English</option>
									<option value="Indian">Indian</option>
								</select>
							  
							  <button class="btn btn-success btn-lg" type="submit">
							  	<span class="glyphicon glyphicon-search"></span> Search
							  </button>	
								
							</form>
							</div>
							<!-- #Search Basic-->
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
									<img src="<c:url value="/resources/images/services/hospital_search.png" />" class="pull-left" alt="" />
									<div class="media-body">
										<h3 class="media-heading"><a href="#header">Hospital Search</a></h3>
										<p>Look for a hospital you need</p>
									</div>
								</div>	
							</div>
							<div class="col-sm-6">
								<div class="media service-media">
									<img src="<c:url value="/resources/images/services/travel_warning.png" />" class="pull-left" alt="" />
									<div class="media-body">
										<h3 class="media-heading"><a href="#">Travel Warning</a></h3>
										<p>Up-to-date events and news in Victoria</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media service-media">
									<img src="<c:url value="/resources/images/services/health_risk.png" />" class="pull-left" alt="" />
									<div class="media-body">
										<h3 class="media-heading"><a href="#">Health Risks</a></h3>
										<p>Provide health-related information, such as animal threats</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media service-media">
									<img src="<c:url value="/resources/images/services/health_transport.png" />" class="pull-left" alt="" />
									<div class="media-body">
										<h3 class="media-heading"><a href="#">Health Transportation</a></h3>
										<p>Show how to get to hospital/pharmacy/clinic</p>
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
							<div id="community-carousel" class="carousel slide" data-ride="carousel">
							  <!-- Indicators -->
							  <ul class="carousel-indicators">
								<li data-target="#community-carousel" data-slide-to="0" class="active"></li>
								<li data-target="#community-carousel" data-slide-to="1"></li>
								<li data-target="#community-carousel" data-slide-to="2"></li>
							  </ul>

							  <!-- Wrapper for slides -->
								<div class="carousel-inner">
									<div class="item active">
										<img src="<c:url value="/resources/images/about-us/hospital.jpg" />" />
									</div>
									<div class="item">
										<img src="<c:url value="/resources/images/about-us/visualisation.png" />" />
									</div>
									<div class="item">
										<img src="<c:url value="/resources/images/about-us/health_transport_big.jpg" />" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-5">
					<ul class="nav features-nav">
						<li class="active" data-target="#community-carousel" data-slide-to="0">
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
					  						<p>Provide map and visualized data of health care and safety in Victoria</p>
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
	
	<!-- <section id="promotion" class="parallax-section">
		<div class="container">
			<div class="promotion">
				<h2 class="title">Clean and modern template <br /><strong>for your business</strong></h2>
			</div>
		</div>
	</section> -->
	<!--/#promotion-->
	
	<section id="our-team">
		<div class="container">
			<h2 class="title">Our Team</h2>
			<div id="team-member-carousel" class="carousel slide scale" data-ride="carousel">
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<div class="col-xs-6 col-sm-3">
							<div class="team-member text-center">
								<img class="img-responsive" src="<c:url value="/resources/images/team/mary.jpg" />" alt="" />
								<h3>Maryam</h3>
								<h4>User Interface Designer</h4>
								<h4>Email: mjab7@student.monash.edu</h4>
								<ul class="nav nav-pills">
									<li><a href=""><i class="fa fa-facebook"></i></a></li>
									<li><a href=""><i class="fa fa-twitter"></i></a></li>
									<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3">	
							<div class="team-member text-center">
								<img class="img-responsive" src="<c:url value="/resources/images/team/shuhao.jpg" />" alt="" />
								<h3>Shuhao Guo</h3>
								<h4>Chief System Developer</h4>
								<h4>Email: sguo17@student.monash.edu</h4>
								<ul class="nav nav-pills">
									<li><a href=""><i class="fa fa-facebook"></i></a></li>
									<li><a href=""><i class="fa fa-twitter"></i></a></li>
									<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3">
							<div class="team-member text-center">
								<img class="img-responsive" src="<c:url value="/resources/images/team/pradeep1.jpg" />" alt="" />
								<h3>Pradeep</h3>
								<h4>Database Architect</h4>
								<h4>Email: pmai5@student.monash.edu</h4>
								<ul class="nav nav-pills">
									<li><a href=""><i class="fa fa-facebook"></i></a></li>
									<li><a href=""><i class="fa fa-twitter"></i></a></li>
									<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								</ul>
							</div>
						</div>
						<div class="col-xs-6 col-sm-3">
							<div class="team-member text-center">
								<img class="img-responsive" src="<c:url value="/resources/images/team/yadhu1-1.jpg" />" alt="" />
								<h3>Yadhu</h3>
								<h4>Project Manager</h4>
								<h4>Email: yrav3@student.monash.edu</h4>
								<ul class="nav nav-pills">
									<li><a href=""><i class="fa fa-facebook"></i></a></li>
									<li><a href=""><i class="fa fa-twitter"></i></a></li>
									<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								</ul>
							</div>
						</div>						
					</div>
					
				</div>				  
			</div>
		</div>
	</section>
	<!--/#our-team-->

    <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                   <p>Copyright @ 2016<a target="_blank" href="http://mahara.infotech.monash.edu.au/mahara/view/view.php?id=2192"> Daemon </a></p>
                </div>
                <div class="col-sm-6">
                    <p class="pull-right"> Designed by <a target="_blank" href="http://mahara.infotech.monash.edu.au/mahara/view/view.php?id=2192">Daemon</a></p>
                </div>
            </div>
        </div>
    </footer>
    <!--/#footer-->

  
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
  	<%-- <script type="text/javascript" src="<c:url value="/resources/js/gmaps.js" />"></script> --%>
	<script type="text/javascript" src="<c:url value="/resources/js/smoothscroll.js" />"></script>
    <%-- <script type="text/javascript" src="<c:url value="/resources/js/jquery.isotope.min.js"/>"></script> --%>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.prettyPhoto.js" />"></script>
    <%-- <script type="text/javascript" src="<c:url value="/resources/js/jquery.parallax.js" />"></script> --%>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.ba-dotimeout.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/main.js" />"></script>  
</body>
</html>