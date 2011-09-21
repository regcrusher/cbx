


/* trigger when page is ready */
$(document).ready(function (){

	// your functions go here
	$('nav ul').onePageNav();

	$('#countdown_dashboard1').countDown({
		targetDate: {
			'day': 		18,
			'month': 	11,
			'year': 	2011,
			'hour': 	11,
			'min': 		0,
			'sec': 		0
		},
		omitWeeks: true

	});

	$('#countdown_dashboard2').countDown({
		targetDate: {
			'day': 		18,
			'month': 	11,
			'year': 	2011,
			'hour': 	11,
			'min': 		0,
			'sec': 		0
		},
		omitWeeks: true

	});

});


/* optional triggers

$(window).load(function() {

});

$(window).resize(function() {

});

*/