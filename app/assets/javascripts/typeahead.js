$(document).ready(function() {

	$('#nonprofits-typeahead').typeahead({
		source: function (query, process) {
			$.get('https://projects.propublica.org/nonprofits/api/v1/search.jsonp?q=' + query, function(data) {
					return process(data.map(function(item) {
						return item;
					}))
				});
		}
	})


});