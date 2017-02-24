/**
 * author : Sarwagya Khosla
 * created on : 23-02-2017
 */

function doAjaxPost() {
	// get the form values
	debugger;
	var name = $('#name').val();
	var education = $('#education').val();
	var data = { "name" : name, "emailId" :education };
	$.ajax({
		type : "POST",
		url : "Adduser",
		dataType : "json",
	    contentType: "application/json; charset=utf-8",
	    data : JSON.stringify(data),
		success : function(response) {
			// we have the response
			$('#info').html(response);
			$('#name').val('');
			$('#education').val('');
		},
		error : function(e) {
			alert('Error: ' + e);
		}
	});
}