pragma solidity ^0.5.0;


/**
 * The contractName contract does this and that...
 */
contract contractName {
  


	yourAddress.send();
	//Safe against re-entrency
	//2300 Gas Stipend

	yourAddress.transfer();
	//Safe against re-entrency
	//Same as send() but with a built in require()
	//Revert on failure

	//equals to require(yourAddress.send(x))

	yourAddress.call.value(x)()
	//Unlimited gas to fallback
	//need to trust in the receiver

}
