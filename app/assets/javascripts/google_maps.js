console.log("place index required!");

var placesAutoComplete = function() {
	// the following code is from: http://jsfiddle.net/moinsam/SDPHm/
	var input = document.getElementById('pac-input');
	var options = {componentRestrictions: {country: 'us'}};
	// var value = input.val()
	// console.log(value)
	    
	new google.maps.places.Autocomplete(input, options);
};
//define functions