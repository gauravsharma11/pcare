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
});

/*By Sarwagya Khosla - Doctor Prescription Update*/
function submitPrescription(id)
{
	var patientId = id;
	var prescriptionId = $("#prescriptionId_"+patientId).val();
	var prescribedBy = $("#prescribedBy_"+patientId).val();
	var visitDate = $("#visitDateVal_"+patientId).val();
	var startDate = $("#startDateVal_"+patientId).val();
	var endDate = $("#endDateVal_"+patientId).val();
	var noOfDrugs = $("#noOfDrugs_"+patientId).val();
	var url = "http://localhost:8080/viewPrescription?id=" +prescriptionId;

	var listOfdata = new Object();
	
	var listOfdata = {"patientId" : patientId, 
				  "prescriptionId" : prescriptionId,
				  "prescribedById" : prescribedBy,
				  "prescribedOn" : visitDate,
				  "visitDate" : visitDate, 
				  "startDate": startDate, 
				  "endDate" : endDate,
				  "url" : url
				}
				
	for(var i=0; i < noOfDrugs; i++)
	{
		var drugs = [];
		drugs[0] = $("#drugName_"+patientId+"_"+i).val();
		drugs[1] = $("#sig_"+patientId+"_"+i).val();
		drugs[2] = $("#form_"+patientId+"_"+i+" option:selected" ).text();
		drugs[3] = $("#qty_"+patientId+"_"+i).val();
		
		listOfdata["drugs"] = [{ 
						"name" : drugs[0],
						"directions" : drugs[1],
						"form" : drugs[2],
						"quantity" : drugs[3]
				}]
	}

	$.ajax({
	        type: "POST",
	        url: "addPrescription",
	        data: JSON.stringify(listOfdata),
	        dataType : "json",
	        contentType: "application/json",
	        success: function(response)
	        {
		        if(response)
		        {
			        $("#alert"+id).html(
			        '<div id="alertSuccessfull" class="alert alert-success alert-dismissable">'+
					'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
					'<i class="icon fa fa-check"></i>Prescription to '+$("#patientName_"+id).val()+' has been added successfully. </div>');
		        }
		        else 
		        {
			        $("#alert"+id).html(
			        '<div id="alertSuccessfull" class="alert alert-danger alert-dismissable">'+
					'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
					'<i class="icon fa fa-warning"></i>Unable to add '+$("#patientName_"+id).val()+' prescription to system. </div>');
		        }
	        },
	        error: function(e)
	        {
		        $("#alert"+id).html(
		        '<div id="alertSuccessfull" class="alert alert-danger alert-dismissable">'+
				'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+
				'<i class="icon fa fa-check"></i>There is some problem. Please contact administrator. </div>');
	        }
    });

}

/*By Sarwagya Khosla - Doctor Prescription Update*/
//script for adding new row on add prescription
function addRow(id) 
{
	var i=$("#rowCount_"+id).val();
	   
	$('#drugsId_'+id+'_'+i).html(
			'<div class="col-xs-3"><div class="marginBottom10">'+
			'<label class="displayBlock">Drug Name '+i+'</label> <input type="text" id="drugName_'+id+'_'+i+'" class="form-control" placeholder="Enter Drug Name">'+
			'</div></div>'+
			'<div class="col-xs-3">'+
			'<div class="marginBottom10"><label class="displayBlock">SIG</label>'+
			'<textarea id="sig_'+id+'_'+i+'" class="form-control" rows="1"'+
			'placeholder="Click here to write"></textarea>'+
			'</div></div>'+
			' <div class="col-xs-3">'+
            ' <div class="marginBottom10">' +
            ' <label class="displayBlock">Form</label>' +
            ' <select id="form_'+id+'_'+i+'" class="form-control">' +
			'  <option value="tablet">Tablet</option>' +
			'  <option value="capsule">Capsule</option>' +
			'  <option value="syrup">Syrup</option>' +
		    '  <option value="drops">Drops</option>' +
			'  </select>' +
            '</div></div>' +
			'<div class="col-xs-3">'+
			'<div class="marginBottom10">'+
			'<label class="displayBlock">Qty</label> <input type="text"'+
			'id="qty_'+id+'_'+i+'" class="form-control" placeholder="0">'+
			'</div></div>'
	        );
	      $('#noOfDrugs_'+id).val(++i);
	      $('#rowAddLogic_'+id).append('<div id="drugsId_'+id+'_'+(i)+'" class="row"></div>');
	      $('#rowCount_'+id).val(i);
}

/*By Sarwagya Khosla - Doctor Prescription Update*/
//script for removing row from add prescription
function removeRow(id)
{
	var i=$("#rowCount_"+id).val();
		
	if(i>1)
	{
		$("#drugsId_"+id+'_'+(i-1)).html('');
		i--;
		$('#noOfDrugs_'+id).val(i);
		$('#rowCount_'+id).val(i);
	}
}


/*By Sarwagya Khosla - Doctor Prescription Update*/
function datePickerInitialize(id)
{
	document.getElementById("prescriptionId_"+id).value="PR"+Math.floor(Math.random()*89999+10000);
	
	$("#visitDate_"+id).datetimepicker({
        format: 'DD/MM/YYYY'
    });
	
	$("#startDate_"+id).datetimepicker({
        format: 'DD/MM/YYYY',
    });
	
	$("#endDate_"+id).datetimepicker({
        format: 'DD/MM/YYYY'
    });
}

function removeAllValue(id)
{
	$("#visitDateVal_"+id).val("");
	$("#startDateVal_"+id).val("");
	$("#endDateVal_"+id).val("");
	$("#alert"+id).html("");
	$("#drugName_"+id+"_0").val("");
	$("#sig_"+id+"_0").val("");
	$("#form_"+id+"_0").val("");
	$("#qty_"+id+"_0").val("");
	
	var i=$("#rowCount_"+id).val();
	
	while(i>1)
	{
		$("#drugsId_"+id+'_'+(i-1)).html('');
		i--;
		$('#noOfDrugs_').val(i);
		$('#rowCount_'+id).val(i);
	}
}
