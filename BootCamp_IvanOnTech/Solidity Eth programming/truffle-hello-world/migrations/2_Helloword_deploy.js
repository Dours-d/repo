const Helloworld = artifacts.require("Helloworld");

module.exports = function(deployer, network, accounts) {
  	deployer.deploy(Helloworld).then(function(instance){
  		instance.setMessage("Hello Dours!", {value: 1000000, from: accounts[0]}).then(function(message){
  			console.log("Success");
  		}).catch(function (err){
  			console.log("error: " + err);
  		});
  		
  	}).catch(function (err){
  		console.log("Deploy failed" + err);
	  });
  };
