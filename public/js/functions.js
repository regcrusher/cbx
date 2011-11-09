


/* trigger when page is ready */
$(document).ready(function (){

	// your functions go here
	$('nav ul').onePageNav({
	});

	$('#countdown_dashboard1').countDown({
		targetDate: {
			'day': 		12,
			'month': 	11,
			'year': 	2011,
			'hour': 	11,
			'min': 		0,
			'sec': 		0
		},
		omitWeeks: true,
		onComplete: function(){ $('#countdown_dashboard1').hide(0); }

	});

	$('#countdown_dashboard2').countDown({
		targetDate: {
			'day': 		12,
			'month': 	11,
			'year': 	2011,
			'hour': 	11,
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