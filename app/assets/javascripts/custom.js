$(document).ready(function() {
	
	// runs only the most recent function added in the last 400 milliseconds, others are 
	// discarded
	var requestThrottle = {};

	// Data
	requestThrottle.delay = 400; // delay in miliseconds

	requestThrottle.add = function(newRequest){
	 this.nextRequest = newRequest;
	 if( !this.pending ){
	  this.pending = true;
	  var that = this;
	  setTimeout( function(){that.doRequest();}, this.delay);
	 }
	}

	requestThrottle.doRequest = function(){
	 var toDoRequest = this.nextRequest;
	 this.nextRequest = null;
	 this.pending = false;
	 toDoRequest();
	}
	var global = {};
	global.searchThrottle = Object.create(requestThrottle);

	$('#q').typeahead({
		source: function (query, process) {
			if (query.length > 3) {
				global.searchThrottle.add(function(){
			        $.get('search_nonprofits/?q=' + query, function(data) {
						return process(data);
					})
	 			});
			}
		}
	})

	$('#password').pwstrength({
        ui: { showVerdictsInsideProgressBar: true, showVerdicts: false },
        common: { minChar:3}
    });



});