$(document).ready(function() {

	$('#nonprofits-typeahead').typeahead({
		source: function (query, process) {
			if (query.length > 3) {
			$.get('search_nonprofits/?q=' + query, function(data) {
					var npNames = [];
					for (var i =0; i<data.filings.length; i++) {
						npNames.push(data.filings[i].organization.name);
					}
					return process(npNames);
					})
			}
		},
		template: {suggestion: suggestionTemplate}
	})

	var suggestionTemplate = function (sug) {
		return "<p>" + sug + "</p>"
	}


});