/**
 * author : Sarwagya Khosla
 * created on : 23-02-2017
 */

$(document).ready(function(){
	var i=1;
	
	$('#submitd').click(function(){
		var drugName = $('#drugName').val();
		var form = $('#form').find(":selected").text();
		var strength = $('#strength').val();
		var directions = $('#directions').val();
		var prescribedBy = $('#prescribedBy').val();
		
		var d = new Date();

		var month = d.getMonth()+1;
		var day = d.getDate();

		var output = d.getFullYear() + '/' +
		    (month<10 ? '0' : '') + month + '/' +
		    (day<10 ? '0' : '') + day;
		
		var prescribedOn = output;
		
		var data = { "drugName" : drugName, "form" :form, "strength" : strength, "directions" :directions, "prescribedBy" : prescribedBy, "prescribedOn" :prescribedOn };
		
		$.ajax({
			type : "POST",
			url : "prescription",
			dataType : "json",
		    contentType: "application/json; charset=utf-8",
		    data : JSON.stringify(data),
			success : function(response) {
			},
		});
	})
	
	/*By Sarwagya Khosla - Doctor Prescription to DB*/
	
	//script for adding new row on add prescription
	 $("#add_row").click(function(){
		 var id= $("#patientId").val();
	      $('#drugsId'+i).html(
	    		  '<div class="col-md-4"><div class="form-group">'+
	    		  '<label>Drug Name '+i+'</label> <input type="text" id="drugName'+i+'" class="form-control" placeholder="Enter Drug Name">'+
	    		  '</div></div>'+
	    		  
	    		  '<div class="col-md-6">'+
	    		  '<div class="form-group"><label>SIG</label>'+
						'<textarea id="sig'+i+'" class="form-control" rows="1"'+
						'placeholder="Click here to write"></textarea>'+
				'</div></div>'+
				
				'<div class="col-md-2">'+
				'<div class="form-group">'+
						'<label>Qty</label> <input type="text"'+
							'id="qty'+i+'" class="form-control" placeholder="0">'+
					'</div></div>'
	      		  );
	      $('#noOfDrugs_'+id).val(i+1);
	    //  alert($('#noOfDrugs').val());
	      $('#rowAddLogic').append('<div id="drugsId'+(i+1)+'" class="row"></div>');
	      i++; 
	  });
	
	/*By Sarwagya Khosla - Doctor Prescription Update*/
	//script for removing row from add prescription
	$("#remove_row").click(function(){
   	 if(i>1){
		 $("#drugsId"+(i-1)).html('');
		 i--;
		 $('#noOfDrugs').val(i);
		 }
	 });
	
	/*By Sarwagya Khosla - Doctor Prescription Update*/
	$("#submitPrescription").click(function(){
		
			var patientId= $("#patientId").val();
			var prescriptionId= $("#prescriptionId_"+patientId).val();
			var prescribedBy= $("#prescribedBy_"+patientId).val();
			var visitDate= $("#visitDate_"+patientId).val();
			var startDate= $("#startDate_"+patientId).val();
			var endDate= $("#endDate_"+patientId).val();
			var noOfDrugs = $("#noOfDrugs_"+patientId).val();
			
			var listOfDrugs = [];
			
			for(var i=0;i<noOfDrugs;i++){
				var drugs = [];
				drugs[0]=$("#drugName"+i).val();
				drugs[1]=$("#sig"+i).val();
				drugs[2]=$("#qty"+i).val();
				listOfDrugs.push(drugs);
			}

											
							   var listOfdata = "patientId=" + patientId
										+ "&prescriptionId=" + prescriptionId
										+ "&prescribedById=" + prescribedBy
										+ "&visitDate=" + visitDate 
										+ "&startDate="+ startDate 
										+ "&endDate=" + endDate
										+ "&listOfDrugs=" + listOfDrugs;

								
			$.ajax({
		        type: "POST",
		        url: "/addPrescription",
		        data: listOfdata,
		        
		        success: function(response){
		        	if(response){
		        	$("#alert").html(
		        			'<div id="alertSuccessfull" class="alert alert-success alert-dismissable">'+
							'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
							'<i class="icon fa fa-check"></i>Prescription to '+$("#patientName").val()+' has been added successfully. </div>'
		        	);
		        	}else {
		        		$("#alert").html(
			        			'<div id="alertSuccessfull" class="alert alert-danger alert-dismissable">'+
								'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
								'<i class="icon fa fa-check"></i>Unable to add '+$("#patientName").val()+' prescription to system. </div>'
			        	);
		        	}
		        },
		     
		        error: function(e){
		        	$("#alert").html(
		        			'<div id="alertSuccessfull" class="alert alert-danger alert-dismissable">'+
							'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
							'<i class="icon fa fa-check"></i>There is some problem. Please contact administrator. </div>'
		        	);
		        }
		        });
			
							
	});
	
	
});

/*By Sarwagya Khosla - Doctor Prescription Update*/
function datePickerStartDate(id){
	$("#startDate_"+id).datepicker();
}

/*By Sarwagya Khosla - Doctor Prescription Update*/
function datePickerEndDate(id){
	$("#endDate_"+id).datepicker();
}

/*By Sarwagya Khosla - Doctor Prescription Update*/
function datePickerVisitDate(id){
	$("#visitDate_"+id).datepicker();
}
