<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>P-Care | User Dashboard</title>
		
		<!-- CSS Imports -->
		<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
		<link rel="stylesheet" href=" <c:url value="/resources/css/bootstrap.min.css"/>"  type='text/css'>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"  type='text/css'>
		<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"  type='text/css'>
		<link rel='stylesheet' href=" <c:url value="/resources/css/AdminLTE.min.css"/>"  type='text/css'/>
		<link rel="stylesheet" href="/resources/css/_all-skins.min.css"  type='text/css'>
		<link rel="stylesheet" href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"  type='text/css'>
		<link rel="stylesheet" href=" <c:url value="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css"/>"  type='text/css'>
		<link rel="stylesheet" href="/resources/css/common.css"  type='text/css'>
		
		<!-- Added By Sarwagya for-Date Picker -->
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  	
		<style type="text/css">
			.dataTables_filter, .dataTables_info { display: none; }
		</style>
		
		<script src="/resources/js/jquery-3.1.1.min.js" type="text/javascript"></script>
		<script src="<c:url value="/resources/js/bootstrap.min.js" />" type="text/javascript"></script>
		<script src="<c:url value="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"/>" type="text/javascript"></script>
		<script src="<c:url value="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"/>" type="text/javascript"></script>
		<script src="<c:url value="/resources/js/common/common.js"/>" type="text/javascript"></script>
	 
  		
		<script type="text/javascript">
			$(document).ready(function(){
			    var patientPanelTable = $('#patientPanelTable').DataTable({
			    	"bPaginate" : false,
			    	"bInfo" : false,
			    });
			    
			    $('#searchPatient').keyup(function(){
			    	patientPanelTable.search($(this).val()).draw() ;
			    })
			});
		</script>
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="container-fluid" style="padding-left: 0px; padding-right: 0px">
			<div class="wrapper">
				<header class="main-header">
					<!-- Logo --> 
					<a
						href="index2.html" class="logo">
						<!-- mini logo for sidebar mini 50x50 pixels -->
						<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
						<span class="logo-lg">P-Care | Dashboard</span>
					</a>
					<!-- Header Navbar: style can be found in header.less --> 
					<nav
						class="navbar navbar-static-top" role="navigation">
						<div class="navbar-custom-menu">
							<ul class="nav navbar-nav">
								<!-- Messages: style can be found in dropdown.less-->
								<!-- User Account: style can be found in dropdown.less -->
								<li class="dropdown user user-menu">
									<a>
										<img
										src="
										<c:url value="/resources/images/male.png"/>
										"
										class="user-image" alt="User Image"> 
										<span class="hidden-xs">
								<li>${listOfData.user.name}</li></span>
								</a></li>
								<!-- Control Sidebar Toggle Button -->
								<li><a href="/"> <i class="fa fa-sign-out"></i> <span
									class="hidden-xs">Logout</span>
									</a>
								</li>
							</ul>
						</div>
					</nav>
				</header>
				<!-- Left side column. contains the logo and sidebar -->
				<aside class="main-sidebar">
					<!-- sidebar: style can be found in sidebar.less -->
					<section class="sidebar" >
						<!-- Sidebar user panel -->
						<div class="user-panel">
							<div class="pull-left image">
								<img src="
								<c:url value="/resources/images/male.png"/>
								"
								class="img-circle" alt="User Image">
							</div>
							<div class="pull-left info">
								<p>${listOfData.user.name}</p>
								<a href="#"><i class="fa fa-circle text-success"></i> edit
								Profile</a>
							</div>
						</div>
					</section>
					<!-- /.sidebar --> 
				</aside>
				<!-- Content Wrapper. Contains page content -->
				<div class="content-wrapper">
					<!-- Content Header (Page header) -->
					<section class="content-header">
						<h1>
							Dashboard <small>| Doctor</small>
						</h1>
						<ol class="breadcrumb">
							<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
							<li class="active">Dashboard</li>
						</ol>
					</section>
					<!-- Main content -->
					<section class="content">
						<!-- Small boxes (Stat box) -->
						<div class="row">
							<div class="col-xs-12">
								<div class="box">
									<div class="box-header">
										<h3 class="box-title">Panel-Doctors</h3>
										<div class="box-tools">
											<div class="input-group" style="width: 150px;">
												<input type="text" name="table_search" class="form-control input-sm pull-right" id="searchPatient" placeholder="Search">
												<div class="input-group-btn"> <button class="btn btn-sm btn-default padding8px"> <i class="fa fa-search"></i> </button></div>
											</div>
										</div>
									</div>
									<!-- /.box-header -->
									<div class="box-body table-responsive no-padding">
										<table class="table table-hover" id="patientPanelTable" class="display" cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>ID</th>
													<th>Name</th>
													<th>Last visit</th>
													<th>Diagnosis</th>
													<th>Last Prescription</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${listOfData.patients}" var="patient">
													<tr>
														<td>${patient.id}</td>
														<td>${patient.name}</td>
														<td>${patient.dateOfBirth}</td>
														<td>${patient.diagnosis}</td>
														<td><a href="">${patient.dateOfBirth}.pdf</a></td>
														<td>
															<a href="" title="Edit patient's details"class="fa fa-edit"></a>
															<a href="" title="Add reports" data-toggle="modal" data-target="#myModal${patient.id}" style="margin-left: 10px;" class="fa fa-plus"></a>
															<!-- Modal -->
															
															<div class="modal fade" id="myModal${patient.id}" role="dialog">
														<div class="modal-dialog" style="width: 800px">
															<!-- Modal content-->
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close"
																		data-dismiss="modal">&times;</button>
																	<h4 class="modal-title">Prescribe Medication</h4>
																</div>

																<div class="modal-body">
																
																<span id="alert">
																
																</span>
																
																			
																<!-- BEGINS Reference hidden Parameter By Sarwagya-->
																<input type="hidden" id="patientId" value="${patient.id}">
																<input type="hidden" id="noOfDrugs_${patient.id}" value="1">
																<input type="hidden" id="prescribedBy_${patient.id}" value="${listOfData.user.name}">
																
																<!-- Reference hidden Parameter ENDS -->
																	
																	<div class="box box-info">
																		<div class="box-header">
																			<h3 class="box-title">Medication</h3>
																		</div>

																		<div class="box-body">
																			<!-- /.box-body111 -->

<div class="row">


																				<div class="col-md-4">

																					<div class="box">
																						<!-- /.box-header -->
																						<!-- form start -->
																						
																							<div class="box-body">

																								<div class="form-group">
																									<label>Patient Name</label> <input id="patientName" type="text"
																										class="form-control" value="${patient.name}"
																										disabled="">
																								</div>
																								<div class="form-group">
																									<label>Prescription ID</label> <input id="prescriptionId_${patient.id}" type="text"
																										<%
																										Random rand = new Random();
																										int n = rand.nextInt(90000) + 10000;
																										%>
																										
																										class="form-control" value="PR<%=n%>"
																										disabled="">
																								</div>
																								<div class="form-group">
																									<label>Visit Date:</label>
																									<div class="input-group">
																										<div class="input-group-addon">
																											<i class="fa fa-calendar"></i>
																										</div>
																										<input type="text" id="visitDate_${patient.id}" style="height: 30px;width: 85px;" 
																										onclick="datePickerVisitDate(${patient.id})" placeholder="MM/DD/YYYY">
																									</div>
																									<!-- /.input group -->
																								</div>






																							</div>
																							<!-- /.box-body -->

																						<div class="box-footer">

																							<button id="submitPrescription" class="btn btn-primary">Prescribe
																								Now</button>
																							<button type="button" class="btn"
																								data-dismiss="modal">Cancel</button>
																						</div>
																					</div>
																					<!-- /.box -->

																				</div>






																				<div class="col-md-8">

																					<div class="box">
																						<!-- /.box-header -->
																						<!-- form start -->
																							<div class="box-body" id="rowAddLogic" style="overflow-y: auto; 
																							height: 240px;">

																								<div class="row">

																									<div class="col-md-4">
																										<div class="form-group">
																											<label>Prescribed by</label> <input
																												type="text" class="form-control"
																												style="height: 28px; width: 100px"
																												value="${listOfData.user.name}" disabled="">
																										</div>
																									</div>

																									<div class="col-md-4">
																										<div class="form-group">
																											<label>Start Date:</label>
																											<div class="input-group">
																												<div class="input-group-addon">
																													<i class="fa fa-calendar"></i>
																												</div>
																												<input type="text" id="startDate_${patient.id}"
																													style="height: 28px; width: 100px"
																													onclick="datePickerStartDate(${patient.id})" placeholder="MM/DD/YYYY">
																											</div>
																											<!-- /.input group -->
																										</div>
																									</div>

																									<div class="col-md-4">
																										<div class="form-group">
																											<label>End Date:</label>
																											<div class="input-group">
																												<div class="input-group-addon">
																													<i class="fa fa-calendar"></i>
																												</div>
																												<input type="text" id="endDate_${patient.id}"
																													style="height: 28px; width: 100px"
																													onclick="datePickerEndDate(${patient.id})" placeholder="MM/DD/YYYY">
																											</div>
																											<!-- /.input group -->
																										</div>
																									</div>
																								</div>


																								<div id="drugsId0" class="row">

																									<div class="col-md-4">


																										<div class="form-group">
																											<label>Drug Name</label> <input type="text"
																												id="drugName0" class="form-control"
																												placeholder="Enter Drug Name">
																										</div>
																									</div>



																									<div class="col-md-6">


																										<div class="form-group">
																											<label>SIG</label>
																											<textarea id="sig0" class="form-control" rows="1"
																												placeholder="Click here to write"></textarea>
																										</div>
																									</div>
																									<div class="col-md-2">

																										<div class="form-group">
																											<label>Qty</label> <input id="qty0" type="text"
																												class="form-control" placeholder="0">
																										</div>
																									</div>
																									
																								</div>

																								<div id="drugsId1" class="row"></div>
																							


																							</div>
																							<!-- /.box-body -->
																								
																					  	 <div class="box-footer">

																							<button id="add_row" type="button" class="btn btn-primary pull-right">+ New Drug</button>
																							<button id="remove_row" type="button" class="btn btn-danger">Remove</button>
																						</div>

																					</div>
																					<!-- /.box -->

																				</div>

																			</div>




																		</div>
																		<!-- /.box-body2 -->

																	</div>


																	<!-- Current Medication Box -->

																	<div class="box">
																		<div class="box-header">
																			<h3 class="box-title">Current Medication</h3>
																		</div>
																		<!-- /.box-header -->
																		<div class="box-body no-padding">
																			<table class="table table-striped">
																				<tbody>
																					<tr>
																						<th>Drug Name</th>
																						<th>SIG</th>
																						<th>Start Date</th>
																						<th>End Date</th>
																						<th>Qty</th>
																					</tr>
																					<tr>
																						<td>Maxiat 5mg Tablet</td>
																						<td>Once Daily</td>
																						<td>14/11/2017</td>
																						<td></td>
																						<td>40 Tablet</td>

																					</tr>


																					<tr>
																						<td>Maxiat 5mg Tablet</td>
																						<td>Once Daily</td>
																						<td>14/11/2017</td>
																						<td></td>
																						<td>40 Tablet</td>

																					</tr>

																					<tr>
																						<td>Maxiat 5mg Tablet</td>
																						<td>Once Daily</td>
																						<td>14/11/2017</td>
																						<td></td>
																						<td>40 Tablet</td>

																					</tr>



																				</tbody>
																			</table>
																		</div>
																		<!-- /.box-body -->
																	</div>
																	<!-- Current Medication Box Ends -->


																</div>
																

															</div>
														</div>
													</div> 
													<a href="" title="delete" style="margin-left: 10px;" class="fa fa-trash-o"></a>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</section>
					<!-- /.content -->
				</div>
				<!-- /.content-wrapper -->
				<footer class="main-footer footerBottom">
					<div class="pull-right hidden-xs">
						<b>Version</b> 2.3.0
					</div>
					<strong>Copyright &copy; 2017-2018 <a href="http://almsaeedstudio.com"></a>.
					</strong> All rights reserved. 
				</footer>
			</div>
		</div>
		
	<!-- jQuery 2.1.4 -->

	<script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>

	<!-- jQuery UI 1.11.4 -->

	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->

	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>

	
	</body>
</html>