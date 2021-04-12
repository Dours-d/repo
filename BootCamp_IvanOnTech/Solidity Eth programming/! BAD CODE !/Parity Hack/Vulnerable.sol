pragma solidity ^0.4.8;
import "./Library.sol";

contract Fundraiser {

	library lib = library(deployed_lib_address)

	mapping (address => uint) balances;

	function contribute() payable {
		balances[msg.sender] += msg.value;
	}
	

	function withdraw (){
		if(lib.isNotPositive(balances[msg.sender])){
			throw;
		}
		balances[msg.sender] = 0;
		msg.sender.call.value(balances[msg.sender])();
	}
	

	function getFunds() returns (uint){
		return address(this).balance;
	}

}