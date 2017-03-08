<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
   <head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>P-Care | User Dashboard</title>
	
		<!-- CSS Imports -->
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/bootstrap.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"/>"  >
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/AdminLTE.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/_all-skins.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/bootstrap-datetimepicker.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/common.css"/>"  >
		
		<style type="text/css">
			.dataTables_filter, .dataTables_info { display: none; }
			.datepicker{z-index:1151 !important;}
		</style>
		
		<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/moment.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/bootstrap-datetimepicker.js"/>"></script>
		<script type="text/javascript" src="<c:url value="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/common/common.js"/>"></script>
		
		<script type="text/javascript">
			$(document).ready(function(){
			    var patientPanelTable = $('#patientPanelTable').DataTable({
			    "bPaginate" : false,
			    "bInfo" : false,
			    });
			   
			    $('#searchPatient').keyup(function(){
			    patientPanelTable.search($(this).val()).draw() ;
			    });
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
                                             <a href="" title="Add reports" data-toggle="modal" data-target="#myModal${patient.id}" onclick="datePickerInitialize(${patient.id})" style="margin-left: 10px;" class="fa fa-plus"></a>
                                             <!-- Modal -->
                                             <div class="modal fade" id="myModal${patient.id}" role="dialog">
                                                <div class="modal-dialog" style="width: 800px">
                                                   <!-- Modal content-->
                                                   <div class="modal-content">
                                                      <div class="modal-header">
                                                         <button type="button" class="close" onclick="removeAllValue(${patient.id})" data-dismiss="modal" >&times;</button>
                                                         <h4 class="modal-title">Prescribe Medication</h4>
                                                      </div>
                                                      <div class="modal-body">
                                                         <span id="alert${patient.id}">
                                                         </span>
                                                         <!-- BEGINS Reference hidden Parameter By Sarwagya-->
                                                         <input type="hidden" id="patientId" value="${patient.id}">
                                                         <input type="hidden" id="noOfDrugs_${patient.id}" value="1">
                                                         <input type="hidden" id="rowCount_${patient.id}" value="1">
                                                         <input type="hidden" id="prescribedBy_${patient.id}" value="${listOfData.user.emailId}">
                                                         <!-- Reference hidden Parameter ENDS -->
                                                         <div class="box box-info">
                                                            <div class="box-header">
                                                               <h3 class="box-title">Patient Details</h3>
                                                            </div>
                                                            <div class="box-body">
                                                               <!-- /.box-body111 -->
                                                               <div class="row">
                                                               	<div class="col-xs-4">
																	<div class="pull-left image">
																		<img src="/resources/images/user1.png;" class="img-circle patientImageWidth" alt="User Image">
																	</div>
																</div>
                                                                <div class="col-xs-8">
                                                                     <div class="box">
                                                                        <!-- /.box-header -->
                                                                        <!-- form start -->
                                                                        <div class="box-body">
                                                                           <div class="marginBottom10">
                                                                              <label class="displayBlock">Patient Name</label> 
                                                                              <input id="patientName_${patient.id}" type="text" class="form-control" value="${patient.name}" disabled>
                                                                           </div>
                                                                           <div class="marginBottom10">
                                                                              <label class="displayBlock">Prescription ID</label> <input id="prescriptionId_${patient.id}" type="text"
                                                                                 <%
                                                                                    Random rand = new Random();
                                                                                    int n = rand.nextInt(90000) + 10000;
                                                                                    %>
                                                                                 class="form-control" value="PR<%=n%>"
                                                                                 disabled>
                                                                           </div>
                                                                           <div class="marginBottom10">
                                                                              <label class="displayBlock">Visit Date:</label>
                                                                              	<div class='input-group date' id="visitDate_${patient.id}">
																                    <input type='text' class="form-control" id="visitDateVal_${patient.id}"  placeholder="MM/DD/YYYY"/>
																                    <span class="input-group-addon" onclick="datePickerVisitDate(${patient.id})">
																                    <script type="text/javascript">
																                    	
																                    </script>
																                        <span class="glyphicon glyphicon-calendar" ></span>
																                    </span>
																                </div>
                                                                              <!-- /.input group -->
                                                                           </div>
                                                                        </div>
                                                                     </div>
                                                                     <!-- /.box -->
                                                                  </div>
                                                     		</div>
														</div>
													</div>
													<div class="box box-info">
														<div class="box-header">
															<h3 class="box-title">Medication</h3>
														</div>
														
														<div class="box-body">
															<div class="row">
                                                                  <div class="col-xs-12">
                                                                     <div class="box">
                                                                        <!-- /.box-header -->
                                                                        <!-- form start -->
                                                                        <div class="box-body" id="rowAddLogic_${patient.id}" style="overflow-y:auto;overflow-x:hidden; height: 240px;">
                                                                           <div class="row">
                                                                              <div class="col-xs-4">
                                                                                 <div class="marginBottom10">
                                                                                    <label class="displayBlock">Prescribed by</label> <input
                                                                                       type="text" class="form-control"
                                                                                       style="height: 28px; width: 100px"
                                                                                       value="Dr. ${listOfData.user.name}" disabled>
                                                                                 </div>
                                                                              </div>
                                                                              <div class="col-xs-4">
                                                                                 <div class="marginBottom10">
                                                                                    <label class="displayBlock">Start Date:</label>
                                                                                    <div class='input-group date' id="startDate_${patient.id}">
																	                    <input type='text' class="form-control" id="startDateVal_${patient.id}"/>
																	                    <span class="input-group-addon">
																	                        <span class="glyphicon glyphicon-calendar"></span>
																	                    </span>
																	                </div>
                                                                                 </div>
                                                                              </div>
                                                                              <div class="col-xs-4">
                                                                                 <div class="marginBottom10">
                                                                                    <label class="displayBlock">End Date:</label>
                                                                                   	<div class='input-group date' id="endDate_${patient.id}">
																	                    <input type='text' class="form-control" id="endDateVal_${patient.id}"/>
																	                    <span class="input-group-addon">
																	                        <span class="glyphicon glyphicon-calendar"></span>
																	                    </span>
																	                </div>
                                                                                    <!-- /.input group -->
                                                                                 </div>
                                                                              </div>
                                                                           </div>
                                                                           <div id="drugsId_${patient.id}_0" class="row">
                                                                              <div class="col-xs-4">
                                                                                 <div class="marginBottom10">
                                                                                    <label class="displayBlock">Drug Name</label> 
                                                                                    <input type="text"
                                                                                       id="drugName_${patient.id}_0" class="form-control"
                                                                                       placeholder="Enter Drug Name">
                                                                                 </div>
                                                                              </div>
                                                                              <div class="col-xs-4">
                                                                                 <div class="marginBottom10">
                                                                                    <label class="displayBlock">SIG</label>
                                                                                    <textarea id="sig_${patient.id}_0" class="form-control" rows="1"
                                                                                       placeholder="Click here to write"></textarea>
                                                                                 </div>
                                                                              </div>
                                                                              <div class="col-xs-4">
                                                                                 <div class="marginBottom10">
                                                                                    <label class="displayBlock">Qty</label> 
                                                                                    <input id="qty_${patient.id}_0" type="text"
                                                                                       class="form-control" placeholder="0">
                                                                                 </div>
                                                                              </div>
                                                                           </div>
                                                                           <div id="drugsId_${patient.id}_1" class="row"></div>
                                                                        </div>
                                                                        <!-- /.box-body -->
                                                                        <div class="box-footer">
                                                                           <button onclick="addRow(${patient.id})" type="button" class="btn btn-primary pull-left paddingRight5 marginRight10">+ New Drug</button>
                                                                           <button onclick="removeRow(${patient.id})" type="button" class="btn btn-danger pull-left">Remove</button>
                                                                           <button id="submitPrescription" class="btn btn-primary pull-right paddingRight5" onclick="submitPrescription(${patient.id})">Prescribe</button> 
                                                                           <button type="button" class="btn pull-right marginRight10" onclick="removeAllValue(${patient.id})" data-dismiss="modal">Cancel</button>
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
   </body>
</html>