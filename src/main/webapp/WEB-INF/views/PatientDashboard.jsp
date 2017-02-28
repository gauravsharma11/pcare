<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page session="false"%>

<%@ page import="com.lakeheadu.pcare.models.Patient" %>
<%@ page import="com.lakeheadu.pcare.services.DoctorServiceImpl" %>
<%@ page import="com.lakeheadu.pcare.models.*" %>
<%@ page import="java.util.*" %>  




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>

<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>P-Care | User Dashboard</title>

<!-- Tell the browser to be responsive to screen width -->

<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<!-- Bootstrap 3.3.5 -->

<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">

<!-- Font Awesome -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<!-- Ionicons -->

<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

<!-- Theme style -->

<link href="<c:url value="/resources/css/AdminLTE.min.css"/>"
	rel='stylesheet' type='text/css' />



<!-- AdminLTE Skins. Choose a skin from the css/skins

         folder instead of downloading all of them to reduce the load. -->

<link rel="stylesheet"
	href="<c:url value="/resources/css/_all-skins.min.css"/>">



<!-- bootstrap wysihtml5 - text editor -->

<link rel="stylesheet"
	href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>







<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">



		<header class="main-header"> <!-- Logo --> <a
			href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->

			<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->

			<span class="logo-lg">P-Care | Dashboard</span>

		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top" role="navigation">



		<div class="navbar-custom-menu">

			<ul class="nav navbar-nav">

				<!-- Messages: style can be found in dropdown.less-->

				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a> <img
						src="<c:url value="/resources/images/male.png"/>"
						class="user-image" alt="User Image"> <span class="hidden-xs"><li>${listOfData.user.name}</li></span>
				</a></li>

				<!-- Control Sidebar Toggle Button -->

				<li><a href="/"> <i class="fa fa-sign-out"></i> <span
						class="hidden-xs">Logout</span>

				</a></li>

			</ul>

		</div>

		</nav> </header>



		<!-- Left side column. contains the logo and sidebar -->

		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->

		<section class="sidebar"> <!-- Sidebar user panel -->

		<div class="user-panel">

			<div class="pull-left image">

				<img src="<c:url value="/resources/images/male.png"/>"
					class="img-circle" alt="User Image">

			</div>

			<div class="pull-left info">

				<p>${listOfData.user.name}</p>

				<a href="#"><i class="fa fa-circle text-success"></i> edit

					Profile</a>

			</div>

		</div>

		</section> <!-- /.sidebar --> </aside>



		<!-- Content Wrapper. Contains page content -->

		<div class="content-wrapper">

			<!-- Content Header (Page header) -->

			<section class="content-header">

			<h1>

				Dashboard <small>| Patient</small>

			</h1>

			<ol class="breadcrumb">

				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

				<li class="active">Dashboard</li>

			</ol>

			</section>



			<!-- Main content -->

			<section class="content"> <!-- Small boxes (Stat box) -->

			<div class="row">

				<div class="col-lg-3 col-xs-6">

					<!-- small box -->

					<div class="small-box bg-aqua">

						<div class="inner">

							<h3></h3>

							<p>Book Appointment</p>

						</div>

						<div class="icon"
							style="top: -8px; right: 7px; z-index: 0; font-size: 80px;">

							<i class="ion ion-ios-people-outline"></i>

						</div>

						<a href="#" class="small-box-footer">Go <i
							class="fa fa-arrow-circle-right"></i></a>

					</div>

				</div>

				<!-- ./col -->

				<div class="col-lg-3 col-xs-6">

					<!-- small box -->

					<div class="small-box bg-green">

						<div class="inner">

							<h3>

								<sup style="font-size: 20px"></sup>

							</h3>

							<p>E-Report</p>

						</div>

						<div class="icon"
							style="top: -8px; right: 7px; z-index: 0; font-size: 80px;">

							<i class="ion ion-stats-bars"></i>

						</div>

						<a href="#" class="small-box-footer">Go <i
							class="fa fa-arrow-circle-right"></i></a>

					</div>

				</div>

				<!-- ./col -->

				<div class="col-lg-3 col-xs-6">

					<!-- small box -->

					<div class="small-box bg-yellow">

						<div class="inner">

							<h3></h3>

							<p>E-Prescriptions</p>

						</div>

						<div class="icon"
							style="top: -8px; right: 7px; z-index: 0; font-size: 80px;">

							<i class="ion fa-list"></i>

						</div>

						<a href="" class="small-box-footer">Go <i
							class="fa fa-arrow-circle-right"></i></a>

					</div>
					
					<button type="button"  class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
					
					<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog" style="width: 800px">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
        
        <div style="overflow: auto">
          <table class="table">
          <thead>
            <tr>
              <th>Prescription No.</th>
              <th>Drug Name</th>
              <th>Form</th>
              <th>Strength</th>
              <th>Directions</th>
            </tr>
           </thead>
      <tbody>
        <tr>
          <td><span>1</td>
          <td><span><input type="text" /></span></td>
          <td>
            <select>
                <option value="volvo">Liquid</option>
                <option value="saab">Tablet</option>
                <option value="mercedes">Capsule</option>
                <option value="audi">Drops</option>
                <option value="audi">Inhaler</option>
                <option value="audi">Injection</option>
            </select>
          </td>
          <td><span><input type="text" value="250mg"/></span></td>
          <td><span><input type="text"></span></td>
        </tr>
        <tr>
          <td><span>2</td>
          <td><span><input type="text" /></span></td>
          <td>
            <select>
                <option value="volvo">Liquid</option>
                <option value="saab">Tablet</option>
                <option value="mercedes">Capsule</option>
                <option value="audi">Drops</option>
                <option value="audi">Inhaler</option>
                <option value="audi">Injection</option>
            </select>
          </td>
          <td><span><input type="text" value="250mg"/></span></td>
          <td><span><input type="text"></span></td>
        </tr>
        <tr>
          <td><span>3</td>
          <td><span><input type="text" /></span></td>
          <td>
            <select>
                <option value="volvo">Liquid</option>
                <option value="saab">Tablet</option>
                <option value="mercedes">Capsule</option>
                <option value="audi">Drops</option>
                <option value="audi">Inhaler</option>
                <option value="audi">Injection</option>
            </select>
          </td>
          <td><span><input type="text" value="250mg"/></span></td>
          <td><span><input type="text"></span></td>
        </tr>
        <tr>
          <td><span>4</td>
          <td><span><input type="text" /></span></td>
          <td>
            <select>
                <option value="volvo">Liquid</option>
                <option value="saab">Tablet</option>
                <option value="mercedes">Capsule</option>
                <option value="audi">Drops</option>
                <option value="audi">Inhaler</option>
                <option value="audi">Injection</option>
            </select>
          </td>
          <td><span><input type="text" value="250mg"/></span></td>
          <td><span><input type="text"></span></td>
        </tr>
        </tbody>
</table>
</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
					

				</div>

				<!-- ./col -->

				<div class="col-lg-3 col-xs-7">

					<!-- small box -->

					<div class="small-box bg-red">

						<div class="inner">

							<h3></h3>

							<p>Medical Certificate</p>

						</div>

						<div class="icon"
							style="top: 4px; right: 7px; z-index: 0; font-size: 60px;">

							<i class="ion ion-clipboard"></i>

						</div>

						<a href="#" class="small-box-footer">Go <i
							class="fa fa-arrow-circle-right"></i></a>

					</div>

				</div>

				<!-- ./col -->

			</div>



			<div class="row">

				<div class="col-xs-12">

					<div class="box">

						<div class="box-header">

							<h3 class="box-title">Panel-Doctors</h3>

							<div class="box-tools">

								<div class="input-group" style="width: 150px;">

									<input type="text" name="table_search"
										class="form-control input-sm pull-right" placeholder="Search">

									<div class="input-group-btn">

										<button class="btn btn-sm btn-default">

											<i class="fa fa-search"></i>

										</button>

									</div>

								</div>

							</div>

						</div>

						<!-- /.box-header -->

						<div class="box-body table-responsive no-padding">

							<table class="table table-hover">

								<tbody>

									<tr>

										<th>ID</th>

										<th>Name</th>

										<th>Member since</th>

										<th>Status</th>

										<th>Clinical speciality</th>
										
										<th>Actions</th>

										



									</tr>
								<c:forEach items="${listOfData.listOfDoctors}" var="doctor">
									<tr>

										<td>${doctor.id}</td>

										<td>${doctor.name}</td>

										<td>${doctor.dateOfBirth}</td>

										<c:if test="${doctor.status=='a'}">
										<td><span class="label label-success">Available</span></td>
										</c:if>
										
										<c:if test="${doctor.status=='d'}">
										<td><span class="label label-danger">InActive</span></td>
										</c:if>
										
									

										<td>${doctor.speciality}</td>

										<td><a href="" title="View doctor's detail"
												class="fa fa-eye"></a>
											
											<a href=""title="delete" style="margin-left: 10px;"
												class="fa fa-trash-o"></a>
										</td>
										



									</tr>
								</c:forEach>

								</tbody>

							</table>

						</div>

						<!-- /.box-body -->

					</div>

					<!-- /.box -->

				</div>

			</div>



			</section>

			<!-- /.content -->

		</div>

		<!-- /.content-wrapper -->

		<footer class="main-footer">

		<div class="pull-right hidden-xs">

			<b>Version</b> 2.3.0

		</div>

		<strong>Copyright &copy; 2017-2018 <a
			href="http://almsaeedstudio.com"></a>.

		</strong> All rights reserved. </footer>



		<!-- Control Sidebar -->

		<aside class="control-sidebar control-sidebar-dark"> <!-- Create the tabs -->

		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">

			<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
					class="fa fa-home"></i></a></li>

			<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
					class="fa fa-gears"></i></a></li>

		</ul>
	</div>
	-->
	</aside>

	<!-- /.control-sidebar -->

	<!-- Add the sidebar's background. This div must be placed

           immediately after the control sidebar -->

	<div class="control-sidebar-bg"></div>

	</div>

	<!-- ./wrapper -->



	<!-- jQuery 2.1.4 -->

	<script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>

	<!-- jQuery UI 1.11.4 -->

	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->

	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>

	<!-- Bootstrap 3.3.5 -->

	<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>





</body>

</html>