jQuery(document).ready(function($) {
	longitude = $(".avaluo-form").find(".titulation-form").find("#longitude").val()
	latitude = $(".avaluo-form").find(".titulation-form").find("#latitude").val()
	
	$('.toggle').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.cobra')
	});

	$('.alcanta').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.alcantarillado')
	});

	$('.legal').toggles({
		drag: false,
    text:{
      on:"Si",
      off:"No"
    },
    checkbox:$('.legals')
	});

	// 	$('.neighbor_blegal').toggles({
	// 	drag: false,
 //    text:{
 //      on:"Si",
 //      off:"No"
 //    },
 //    checkbox:$('.blegal')
	// });
	// $('.toggle').on('toggle', function(e, active) {
	// 	debugger
	// 	input = $(this).siblings('input')
	// 	$(this).toggles({
	// 		checkbox:input
	// 	})
	// });
});

