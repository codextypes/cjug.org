$(document).ready(function(){
	$.ajax({
        url: 'https://api.meetup.com/ChicagoJug/events?photo-host=public&page=20&sig_id=13119970&sig=a0149059896b0b89fcaae31aeebe1be10df14570',
        dataType: 'jsonp',
        jsonp: 'callback',
        success: function(data){
        	var source   = $("#meetup-template").html();
        	var template = Handlebars.compile(source);
        	console.log(data);
        	$('#meetup-main').append(template(data.results[0]));
        }
    });
});