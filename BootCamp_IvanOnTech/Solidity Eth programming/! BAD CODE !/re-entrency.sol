pragma solidity ^0.5.0;


/**
 * The re-entrency contract does this and that...
 */
contract re_entrency {
  //Checks-Effects-Interactions Pattern
  //insecure code
  function withdrawAll () public {
  	//Check
  	uint amountToWithdraw = balances[msg.sender];
  	//Interaction
  	require(ms.sender.call.value(amountToWithdraw)());
  	//Effects
  	balances[msg.sender] = 0; //this operation should be code before.
  }
  


  }
}

