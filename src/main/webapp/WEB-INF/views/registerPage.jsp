<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Patient Care</title>
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/font-awesome.min.css"/>"  />
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/custom.css"/>" />
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/bootstrap.css"/>" />
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/style.css"/>" media='all'  />
		<link rel='stylesheet' type='text/css' href="<c:url value="http://fonts.googleapis.com/css?family=Poiret+One"/>" >
		<link rel='stylesheet' type='text/css' href="<c:url value="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic"/>" >
<%-- 		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/AdminLTE.min.css"/>"  /> --%>
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/LoginPage.css"/>"/>
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/common.css"/>"  >
	
		<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.79639.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/common/common.js"/>"></script>
	</head>
	<body>
			<!-- header -->
		<div class="top-strip">
			<div class="container-fluid">
	
				<div class="contact-info">
					<ul>
						<li><span class="glyphicon glyphicon-earphone"
							aria-hidden="true"></span>+0123 456 789</li>
						<li><span class="glyphicon glyphicon-envelope"
							aria-hidden="true"></span><a href="mailto:info@example.com">contactus@pcare.com</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<nav class="navbar nav_bottom" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header nav_2">
				<button type="button" class="navbar-toggle collapsed navbar-toggle1"
					data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					Menu <span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
				<ul class="nav navbar-nav nav_1">
					<li class=""><a href="index.html">Home</a></li>
					<li><a href="about.html">About Us</a></li>
					<li><a href="about.html">Book Appointment</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		</nav>
		<section class="about">
			<div class="inner-banner demo-2 text-center">
				<header class="logo">
					<h1>
						<a class="cd-logo link link--takiri" href="index.html">P-Care <span>Effective
							Patient Care.</span></a>
					</h1>
				</header>
				<div id="breadcrumb_wrapper">
					<div class="container">
						<h2>P-Care</h2>
						<h6>We Care for our Patients</h6>
					</div>
				</div>
			</div>
<!-- 			Container -->
				<div class = "container">
					<div class="row about-grids">
							<div class="col-xs-4 abt-grid height160px">
										<div class=" form-signinLI boxStyle"><h3 class="paddingLeft40  floatNone">Patient</h3>
										<i class="fa fa-user"></i></div>
							</div>
							<div class="col-xs-4 abt-grid height160px">
										<div class=" form-signinLI boxStyle floatNone"><h3 class="paddingLeft40 floatNone">Doctor</h3>
										<i class="fa fa-stethoscope"></i></div>
										
							</div>
							<div class="col-xs-4 abt-grid height160px">
										<div class=" form-signinLI boxStylefloatNone">
										<h3 class="paddingLeft40  floatNone">Staff</h3>
										<i class="fa fa-group"></i>
										</div>
										
							</div>
					</div>
				</div>
		</section>
		<footer class="footerBottom">
			<div class="copy-right-grids">
				<div class="container">
					<div class="copy-left">
						<p class="footer-gd">© 2017 Prevention. All Rights Reserved.</p>
					</div>
		
					<div class="clearfix"></div>
				</div>
			</div>
		</footer>
	</body>
</html>