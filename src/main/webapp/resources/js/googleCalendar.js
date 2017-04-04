var clientId = '608363477989-1jatrqco52csdfmrbf28322394al5d8m.apps.googleusercontent.com';

var scopes = 'https://www.googleapis.com/auth/calendar';

var apiKey = 'AIzaSyAD-Z6RryoboBTHhm5EA4L2cHy-6-zFX3Q';

var userTimeZone = "America/Toronto";

var maxRows = 10;


function padNum(num) {

if (num <= 9) {

return "0" + num;

}

return num;

}


function AmPm(num) {

if (num <= 12) {

return "am " + num;

}

return "pm " + padNum(num - 12);

}


function monthString(num) {

if (num === "01") {

return "JAN";

} else if (num === "02") {

return "FEB";

} else if (num === "03") {

return "MAR";

} else if (num === "04") {

return "APR";

} else if (num === "05") {

return "MAY";

} else if (num === "06") {

return "JUN";

} else if (num === "07") {

return "JUL";

} else if (num === "08") {

return "AUG";

} else if (num === "09") {

return "SEP";

} else if (num === "10") {

return "OCT";

} else if (num === "11") {

return "NOV";

} else if (num === "12") {

return "DEC";

}

}


function dayString(num) {

if (num == "1") {

return "mon"

} else if (num == "2") {

return "tue"

} else if (num == "3") {

return "wed"

} else if (num == "4") {

return "thu"

} else if (num == "5") {

return "fri"

} else if (num == "6") {

return "sat"

} else if (num == "0") {

return "sun"

}

}


function checkAuth(event) {

gapi.auth.authorize({

client_id : clientId,

scope : scopes,

immediate : true

}, handleAuthResult);

}


function handleAuthResult(authResult) {


if (authResult && !authResult.error) {

listOfDates();

}

}


function listOfDates() {

var today = new Date(); // today date

var array = [];

gapi.client.load('calendar', 'v3', function() {

var request = gapi.client.calendar.events.list({

'calendarId' : "pcare.webhealth@gmail.com",

'timeZone' : "canada",

'singleEvents' : true,

'timeMin' : today.toISOString(), // gathers only events not

// happened yet

'maxResults' : maxRows,

'orderBy' : 'startTime'

});

request.execute(function(resp) {

for (var i = 0; i < resp.items.length; i++) {

var li = document.createElement('li');

var item = resp.items[i]; // main data

var classes = [];

var allDay = item.start.date ? true : false;

var startDT = allDay ? item.start.date : item.start.dateTime;

var dateTime = startDT.split("T"); // split date from time

var date = dateTime[0].split("-"); // split yyyy mm dd

var startYear = date[0];

var startMonth = monthString(date[1]);

var startDay = date[2];

var startDateISO = new Date(startMonth + " " + startDay + ", "

+ startYear + " 00:00:00");

array[i] = startDateISO;

}

document.getElementById('response').value = array;


var today = new Date();


$('#appointmentDate').datetimepicker({

defaultDate : today,

disabledDates : array,

minDate:today


});

$('#bookAnAppointment').modal('show');

});

});


}


function authorizeForCalendar() {

gapi.client.setApiKey(apiKey);

handleAuthClick();

}


function handleAuthClick(event) {

gapi.auth.authorize({

client_id : clientId,

scope : scopes,

immediate : false

}, handleAuthResult);

return false;

}


function cancelBooking(){

var selectedDate = $("#cancelAppointment").find("option:selected").text();

var eventId= document.getElementById(selectedDate).value;

var patientEmail=document.getElementById("email").value;

// alert(eventId);


gapi.client.load('calendar', 'v3', function() {  

  var request = gapi.client.calendar.events.delete({

'calendarId': 'pcare.webhealth@gmail.com',

'eventId': eventId

  });

request.execute(function(resp) {});

});


gapi.client.load('calendar', 'v3', function() {  

  var request = gapi.client.calendar.events.delete({

'calendarId': patientEmail,

'eventId': eventId

  });

request.execute(function(resp) {

if (resp.status == 'confirmed'|| resp.message=='Resource has been deleted') {


removeEventFromDB(eventId,patientEmail);

}

else{

$("#alertAppointment").html(

        '<div id="alertSuccessfull" class="alert alert-danger alert-dismissable">'+

'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+

        '<i class="icon fa fa-warning"></i>Unable to cancel appointment from system.The appointment must be cancelled within two hours after booking. Please contact Custome care. </div>');

}

});

});

refreshICalendarframe();

}


function removeEventFromDB(eventId,patientEmail){


var listOfdata = new Object();


var listOfdata = {"eventId" : eventId}

$.ajax({

        type: "POST",

        url: "removeAppointment",

        data: JSON.stringify(listOfdata),

        dataType : "json",

        contentType: "application/json",

        success: function(response)

        {

       	if(response)

        {

        $("#alertAppointment").html(

        '<div id="alertSuccessfull" class="alert alert-success alert-dismissable">'+

'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+

'<i class="icon fa fa-check"></i>Appointment cancelled successfully. </div>');

        GetListOfAppointment(patientEmail);

        }

        else 

        {

        $("#alertAppointment").html(

        '<div id="alertSuccessfull" class="alert alert-danger alert-dismissable">'+

'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+

        '<i class="icon fa fa-warning"></i>Unable to cancel appointment from system.Please contact Admin. </div>');

        }

       

       

        },

        error: function(e){

       

       	$("alertAppointment").html(

        '<div id="alertSuccessfull" class="alert alert-danger alert-dismissable">'+

'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+

        '<i class="icon fa fa-warning"></i>Unable to cancel appointment from system.Please contact Admin. </div>');

       

       

        }

    });



}


function createAppointment(){

var selectedDoctor = $("#doctorForAppointment").find("option:selected").text();

var patientEmail=document.getElementById("email").value;

var patientName=document.getElementById("patientName").value;

var startDate=$("#startAppointmentDate").val();

var dateForDB=startDate;

startDate=moment(new Date(startDate+' UTC')).utc().toISOString();


var dateTime = startDate.split("T"); // split date from time

            var date = dateTime[0].split("-"); // split yyyy mm dd

            var startYear = date[0];

            var startMonth = monthString(date[1]);

            var startDay = date[2];

            var temp=dateTime[1].split(".");

            

            var startDateISO = new Date(startMonth + " " + startDay + ", " + startYear +" "+ temp[0]);

            var endDateISO = new Date(startDateISO.getTime() + (2 * 1000 * 60 * 60));

            


            var res=false,eventId;

            

var resource = {"summary": "P-Care Appointment",

"start": {"dateTime": startDateISO},

"end": {"dateTime": endDateISO},

"description":'Appointment with Dr. '+selectedDoctor+' has been booked',

"location":"Canada",

"attendees":[{

"email":"pcare.webhealth@gmail.com", // pcare always as a copy to pcare
										// calendar

"displayName":patientName,

"organizer":true,

"self":false,

"resource":false,

"optional":false,

"responseStatus":"needsAction",

"comment":"Please arrive at hospital 10 minutes early.",

"additionalGuests":3

}],

};


gapi.client.load('calendar', 'v3', function () {

                var request = gapi.client.calendar.events.insert

                ({

                    'calendarId': patientEmail, // who authorized // who login
												// (patient)

                    "resource": resource

                });

                

               

                // handle the response from our api call

                request.execute(function (resp) {

                if (resp.status == 'confirmed') {

                res=true;

                eventId=resp.id;

                addEventToDB(eventId,patientEmail,dateForDB,res);

                refreshICalendarframe();

                    } else {

                $("#alertAppointment").html(

                '<div id="alertSuccessfull" class="alert alert-danger alert-dismissable">'+

        '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+

        '<i class="icon fa fa-warning"></i>Unable to book appointment to system.Please contact Admin. </div>');

        	       

                    }

                });

               

            });




}



function addEventToDB(eventId, email, date,res){


var listOfdata = new Object();


var listOfdata = {"eventId" : eventId, 

  "patientEmail" : email,

  "appointmentDate" : date

}

$.ajax({

        type: "POST",

        url: "addAppointment",

        data: JSON.stringify(listOfdata),

        dataType : "json",

        contentType: "application/json",

        success: function(response)

        {

       	if(response)

        {

        $("#alertAppointment").html(

        '<div id="alertSuccessfull" class="alert alert-success alert-dismissable">'+

'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+

'<i class="icon fa fa-check"></i>Appointment has been booked successfully. </div>');

        GetListOfAppointment(email);

        }

        else 

        {

        $("#alertAppointment").html(

        '<div id="alertSuccessfull" class="alert alert-danger alert-dismissable">'+

'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+

        '<i class="icon fa fa-warning"></i>Unable to book appointment to system.Please contact Admin. </div>');

        }

       

       

        },

        error: function(e){

       

       	$("alertAppointment").html(

        '<div id="alertSuccessfull" class="alert alert-danger alert-dismissable">'+

'<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>'+

        '<i class="icon fa fa-warning"></i>Unable to book appointment to system.Please contact Admin. </div>');

       

       

        }

    });

}



function refreshICalendarframe() {

            var iframe = document.getElementById('diviframe')

            iframe.innerHTML = iframe.innerHTML;

           

        }