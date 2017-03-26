<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
	<head>
				<!-- CSS Imports -->
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/bootstrap.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"/>"  >
		<link rel='stylesheet' type='text/css' href="<c:url value="/resources/css/AdminLTE.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/_all-skins.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/bootstrap-datetimepicker.css"/>"  >
		<link rel="stylesheet" type='text/css' href="<c:url value="/resources/css/common.css"/>"  >
		
		<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.1.1.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/moment.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/bootstrap-datetimepicker.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/js/common/common.js"/>"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.3/jspdf.debug.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
		<script src="<c:url value="/resources/js/html2pdf.js"/>"></script>
		
	</head>
	<body>
	 <section class="content content_content" style="width: 70%; margin: auto;">
         <section class="invoice" id="mainSection">
            <!-- title row -->
            <header>
			   <div class="row">
                  <div class="col-xs-12">
					<a href="#" class="navbar-left img-responsive"><img class="img-responsive" src="<c:url value="/resources/images/patientHeader.gif"/>"></a>
				  </div>
               </div>
               <div class="row">
                  <div class="col-xs-12">
                     <h2 class="page-header">
                        <i class=""></i> PCare
                        <small class="pull-right">Date: 2017/01/09</small>
                     </h2>
                  </div>
                  <!-- /.col -->
               </div>
            </header>
            <!-- info row -->
            <div class="row invoice-info">
               <div class="col-sm-4 invoice-col">
                  <strong>Prescribed By</strong>
                  <address>
                     Dr. ${prescription.getDoctor().getName()}                                    
                     <br>
                     <b>Speciality:</b>
                     ${prescription.getDoctor().getSpeciality()}    <br>
                     <b>Address:</b>
                      ${prescription.getDoctor().getAddress()}, ${prescription.getDoctor().getCity()} <br>
                     <b>Email:</b> ${prescription.getDoctor().getEmailId()}      
                  </address>
               </div>
               <!-- /.col -->
               <div class="col-sm-4 invoice-col">
                  <strong>To </strong>
                  <address>
                     ${prescription.getPatient().getName()}                                      
                     <br>
                     <b>Address:</b>
                      ${prescription.getPatient().getAddress()}, ${prescription.getPatient().getCity()} <br>
                     <b>Email:</b><span style="display:inline; word-wrap:break-word;">${prescription.getPatient().getEmailId()} </span>                               
                  </address>
               </div>
               <!-- /.col -->
               <div class="col-sm-4 invoice-col">
                  <b>Prescription Id #${prescription.getPrescriptionId()}</b><br>
                  <br>
                  <b>Start Date: </b>${prescription.getStartDate()}<br>
                  <b>End Date: </b>${prescription.getEndDate()}<br>
               </div>
               <!-- /.col -->
            </div>
            <!-- /.row -->
            <!-- Table row -->
            <div class="row">
               <div class="col-xs-12 table-responsive">
                  <table class="table table-striped">
                     <thead>
                        <tr>
                           <th>S.No</th>
                           <th>Drug Name</th>
                           <th>Directions</th>
                           <th>Form</th>
                        </tr>
                     </thead>
                     <tbody>
                     	 <c:set var="count" value="0" scope="page" />
	                     <c:forEach items="${prescription.getDrugs()}" var="drug">
	                        <tr>
	                           <c:set var="count" value="${count + 1}" scope="page"/>
	                           <td>${count}</td>
	                           <td>${drug.name}</td>
	                           <td>${drug.directions}</td>
	                           <td>${drug.form}</td>
	                        </tr>
	                     </c:forEach>
                     </tbody>
                  </table>
               </div>
               <!-- /.col -->
            </div>
            <!-- /.row -->
            <!-- this row will not appear when printing -->
            <div class="row no-print">
               <div class="col-xs-12">
               	 <button class="btn btn-primary" class="generate" id="${prescription.getPrescriptionId()}" onclick='createPDF(this.id)'>Generate PDF</button>
                 <span class="pull-right"> Signature </span>
               </div>
            </div>
         </section>
      </section>
	</body>
	<script>
		function createPDF(id)
		{
			$('#'+id).hide();
			var pdf = new jsPDF('p', 'pt', 'a4');
			
			pdf.addHTML($('#mainSection')[0],function() {
			    pdf.save('web.pdf');
			});
			$('#'+id).show();
		}
	</script>
</html>