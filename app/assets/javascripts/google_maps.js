console.log("place index required!");

var clickFunction = function () {
	var userSearch = $(".search-button").on("click", function (event) {
		var search = grabUserInput();
		console.log(search);
		var response = googleApiCall(search, function(){});
		console.log(response);
		event.preventDefault();
		//do the google api call here
		//grab info
		//redirect user to place page
	})
};

var grabUserInput = function () {
	var searchField = $(".search").val();
	return searchField;
}

//calls 
var googleApiCall = function (searchData, callback) {
	$.get(url, {
				input: searchData,
				key: APP_KEY 
			}, callback);

}		


