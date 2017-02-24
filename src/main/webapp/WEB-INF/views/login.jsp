<!--
Author: Sarwagya Khosla
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Patient Care</title>
<link href="<c:url value="/resources/css/bootstrap-3.1.1.min.css"/>"
	rel='stylesheet' type='text/css' />
<link href="<c:url value="/resources/css/style.css"/>" rel='stylesheet'
	type='text/css' media='all' />
<link href="<c:url value="/resources/css/AdminLTE.min.css"/>"
	rel='stylesheet' type='text/css' />

<!-- for-mobile-apps -->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->

<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Poiret+One'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<!--//fonts-->

<!-- js -->
<script type="text/javascript" src="/resources/js/jquery-3.1.1.min.js"></script>
<!-- js -->

<script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/modernizr.custom.79639.js"/>"></script>

<!-- Common Script for sendind data to controller -->
<script type="text/javascript"
	src="<c:url value="/resources/js/common/common.js"/>"></script>

<link rel="stylesheet"
	href="<c:url value="/resources/css/font-awesome.min.css"/>"
	rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/custom.css"/>" rel='stylesheet'
	type='text/css' />

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
			<!-- Large modal -->
			<div class="selectpackage">
				<button class="btn btn-primary">Login</button>
				<button class="btn btn-primary">/ Register</button>

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
				<li class="current_page"><a href="index.html">Home</a></li>
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
				<h6>We Care for our Customer</h6>
			</div>
		</div>
	</div>

<div class="form-grid">
  <div class="wrapper">
    <form class="form-signin">       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control" name="username" placeholder="Email Address" required="" autofocus="" />
      <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   
    </form>
  </div>
  </div>


	<table>
		<tr>
			<td>Enter your name :</td>
			<td><input type="text" id="name"><br /></td>
		</tr>
		<tr>
			<td>Education :</td>
			<td><input type="text" id="education"><br /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="button" value="Add Users"
				onclick="doAjaxPost()"><br /></td>
		</tr>
		<tr>
			<td colspan="2"><div id="info" style="color: green;"></div></td>
		</tr>
	</table>

	</section>


	<footer>
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