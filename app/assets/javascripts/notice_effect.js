$(document).on('turbolinks:load', function(){
	console.log("It works on each visit!");
	$("#alert, #notice, .alert").fadeOut(5000).delay(6000);
})