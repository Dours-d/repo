pragma solidity ^0.5.0;


/**
 * The re-entrency contract does this and that...
 */
contract no_re_entrency {
  //Checks-Effects-Interactions Pattern
  //Secure code

  function withdrawAll () public {
  	//Check
  	uint amountToWithdraw = balances[msg.sender];
  	//Effects
  	balances[msg.sender] = 0;
  	//Interaction
  	require(ms.sender.call.value(amountToWithdraw)()); //this operation should be code before.
  }
  


  }
}