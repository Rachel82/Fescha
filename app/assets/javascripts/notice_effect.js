$(document).on('turbolinks:load', function(){
	console.log("It works on each visit!");
	$("#alert, #notice, .alert").fadeOut(6000).delay(9000);
})