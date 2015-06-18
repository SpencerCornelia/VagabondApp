vagabond.memberSignIn = function() {
	$("#formToggle").on('click', function(){
		var modalHeader = $("#myModalLabel").html("Sign In");
		console.log("this works");
		$("#signDiv").hide();
		$("#logDiv").show();
		//more logic
	});
}

vagabond.memberRegister = function() {
	$("#formToggle2").on('click', function(){
		var modalHeader = $("#myModalLabel").html("Register");
		$("#logDiv").hide();
		$("#signDiv").show();
		//more logic
	});
}