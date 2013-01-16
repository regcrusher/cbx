


/* trigger when page is ready */
$(document).ready(function (){

	// your functions go here
	$('nav ul').onePageNav({
	});

	var day, month, year;
	day = 9;
	month = 3;
	year = 2013;
	hour = 11;


	$('#countdown_dashboard1').countDown({
		targetDate: {
			'day': 		day,
			'month': 	month,
			'year': 	year,
			'hour': 	hour,
			'min': 		0,
			'sec': 		0
		},
		omitWeeks: true,
		onComplete: function(){ $('#countdown_dashboard1').hide(0); }

	});

	$('#countdown_dashboard2').countDown({
		targetDate: {
				'day': 		day,
				'month': 	month,
				'year': 	year,
				'hour': 	hour,
			'min': 		0,
			'sec': 		0
		},
		omitWeeks: true,
		onComplete: function(){ $('#countdown_dashboard2').hide(0); }
		

	});

});


/* optional triggers

$(window).load(function() {

});

$(window).resize(function() {

});

*/