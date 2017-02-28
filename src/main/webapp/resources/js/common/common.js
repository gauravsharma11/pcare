/**
 * author : Sarwagya Khosla
 * created on : 23-02-2017
 */

$(document).ready(function(){
	
	$('#submitd').click(function(){
		debugger;
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

function doAjaxPost() {
	// get the form values
	
}