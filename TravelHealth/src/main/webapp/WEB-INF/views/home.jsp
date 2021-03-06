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
<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/prettyPhoto.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">
<link id="preset" rel="stylesheet" type="text/css" href="<c:url value="/resources/css/presets/preset1.css" />">
<link href="<c:url value="/resources/css/pop-up.css" />" rel="stylesheet">
<style type="text/css">iframe.goog-te-banner-frame{ display: none !important;}</style>
<style type="text/css">body {position: static !important; top:0px !important;}</style>

<!--[if lt IE 9]
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
[endif]-->
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
			
			<div id="header-one" class="container">
				
				<div class="navbar-header">
					
					<!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button> -->
					<a class="navbar-brand navbar-left" href="<%=request.getContextPath()%>"> 
						<img src="<c:url value="/resources/images/logo.png" />" alt="logo">
					</a>
				</div>
				
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="scroll"><a href="#home">Home</a></li>
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

	<section id="home" class="container-fluid">
		<div id="home-carousel" class="carousel slide" data-interval="false">

			<div class="carousel-inner">

				<div class="item active">
					<!-- Videos -->
				    <video autoplay loop>
						<source src="<c:url value="/resources/Site_video_3.webm" />" type="video/webm">
						<source src="http://www.maryjbz.com/mj/Site_videomp4.mp4" type="video/mp4">
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
							<h2 class="heading animated bounceInRight">Victorian Tourist Health Assistant</h2>
							<p class="animated bounceInLeft">We provide 3 million travellers with health support</p>
							<a class="btn btn-default btn-transparent animated bounceInUp" href="#services">Get Started</a>

							<div class="search-basic">
								<form id="form-search" class="form-inline" method="post" action="<%=request.getContextPath()%>/hospital/search" role="form">

									<input type="text" id="input" name="input" class="form-control input-lg" placeholder="Suburb/Postcode" required>

									<select class="form-control input-lg" id="medicalType" name="medicalType">
										<option value="AH" selected>Hospital (default)</option>
										<option value="General Practitioner">General Practitioner</option>
										<option value="Pharmacy">Pharmacy</option>
									</select>
									
									<select class="form-control input-lg" id="language" name="language">
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
									
									<button class="btn btn-success btn-lg" type="submit" style="background-color:#2ecc71;">
										<span class="glyphicon glyphicon-search" aria-hidden="true"></span> Search
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
									<a href="<%=request.getContextPath()%>/searchPage">
										<img src="<c:url value="/resources/images/services/hospital_search.png" />" class="pull-left" alt="" />
									</a>
									<div class="media-body">
										<h3 class="media-heading">
											<a href="<%=request.getContextPath()%>/searchPage">Health Center Search</a>
										</h3>
										<p>Search hospitals/GPs/Pharmacy</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media service-media">
									<a href="<%=request.getContextPath()%>/weather">
										<img src="<c:url value="/resources/images/services/weather-warning.png" />" class="pull-left" alt="" />
									</a>
									<div class="media-body">
										<h3 class="media-heading">
											<a href="<%=request.getContextPath()%>/weather">Weather Forecast</a>
										</h3>
										<p>Receive live updates on local weather</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media service-media">
									<a href="<%=request.getContextPath()%>/warning">
										<img src="<c:url value="/resources/images/services/travel_warning.png" />" class="pull-left" alt="" />
									</a>
									<div class="media-body">
										<h3 class="media-heading">
											<a href="<%=request.getContextPath()%>/warning">Travel Warnings</a>
										</h3>
										<p>Provide incidents and warnings for Victoria</p>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="media service-media">
									<a href="<%=request.getContextPath()%>/transport">
										<img src="<c:url value="/resources/images/services/transport_finder.png" />" class="pull-left" alt="" />
									</a>
									<div class="media-body">
										<h3 class="media-heading">
											<a href="<%=request.getContextPath()%>/transport">Transport Finder</a>
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

	<section id="contact-area" class="clearfix">
	    <div id="contact">
	    	
	    	<form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="MAILTO:yrav3@student.monash.edu">
	            <div class="form-group">
	                <input type="text" id="ssName" name="name" class="form-control" required placeholder="Your Name">
	            </div>
	            <div class="form-group">
	                <input type="email" id="ssEmail" name="email" class="form-control" required placeholder="Email Address">
	            </div>
	            <div class="form-group">
	                <input type="text" id="ssSubject" name="subject" class="form-control" required placeholder="Subject">
	            </div>
	            <div class="form-group">
	                <textarea name="message" id="ssMessage" required class="form-control" rows="8" placeholder="Message"></textarea>
	            </div>                        
	            <div class="form-group">
	                <input type="submit" id="ssSubmit" class="btn btn-primary" value="Send" onclick="myFunction()"/>
	                <input type="button" id="ssReset" class="btn btn-primary" value="Reset" onclick="clearForm()"/>
	                <script>
	                	function myFunction() {
	                		var name = document.getElementById("ssName").value;
	                		var email = document.getElementById("ssEmail").value;
	                		var subject = document.getElementById("ssSubject").value;
	                		var message = document.getElementById("ssMessage").value;
	                		console.log(name);
	                		if (name != "" && email != "" && subject != "" && message != "") {
	                			alert("Message has been sent! We will contact with you in 24 hours.");
	                			document.getElementById("ssName").value = "";
	                			document.getElementById("ssEmail").value = "";
	                			document.getElementById("ssSubject").value = "";
	                			document.getElementById("ssMessage").value = "";
	                		}
	                		
	                	}
	                	
	                	function clearForm() {
	                		document.getElementById("ssName").value = "";
                			document.getElementById("ssEmail").value = "";
                			document.getElementById("ssSubject").value = "";
                			document.getElementById("ssMessage").value = "";
	                	}
	                </script>
	            </div>
	        </form>
	       
	    </div>
	    <div id="contact-info">
	        <div class="row">
	            <div class="col-sm-7">
	                <p>Contact us and we'll reply to you within 24 hours.</p>
	                <p> </p>
      				<p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Melbourne, Australia</p>
      				<p><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <a href="MAILTO:victha.2016@gmail.com">Email to VicTHA</a></p>
      				<p><span class="glyphicon glyphicon-leaf" aria-hidden="true"></span> <a href="<%=request.getContextPath()%>/ourteam" target="_blank">Our Team</a></p>
      				<p><span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span> <a href="<%=request.getContextPath()%>/faq" target="_blank">FAQs</a></p>
      				<p><span class="glyphicon glyphicon-file" aria-hidden="true"></span><a href="<%=request.getContextPath()%>/terms" target="_blank">Terms and Conditions</a></p>
      				<div id="google_translate_element"></div>
      				<script type="text/javascript">
						function googleTranslateElementInit() {
 							new google.translate.TranslateElement({
 								pageLanguage: 'en', 
 								includedLanguages: 'af,ar,de,el,en,es,fa,fr,hi,id,it,ja,jv,ko,ms,nl,pt,ru,sv,th,tl,tr,ur,vi,zh-CN,zh-TW', 
 								layout: google.translate.TranslateElement.InlineLayout.SIMPLE, 
 								autoDisplay: false}, 'google_translate_element');
						}
					</script>
					<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
	            </div>
	        </div>
	    </div> 		
     </section>	
    <!--/#contact-area-->

	<!-- Pop-up window part -->
	<div id="msg_win"
		style="display: block; top: 500px; visibility: visible; opacity: 1;">
		<div class="icos">
			<a id="msg_min" title="minimize" href="javascript:void 0"></a>
			<a id="msg_close" title="close" href="javascript:void 0"></a>
		</div>
		<div id="msg_title" style="color:white;">Important Notice!</div>
		<div id="msg_content">
			<p style="color:red;">Emergency Dial: 000</p>
			<p><a href="<%=request.getContextPath()%>/hospital/emergency">Emergency Hospital List</a></p>
			<p>NURSE-ON-CALL 24 hours a day on 1300 60 60 24 in Victoria</p>
			<p><a href="<%=request.getContextPath()%>/facts" target="_blank">More Facts?</a></p>
			
		</div>
	</div>
	
	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center">
					<p>
						Copyright &#169; 2016<a target="_blank" href="http://mahara.infotech.monash.edu.au/mahara/view/view.php?t=5VCF3Qntx4EI76NW12lj">
							Daemon </a>
					</p>
				</div>
				
			</div>
		</div>
	</footer>
	<!--/#footer-->

	<script type="text/javascript" src="<c:url value="/resources/js/jquery.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/smoothscroll.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.prettyPhoto.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.ba-dotimeout.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.parallax.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.flexslider.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/main.js" />"></script>
	<%-- <script type="text/javascript" src="<c:url value="/resources/js/gmaps.js" />"></script> --%>
	<script type="text/javascript" src="<c:url value="/resources/js/html5shiv.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.mb.YTPlayer.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.isotope.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/respond.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/pop-up.js" />"></script>
	<!-- Google Analytics -->
	<script>
		window.ga=window.ga||function(){
			(ga.q=ga.q||[]).push(arguments)
		};
		ga.l=+new Date;
		ga('create', 'UA-XXXXX-Y', 'auto');
		ga('send', 'pageview');
	</script>
	<script async src='//www.google-analytics.com/analytics.js'></script>
	<!-- End Google Analytics -->
	<script type="text/javascript">
	    $(document).ready(function(){
	    	$("#language").hide();
	    	$("#medicalType").change(function(){
	    		if ($("#medicalType").val() == 'General Practitioner') {
		    		$("#language").show();
		    	} else {
		    		$("#language").hide();
		    	}	
	    	});
	    	
	    });
	</script>
	
</body>
</html>