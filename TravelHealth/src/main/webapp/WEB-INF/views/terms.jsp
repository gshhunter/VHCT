<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="The Travel Health website in Victoria">
<meta name="author" content="Shuhao Guo">
<title>Victoria Health Care Tourism</title>
<%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/prettyPhoto.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/hospital.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/responsive.css" />"
	rel="stylesheet">
<link
	href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />"
	rel="stylesheet">
<link id="preset" rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/presets/preset1.css" />">

<!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->

<link rel="shortcut icon"
	href="<c:url value="/resources/images/ico/new-favicon.png" />">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<c:url value="/resources/images/ico/apple-touch-icon-144-precomposed.png" />">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="<c:url value="/resources/images/ico/apple-touch-icon-114-precomposed.png" />">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<c:url value="/resources/images/ico/apple-touch-icon-72-precomposed.png" />">
<link rel="apple-touch-icon-precomposed"
	href="<c:url value="/resources/images/ico/apple-touch-icon-57-precomposed.png" />">

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
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<%=request.getContextPath()%>"> <img
						src="<c:url value="/resources/images/logo.png" />" alt="logo">
					</a>
				</div>

				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="scroll"><a href="<%=request.getContextPath()%>">Home</a></li>
						<li class="scroll"><a href="<%=request.getContextPath()%>/ourteam">About Us</a></li>
						<!-- <li class="scroll"><a href="#services">Services</a></li>
						<li class="scroll"><a href="#contact-area">Contact</a></li> -->
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

	<div style="padding:100px;">
		<div>
			<h1>
				Terms and Conditions<br />
			</h1>
		</div>
		<div>
			<p>Last updated: (11/05/2016) </p>
			<p>Please read these Terms and Conditions ("Terms", "Terms and Conditions") carefully before using the <a href="http://victha2016.tk">Victorian Tourist Health Assistant</a> operated by Daemon ("us", "we", or "our"). 
			</p>
			<p>Your access to and use of the Service is conditioned on your acceptance of and compliance with these Terms. These Terms apply to all visitors, users and others who access or use the Service. </p>
			<p><b>By accessing or using the Service you agree to be bound by these Terms. If you disagree with any part of the terms, then you may not access the Service.</b><br/></p>
			<h3>Links To Other Web Sites<br/></h3>
			<p>Our Service may contain links to third-party web sites or services that are not owned or controlled by Daemon.<br/> 
			</p>
			<p>Daemon has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that Daemon shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with use of or reliance on any such content, goods or services available on or through any such web sites or services.<br/></p>
			<h3>Changes<br/></h3>
			<p>We reserve the right, at our sole discretion, to modify or replace these Terms at any time. If a revision is material, we will try to provide at least 3 0 (change this) days' notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion. 
			<br/></p>
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

	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/smoothscroll.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.prettyPhoto.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.ba-dotimeout.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.parallax.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/main.js" />"></script>
	<%-- <script type="text/javascript" src="<c:url value="/resources/js/gmaps.js" />"></script> --%>
	<script type="text/javascript"
		src="<c:url value="/resources/js/html5shiv.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.mb.YTPlayer.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.isotope.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/respond.min.js" />"></script>

</body>
</html>