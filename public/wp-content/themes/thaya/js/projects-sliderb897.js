$(document).ready(function(){
	$('#carousel').serialScroll({
		items:'img',
		prev: '.gallery-back',
		next: '.gallery-next',
		duration: 3000,
		force: true,
		easing: 'linear',
		interval:1,
		step:1
	});
});