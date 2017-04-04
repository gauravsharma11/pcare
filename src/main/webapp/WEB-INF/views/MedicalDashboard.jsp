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
		
		<script type="text/javascript">
		
		$(document).ready(function(){
			var dateFormat = moment($('#visitDate').text()).format("MMMM Do YYYY");
			$('#visitDate').text(dateFormat);
			
			dateFormat = moment($('#startDate').text()).format("MMMM Do YYYY");
			$('#startDate').text(dateFormat);
			
			dateFormat = moment($('#endDate').text()).format("MMMM Do YYYY");
			$('#endDate').text(dateFormat);
		})
		</script>
		
	</head>
	<body>
	 <section class="content content_content" style="width: 70%; margin: auto;">
         <section class="invoice" id="mainSection" style="border: 5px solid #1C135B;">
         	<div style="margin: 5px; border:4px double">
         		<div style="margin: 5px">
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
		               <div class="row">
		                  <div class="col-lg-6 col-lg-offset-3 text-center">
		                  	<h3>Medical Certificate</h3>
		                  </div>
		               </div>
		            </header>
		            <!-- info row -->
		            <div class="row" style="margin-left: 10px; margin-right: 10px; margin-bottom: 50px">
		               <div class="col-xs-12">
		                  <span>This is to certify that <b>${patient.name}</b> of <b>${patient.address}, ${patient.city}</b> was examined and treated at PCare Health Center
				  		  on <c:forEach items="${patient.diagnosisList}" var="diagnosis"> <span id="visitDate"><b>${diagnosis.visitDate}</b></span> 
				  		  by <b>Dr. Richard</b> with the following diagnosis <b>${diagnosis.diagnosedAs}</b></c:forEach>
				  		  and would need medical attention from <b id="startDate">${patient.medical.startDate} </b> to <b id="endDate">${patient.medical.endDate}</b></span>
		               </div>
		               <!-- /.col -->
		            </div>
		            <!-- this row will not appear when printing -->
		            <div class="row no-print">
		               <div class="col-xs-12">
		               	 <button class="btn btn-primary" class="generate" id="medicalPDF" onclick='createPDF(this.id)'>Generate PDF</button>
		                 <span class="pull-right"> Signature </span>
		               </div>
		            </div>
		       	</div>
            </div>
         </section>
      </section>
	</body>
	<script>
		function createPDF(id)
		{
			$('#medicalPDF').hide();
			var pdf = new jsPDF('p', 'pt', 'a4');
			
			pdf.addHTML($('#mainSection')[0],function() {
			    pdf.save('web.pdf');
			});
			
		}
	</script>
</html>