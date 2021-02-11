const Erc20 = artifacts.require("ERC20");
const _name = "BOBY";
const _symbol = "BOB";



module.exports = function(deployer, network, accounts) {
  	deployer.deploy(Erc20, _name, _symbol).then(
      function(instance){
        instance.mint(accounts[1], 100).then(function(message){
    			console.log("mint process ended");
    		});
    
  	  }
    );
};
	

