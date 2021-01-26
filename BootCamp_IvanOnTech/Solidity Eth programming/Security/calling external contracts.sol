pragma solidity ^0.5.0;


/**
 * The contractName contract does this and that...
 */
contract A {
  
  //Calling external functions
  //We are calling from the Contract A -> Contract B
  
  ContractB.call()
  //Call function in External Contract
  //Using Contract B scope
  //Throws no error if it fails
  //Returns true or false

  ContractB.callcode() //Don't use 
  //Call function in External Contract
  //Using Contract A scope
  //Throws no error if it fails
  //Returns true/false

  ContractB.delegatecall()
  //Call function in Eternal Contract 
  //Using Contract A scope
  //Throws no error if it fails
  //Returns true/false

  ContractB.functionA()
  	//Call function in External Contract
  	//Using Contract B scope
  	//Will throw if functionA() throws

  ContractB.call(bytes4(sha3("runFunction(uint256)")),100)
}

