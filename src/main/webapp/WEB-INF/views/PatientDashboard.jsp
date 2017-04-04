<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>P-Care | User Dashboard</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- CSS files -->
		<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
		<link rel='stylesheet' href="/resources/css/AdminLTE.min.css" type='text/css' />
		<link rel="stylesheet" href=" <c:url value="/resources/css/_all-skins.min.css"/> ">
		<link rel="stylesheet" href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
		<link rel="stylesheet" href="<c:url value="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css"/>">
		<link rel="stylesheet" href="/resources/css/common.css">
		<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-datetimepicker.css"/>"  >
		
		<style type="text/css">
			.dataTables_filter, .dataTables_info { display: none; }
			
				.inputSbt {
			    border: 0;
			    display: block;
			    height: 20;
			    width: 20;
			}
			
			.displayInline	{
				display: inline;
			}
			
			.inputSubmit {
			    background: url(https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Eye_open_font_awesome.svg/120px-Eye_open_font_awesome.svg.png);
			    border: 0;
			    display: block;
			    height: 20;
			    width: 20;
			}
		</style>
		
		<!-- JS files -->
		<script src="/resources/js/jquery-3.1.1.min.js" type="text/javascript"></script>
		<script src="/resources/js/common/common.js" type="text/javascript"></script>
		<script type="text/javascript" src="/resources/js/moment.js"></script>
		<script src="/resources/js/bootstrap.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="/resources/js/bootstrap-datetimepicker.js"></script>
		<script src="<c:url value="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"/>" type="text/javascript"></script>
		<script src="<c:url value="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"/>" type="text/javascript"></script>
		<script src="/resources/js/googleCalendar.js" type="text/javascript"></script>
 		<script src="https://apis.google.com/js/client.js" type="text/javascript"></script>
		<script type="text/javascript">
			
			$(document).ready(function(){
			    var docPanelTable = $('#docPanelTable').DataTable({
			    "bPaginate" : false,
			    "bInfo" : false,
			    });
			   
			    $('#searchDoc').keyup(function(){
			    docPanelTable.search($(this).val()).draw() ;
			    })
			    
				$("#startDate").datetimepicker({
			        format: 'DD/MM/YYYY',
			        pickTime: false
			    });
				
			    
				$("#endDate").datetimepicker({
			        format: 'DD/MM/YYYY',
			        pickTime: false
			    });
				
				
				var dateFormat = moment($('#visitDate').val()).format("MMMM Do YYYY");
				
				$('#visitDate').val(dateFormat);
				
				
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
            <section class="sidebar">
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
                  Dashboard <small>| Patient</small>
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
                        <a href="javascript:authorizeForCalendar()" class="small-box-footer">Go <i
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
                        <div class="icon" style="top: -8px; right: 7px; z-index: 0; font-size: 80px;">
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
                        <a href="" class="small-box-footer" data-toggle="modal" data-target="#myModal">Go <i
                           class="fa fa-arrow-circle-right"></i></a>
                     </div>
                  </div>
                  
                  <!-- Modal Box for E-prescription -->
                  <div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog" style="width: 800px">

							<!-- Modal content-->
										<div class="modal-content">
													<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">E-Prescription</h4>
													</div>

							<div class="modal-body">
								<!-- Hidden Variable BEGIN-->
								<input type="hidden" id="email" value="${listOfData.user.emailId}">
								<!-- Hidden Variable END-->

						<span id="alert">
						</span>

						<div class="box box-info">
							<div class="box-header">
								<h3 class="box-title">List of Prescription</h3>
							</div>
							
							<div class="box-body"> <!-- /.Main box-body -->
									<!-- List Of Prescriptions BEGINS-->
									<div class="box-body no-padding">
										<table class="table table-striped">
											<tbody id="listOfPrescription">
												<tr>
												<th>Prescription No</th>
												<th>Prescribed By</th>
												<th>Prescribed On</th>
												<th>Status</th>
												<th>Action</th>
												</tr>
													<script>
													var email=$("#email").val();
													var result = $.ajax({
				                                                    url: "getlistOfPrescription",
				                                                    async: false,
				                                                    type: 'post',
				                                                  	data: "emailId="+email,
				                                                }).responseText;
												  
													var data = JSON.parse(result);
													                                            //  alert(data[0].prescriptionBy);
													for(var i=0;i<data.length;i)
													{
														if(data[i].flag==1)

														{

														$("#listOfPrescription").append("<tr>"+

														"<td>"+data[i].prescriptionId+"</td>"+

														"<td>"+data[i].prescriptionBy+"</td>"+

														"<td>"+data[i].prescribedOn+"</td>"+

														"<td><span class='label label-success'>New</span></td>"+

														'<td><c:url var="addAction" value="/viewPrescription" ></c:url><form:form action="${addAction}" commandName="viewPrescription" method="GET" name="Login_Form">'+

														'<input type="image" name="id" src="/resources/images/eye.png" style="vertical-align:text-bottom" border="0" title="View" value='+data[i].prescriptionId+'>'+

														"<a href='' title='delete' style='margin-left: 10px;' class='fa fa-trash-o'></a>"+   

														"</td></form:form>"+

														"</tr>");

														}

														else

														{

														$("#listOfPrescription").append("<tr>"+

														"<td>"+data[i].prescriptionId+"</td>"+

														"<td>"+data[i].prescriptionBy+"</td>"+

														"<td>"+data[i].prescribedOn+"</td>"+

														"<td><span class='label label-warning'>Checked</span></td>"+

														"<td>"+

														"<a href='javascript:callMe(11)' title='View' class='fa fa-eye'></a>"+

														"<a href='' title='delete' style='margin-left: 10px;' class='fa fa-trash-o'></a>"+   

														"</td>"+

														"</tr>");

														}
													}
													
													</script>
												</tbody>
											</table>
										</div>
										<!-- List Of Prescriptions ENDS-->
								</div> <!-- /.Main box-body End -->
							</div>
						</div>
					</div>
				</div>
				</div> 
                  <!-- Modal Box for E-Prescription End -->
                  
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
                        <c:url var="addAction" value="viewMedical" ></c:url>
						<form:form action="${addAction}" commandName="viewMedical" method="POST">
                           <input type="submit" id="viewMedical" style="background: transparent; padding-left: 100px; outline: none;" value="Go" class="small-box-footer pointerCursor displayInline inputSbt"><i class="fa fa-arrow-circle-right"></i>
                           	<input type="hidden" id="email" name="emailId" value="${listOfData.patient.emailId}">
					      	<input type="hidden" id="docEmail" name="docEmail" value="${listOfData.patient.medical.doctor.emailId}">
                        </form:form>
                     </div>
                  </div>
                  <!-- ./col -->
               </div>
               <div class="row">
                  <div class="col-xs-12">
                     <div class="box">
                        <div class="box-header">
                           <h3 class="box-title">Doctors</h3>
                           <div class="box-tools">
                              <div class="input-group" style="width: 150px;">
                                 <input type="text" name="table_search" class="form-control input-sm pull-right" id="searchDoc" placeholder="Search">
                                 <div class="input-group-btn">
                                    <button class="btn btn-sm btn-default padding8px">
                                    <i class="fa fa-search"></i>
                                    </button>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                           <table class="table table-hover" id="docPanelTable" class="display" cellspacing="0" width="100%">
	                           <thead>
	                                <tr>
	                                  <th>ID</th>
	                                  <th>Name</th>
	                                  <th>Member since</th>
	                                  <th>Status</th>
	                                  <th>Clinical speciality</th>
	                                  <th>Actions</th>
	                                </tr>
	                           </thead>
	                           <tbody>
	                                <c:forEach items="${listOfData.doctors}" var="doctor">
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
	                                           <a href="" title="Request Medical" id="medical" data-toggle="modal" data-target="#medicalModal" style="margin-left: 10px;"
	                                            class="ion ion-clipboard"></a>
                                           	   
                                           	   <div id="medicalModal" class="modal fade" role="dialog" tabindex="-1" role="dialog" aria-hidden="true">
												  <div class="modal-dialog" style="width: 800px">
												    <div class="modal-content">
												     <c:url var="addAction" value="/requestMedical" ></c:url>
													 <form:form action="${addAction}" commandName="requestMedical" method="POST">
												      <div class="modal-header">
												      	<input type="hidden" id="email" name="emailId" value="${listOfData.patient.emailId}">
												      	<input type="hidden" id="docEmail" name="docEmail" value="${doctor.emailId}">
												        <button type="button" class="close" data-dismiss="modal">&times;</button>
												        <h4 class="modal-title">E-Medical</h4>
												      </div>
												      
												      <div class="modal-body">
												        <div class="box box-info">
															<div class="box-header">
																<h3 class="box-title">Request for Medical</h3>
															</div>
															<div class="box-body">
														 		<table class="table table-striped">
																	<thead id="medicalRequest">
																		<tr>
																			<th>Medical For</th>
																			<th>Visit Date</th>
																			<th>Start Date</th>
																			<th>End Date</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td><input type="text" class="form-control" name="reason" id="reason" placeholder="Enter Reason" /></td>
																			<c:forEach items="${listOfData.patient.diagnosisList}" var="diagnosis">
					                                          				<td><input type="text" class="form-control" id="visitDate" disabled name="visitDate" value="${diagnosis.visitDate}"></td>
					                                            			</c:forEach>
																			<td> 	
																				<div class='input-group date' id="startDate">
																                    <input type='text' class="form-control" name="startDate" id="startDateVal"  placeholder="MM/DD/YYYY"/>
																                    <span class="input-group-addon">
															                        	<span class="glyphicon glyphicon-calendar" ></span>
																                    </span>
																                </div>
																            </td>
																			<td>
																				<div class='input-group date' id="endDate">
																                    <input type='text' class="form-control" name="endDate" id="endDateVal"  placeholder="MM/DD/YYYY"/>
																                    <span class="input-group-addon">
															                        	<span class="glyphicon glyphicon-calendar" ></span>
																                    </span>
																                </div>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>
												      </div>
												      
												      <div class="modal-footer">
												        <input type="button" class="btn btn-primary" data-dismiss="modal" value="Submit" id="medicalBtn"/>
												      </div>
							      			   		</form:form>		
												    </div>
												  </div>
												</div>
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
         <footer class=" navbar navbar-fixed-bottom main-footer">
            <div class="pull-right hidden-xs">
               <b>Version</b> 2.3.0
            </div>
            <strong>Copyright &copy; 2017-2018 <a
               href="http://almsaeedstudio.com"></a>.
            </strong> All rights reserved. 
         </footer>
      </div>
      </div>
      
       <div class="modal fade" id="bookAnAppointment" role="dialog">
			<div class="modal-dialog" style="width: 950px">
				<script>
					$("#alertAppointment").html("");
				</script>
 							<!-- Hidden Value Start -->
 							
				<input type="hidden" id="response" value="">
				<input type="hidden" id="patientName" value="${listOfData.user.name}">
				<!-- Hidden Value End -->
		
				<!-- Modal content-->
							<div class="modal-content">
										      
										      
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">Book Appointment</h4>
										</div>
										<div class="modal-body">
												<span id="alertAppointment"></span>
												<div class="row">
														<div class="col-md-7">
														<!-- Google Calendar Box Start -->
									 					<div class="box box-success">
														<div class="box-header"><h3 class="box-title">P-Care </h3></div>
														<div class="box-body"> <!-- /.Main box-body -->
														<div id="diviframe">
															<iframe
																src="https://calendar.google.com/calendar/embed?src=pcare.webhealth@gmail.com&showTitle=0&amp;showNav=0&amp;showDate=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;mode=WEEK&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;ctz=America%2FToronto"
																style="border-width: 0" width="500" height="370"
																frameborder="0" scrolling="no">
															</iframe>
														</div>	
														</div>
			  									 </div>
			  									 <!-- Google Calendar Box END -->
											</div>	<!-- col-md-7 END -->
														<div class="col-md-5">
														      
														<!-- Book Appointment Box Start -->
														<div class="box box-info">
																<div class="box-header"><h3 class="box-title">Book Date/Time Slot </h3></div>


														<div class="box-body"> <!-- /.Main box-body -->	
														      
																				            <div class="form-group">
																				                <div class='input-group date' id='appointmentDate'>
																				                    <input type='text' class="form-control" id='startAppointmentDate'/>
																				                    <span class="input-group-addon">
																				                        <span class="glyphicon glyphicon-calendar"></span>
																				                    </span>
																				                </div>
																				            </div>
																				                  
																				             <div class="form-group">
																				                    <label>Doctor</label>
																				                    <select class="form-control select" style="width: 100%;" id="doctorForAppointment">
																				                      <option selected="selected">Select Doctor</option>
																				                            
																				                          <c:forEach items="${listOfData.doctors}" var="doctor">
																			                                     <option>${doctor.name}</option>
																			                                          
																			                              </c:forEach>
																				                    </select>
																				              </div><!-- /.form-group -->
																	      
														<div class="box-footer">
										                    <button type="submit" class="btn btn-primary pull-right" onClick="createAppointment()">Submit</button>
										                </div>			
																      
														</div>
			
			  									 </div>
			  									 <!-- Book Appointment Box END -->
			  									       
			  									 <!-- Cancel Appointment Box Start -->
			  									       
			  									 <div class="box box-danger">
																<div class="box-header"><h3 class="box-title">Cancel Appointment </h3></div>


														<div class="box-body"> <!-- /.Main box-body -->	
														      
																							<div class="form-group">
																				                    <select id="cancelAppointment" class="form-control select" style="width: 100%;">
																				                        <option selected="selected">Select Date</option>
																				                              
																				                              
																				                        		<script>
																												var email=$("#email").val();
																				                        		GetListOfAppointment(email);
																												</script>
																				                                       
																			                        </select>
																				              </div><!-- /.form-group -->
																	      
																<div class="box-footer">
												                    <button type="submit" class="btn btn-danger pull-right" onclick="cancelBooking()">Submit</button>
												                </div>			
																      
														</div>
			
			  									 </div>
			  									  <!-- Cancel Appointment Box END -->
			  									       
			  											      
												</div><!-- col-md-5 END -->
														      
														      
													      
												      
												</div>
												      
												      
			
										</div>
				   			</div>
						
				</div>
		</div>
   </body>
</html>