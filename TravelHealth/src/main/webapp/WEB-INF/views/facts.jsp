<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
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
<link id="preset" rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/presets/preset1.css" />">
<link
	href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" />"
	rel="stylesheet">
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
	<div class="container">
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

						<a class="navbar-brand" href="<%=request.getContextPath()%>">
							<img src="<c:url value="/resources/images/logo.png" />"
							alt="logo">
						</a>

					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="scroll"><a href="<%=request.getContextPath()%>">Home</a></li>
							<li class="scroll"><a
								href="<%=request.getContextPath()%>#services">Services</a></li>
							<li class="scroll"><a
								href="<%=request.getContextPath()%>/searchPage">Search</a></li>
							<li class="scroll"><a
								href="<%=request.getContextPath()%>#about-us">About Us</a></li>
							<li class="scroll"><a
								href="<%=request.getContextPath()%>#contact-area">Contact</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!--/#header-->

		<!-- Text of the body-->
		<div class="row">

			<div id="divContainer"
				style="position: absolute; left: 60px; top: 90px; border: solid 2px #ffffff;">
				<div>
					<h3>Emergency department factsheets</h3>
				</div>
				<div id="frameContainer" style="overflow: hidden;">

					<iframe src="http://www.health.vic.gov.au/edfactsheets/"
						scrolling="yes"
						style="width: 1870px; height: 1200px; margin-top: -560px; margin-left: -20px; margin-right: -800px;">
					</iframe>
				</div>
			</div>

		</div>


	<footer id="footer" class="container-fluid bg-2">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<p>
						Copyright @2016 <a target="_blank"
							href="http://mahara.infotech.monash.edu.au/mahara/view/view.php?id=2192">Daemon</a>
					</p>
				</div>
				<div class="col-sm-6">
					<p class="pull-right">
						Designed by <a target="_blank"
							href="http://mahara.infotech.monash.edu.au/mahara/view/view.php?id=2192">Daemon</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!--/#footer-->
	</div>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.js" />"></script>
	<%-- <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />" ></script> --%>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<%-- <script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.86080.js" />" ></script> --%>
	<script type="text/javascript"
		src="<c:url value="/resources/js/smoothscroll.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.isotope.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.prettyPhoto.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.parallax.js" />"></script>
	<%-- <script type="text/javascript" src="<c:url value="/resources/js/main.js" />" ></script> --%>
	<%-- <script type="text/javascript" src="<c:url value="/resources/js/switcher.js" />" ></script> --%>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
</body>
</html>