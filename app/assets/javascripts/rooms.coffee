# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CofatchfeeScript in this file: http://coffeescript.org/


catch_mistake =->
	if $('#room_number').val() > 5
		$('#room_number').css("border-color","red")
	else
		$('#room_number').css("border-color","blue")



$(document).on 'click', '#room_number', catch_mistake
#$('#room_number').on 'change', catch_mistake
