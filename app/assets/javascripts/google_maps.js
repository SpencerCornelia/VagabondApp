var url = "https://maps.googleapis.com/maps/api/place/autocomplete/JSON?"
var APP_KEY = "AIzaSyBaJF-DtZ_zK2ZsKsfaNgchBdPUbIrMMJI"


console.log("place index required!");

var userSearch = $(".search-button").on("click", function (event) {
	console.log("hello world")
	event.preventDefault();
	console.log(event.target);
	var apiResponce = googleApiCall(event.target);
	console.log(apiResponce)
	//do the google api call here
	//grab info
	//redirect user to place page
	this.submit();
})

//calls 
var googleApiCall = function (data) {
	$.get(url, {
				input: data,
				key: APP_KEY 
			}, callback);		
}

var placesAutoComplete = function() {
	// the following code is from: http://jsfiddle.net/moinsam/SDPHm/
	var input = document.getElementById('pac-input');
	var options = {componentRestrictions: {country: 'us'}};
	// var value = input.val()
	// console.log(value)
	    
	new google.maps.places.Autocomplete(input, options);

};
//define functions