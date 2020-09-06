//BLUEPRINT
var promise = new Promise(function(resolve,reject){
	setTimeout(resolve,2000);

});

promise.then(function(){
	console.log("Ready?");

	return new Promise(function(resolve,reject){
		setTimeout(resolve,2000);
	});
}).then(function(){
	console.log("Steady!");

	return new Promise(function(resolve,reject){
		setTimeout(resolve,2000);
	});
}).then(function(){
	console.log("Eddy!");

	return new Promise(function(resolve,reject){
		setTimeout(resolve,1800);
	});
}).then(function(){
	console.log("GO!");
});