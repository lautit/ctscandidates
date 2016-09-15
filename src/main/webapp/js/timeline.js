//encuentra el valor de la barra de progreso
$(document).ready(function () {

	var PROGRESS_PERCENTAGE = Object.freeze({
		progress: {
			'newCandidate': {
				percentage: '0%'
			},
			'firstCall': {
				percentage: '20%'
			},
			'firstInterview': {
				percentage: '40%'
			},
			'techInterview': {
				percentage: '60%'
			},
			'healthTests': {
				percentage: '80%'
			},
			'hired': {
				percentage: '100%'
			}
		}
	});

	function enable(checkbox) {
		console.log("enabling")
		if (!checkbox.is(':checked')) {
			if (checkbox.is(':disabled')) {
				checkbox.removeAttr('disabled');
			}
		}
		console.log(checkbox);
	}

	function disable(checkbox) {
		console.log("disabling");
		if (!checkbox.is(':disabled')) {
			checkbox.prop('disabled', true);
		}
		console.log(checkbox);
	}

	function uncheck(checkbox) {
		console.log("unchecking")
		if (checkbox.is(':checked'))
			checkbox.removeAttr('checked');
		console.log(checkbox);
	}

	function updateProgress(value) {
		$('#statusBar').css('width', value);
	}

	$(':checkbox').change(function () {
		var thisCheckbox = $(this);
		var nextCheckbox = thisCheckbox.parent().next().children().first();

		if (nextCheckbox.prop('class') === "progressCheckbox") {
			if (thisCheckbox.is(':checked')) {
				enable(nextCheckbox);
				disable(thisCheckbox);
			} else {
				disable(nextCheckbox);
				uncheck(nextCheckbox);
			}
		} else {
			disable(thisCheckbox);
		}

		if (thisCheckbox.is(':checked')) {
			updateProgress(PROGRESS_PERCENTAGE.progress[thisCheckbox.prop('id')].percentage);
		}
	});

	$(':checkbox').not(":last").trigger('change');
});
