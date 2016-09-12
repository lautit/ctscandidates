//encuentra el valor de la barra de progreso
$(document).ready(function() {
	$('#timeLineContainer').find(".checkProgress").change(function() {
		if ($(this).is(":checked")) {
			var prog = $(this).data("progress");
			$('#statusBarr').css('width', prog + "%");
			$(this).next().attr("disabled", true);
		}
	});
});