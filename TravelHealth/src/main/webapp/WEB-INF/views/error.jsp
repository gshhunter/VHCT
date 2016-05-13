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
    <link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/prettyPhoto.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/animate.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/hospital.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/responsive.css" />" rel="stylesheet">
	<link id="preset" rel="stylesheet" type="text/css" href="<c:url value="/resources/css/presets/preset1.css" />" >
	<link href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />" rel="stylesheet">

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
						<li class="scroll"><a href="<%=request.getContextPath()%>">Home</a></li>
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
<!--Body-->
<div style="margin:150px;height:500px; color:Background{white-space}">
       <div class="container-fluid">
           <div class="right" style="text-align: right" color: white; text-shadow:1px 1px 2px black 0 0 25px blue 0 0 5px darkblue>
        
            
           </div>
           <!-- Title of body text-->
           <div class="row">
               <div class="col-sm-8" style="background-color:white;padding-left:0">
                <h1>Ooops!</h1>
                 <p>&nbsp;</p>
            </div>
       <!-- Title of body text-->
 
               </div>
      <!-- Text of the body-->
  <div class="row">
    <div class="col-sm-4" style="background-color:white;">
        <div class="auto-style1">
         We can&#39;t seem to find the page you&#39;re looking for.</div>
        </div>
    </div>
 </div>
  <!-- /Tesxt of the body-->
</div>
 <!-- /body-->         
   
 <footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<p>
						Copyright @ 2016<a target="_blank" href="http://mahara.infotech.monash.edu.au/mahara/view/view.php?t=5VCF3Qntx4EI76NW12lj"> Daemon </a>
					</p>
				</div>
				<div class="col-sm-4">
				</div>
				<div class="col-sm-4">
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
	<%-- <script type="text/javascript" src="<c:url value="/resources/js/gmaps.js" />"></script> --%>
	<script type="text/javascript" src="<c:url value="/resources/js/html5shiv.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.mb.YTPlayer.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.isotope.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/respond.min.js" />"></script>
	
</body>
</html>
