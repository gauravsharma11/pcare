<!--
Author: Sarwagya Khosla
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<!DOCTYPE html>

<html>
	<head>
		<title>Patient Care</title>
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/bootstrap.min.css"/>"  >
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/font-awesome.min.css"/>"  />
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/style.css"/>" media='all'  />
		<link rel='stylesheet' type='text/css' href="<c:url value="http://fonts.googleapis.com/css?family=Poiret+One"/>" >
		<link rel='stylesheet' type='text/css' href="<c:url value="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic"/>" >
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/custom.css"/>" />
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/LoginPage.css"/>"/>
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/bootstrap-datetimepicker.css"/>"  >
		
		
		<script type="text/javascript" src="/resources/js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="/resources/js/moment.js"></script>
		<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="/resources/js/bootstrap-datetimepicker.js"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/common/common.js"/>"></script>
	
	</head>
	<body class="customFont">
	
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
	
	
		<section class="about mainFont">

			<div class = "container">
				<div class="wrapperLI">
				
				
				<!-- Patient form header -->
				
				<div class="heading">
				<h2 class="customFont">Patient Information</h2>
				<p class="customFont marginTop10">Please enter patients information to create a secure account.</p>
				</div>
				
				<form class="marginTop25" role="form">
				
				<div class="row">
					<div class="col-xs-4 marginTop padding20px">
							<div class="form-group padding20px">
								<label class="control-label "> Patient first name</label>
								<input class="form-control padding20px" data-type="input" type="text" name="firstName" id="lastName" value="" placeholder="First name">
						   </div>
					</div>
					<div class="col-xs-2"></div>
					<div class="col-xs-4 marginTop">						   
			    		<div class="form-group">
							<label class="control-label"> Address </label>
							<input class="form-control" data-type="input" type="text" name="addr1" id="addr1" value="" placeholder="Address line 1 ">
					    </div> 
					</div>
				</div>	
					
				<div class="row">
					<div class="col-xs-4 marginTop">
							<div class="form-group">
								<label class="control-label"> Last name</label>
								<input class="form-control" data-type="input" type="text" name="lastName" id="lastName" value="" placeholder="Last name">
						   </div>
					</div>
					<div class="col-xs-2"></div>
					<div class="col-xs-4 marginTop">						   
			    		<div class="form-group">
							<label class="control-label"> Address line 2 </label>
							<input class="form-control" data-type="input" type="text" name="addr1" id="addr1" value="" placeholder="Address line 2">
					    </div> 
					</div>
				</div>		
							<div class="row">
					<div class="col-xs-4 marginTop">
							<div class="form-group">
								<label class="control-label"> Email Address</label>
								<input class="form-control" data-type="input" type="text" name="emailId" id="emailId" value="" placeholder="E-mail address">
						   </div>
					</div>
					<div class="col-xs-2"></div>
					<div class="col-xs-4 marginTop">						   
			    		<div class="form-group">
							<label class="control-label"> City </label>
							<input class="form-control" data-type="input" type="text" name="city" id="city" value="" placeholder="City">
					    </div> 
					</div>
				</div>		
				<div class="row">
					<div class="col-xs-4 marginTop">
						<div class="form-group">
							<label class="control-label"> Date of Birth</label>
					        <div class='input-group date' id="dateOfBirth">
			                    <input type='text' class="form-control" id="dateOfBirthVal"/>
			                    <span class="input-group-addon">
			                        <span class="glyphicon glyphicon-calendar"></span>
			                    </span>
			                </div>
					    </div>
					</div>
					<div class="col-xs-2"></div>
					<div class="col-xs-4 marginTop">						   
			    		<div class="form-group">
							<label class="control-label"> Province </label>
							<input class="form-control" data-type="input" type="text" name="province" id="province" value="" placeholder="Province">
					    </div> 
					</div>
				</div>		
				<div class="row">
					<div class="col-xs-6 marginTop">
							<div class="form-group">
								<label class="control-label form-group"> Gender</label>
								<label class="radio-inline"><input type="radio" name="rb1" id="rb1" value="">Male</label>
								<label class="radio-inline"><input type="radio" name="rb2" id="rb2" value="">Female</label>
								<label class="radio-inline"><input type="radio" name="rb3" id="rb3" value="">Other</label>
						    </div>
					</div>
					
				</div>
				<div class="row">
							<div class="form-group">
								<div class="pull-left">
								<button type="button" class="btn btn-block default .disabled ">Back</button>
								</div>
								<div class="pull-right">
								<input class="btn btn-block btn-primary btn-sm" type="submit" name="submit" id="submit" value="Submit">
								</div>
							</div>
					
				</div>				
				    							
											   
<!-- 											   <div class="form-group"> -->
<!-- 														<label class="col-md-10 control-label"> Email Address </label> -->
<!-- 															<div class="col-md-10"> -->
<!-- 																	<input class="form-control" data-type="input" type="text" name="emailId" id="emailId" value="" placeholder="abc@xyz.com"> -->
<!-- 														  </div> -->
<!-- 											   </div> -->
						  
							
<!-- 							<div class="col-md-6"> -->
							
<!-- 											<div class="form-group"> -->
<!-- 														<label class="col-md-10 control-label">Address</label> -->
<!-- 															<div class="col-md-10"> -->
<!-- 																	<input class="form-control field" data-type="input" type="text" name="addr1" id="addr1" value="" placeholder="Address line 1"> -->
<!-- 														  </div> -->
<!-- 											   </div> -->
											   
<!-- 											   <div class="form-group"> -->
<!-- 														<label class="col-md-10 control-label">Address (second line)</label> -->
<!-- 															<div class="col-md-10"> -->
<!-- 																	<input class="form-control field" data-type="input" type="text" name="addr2" id="addr2" value="" placeholder="Address line 2"> -->
<!-- 														  </div> -->
<!-- 											   </div>  -->
											   
<!-- 											   <div class="form-group"> -->
<!-- 														<label class="col-md-10 control-label">City </label> -->
<!-- 															<div class="col-md-10"> -->
<!-- 																	<input class="form-control field" data-type="input" type="text" name="city" id="city" value="" placeholder="City name"> -->
<!-- 														  </div> -->
<!-- 											   </div> -->
<!-- 							</div> -->
				
<!-- 				</div> -->
			</form>
<%-- 					<c:url var="addAction" value="/patientRegister" ></c:url> --%>
<%-- 					<form:form action="${addAction}" commandName = "login" method="POST" name="Login_Form" class="form-signinLI"> --%>
<!-- 					    <h3 class="form-signin-headingLI customFont">Sign In to start your session</h3> -->
<!-- 					  	<hr class="colorgraph"><br> -->
<!-- 					  	<input type="text" class="form-control customFont" style="margin-bottom: 10px;" name="name" placeholder="Username" required="" autofocus="" /> -->
<!-- 					  	<input type="text" class="form-control customFont" name="age" placeholder="Password" required=""/>     		   -->
<!-- 					  	<input type="submit" class="btn btn-lg btn-primary btn-block customFont" style="margin-bottom: 20px;"  name="submit" value="Login" type="submit"/>  -->
<!-- 					  	<div><a class="customFont" style="margin-bottom: 3px;" href="">Forgot Password?</a></div> -->
<!-- 					  	<div><a class="customFont" href="">Register a new membership</a></div> -->
<%-- 			   		</form:form>		 --%>
				</div>
			</div>
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
		<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/moment.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/bootstrap-datetimepicker.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.79639.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/common/common.js"/>"></script>
		<script type="text/javascript">
			$("#dateOfBirth").datetimepicker({
		        format: 'DD/MM/YYYY',
		        pickTime: false
		    });
			
		</script>
	</body>
</html>