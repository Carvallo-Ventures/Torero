# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
		$('.datepicker' ).datepicker({
		  dateFormat: "yy-mm-dd"
		});
		$('#rotation_start_date' ).datepicker({
		  dateFormat: "yy-mm-dd"
		});
		$('#rotation_end_date' ).datepicker({
		  dateFormat: "yy-mm-dd"
		});