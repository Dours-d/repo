pragma solidity ^0.4.8;


contract Fundraiser {

	mapping (address => uint) balances;

	function contribute() payable {
		balances[msg.sender] += msg.value;
	}
	

	function withdraw (){
		if(balances[msg.sender] == 0){
			throw;
		}

		if(msg.sender.call.value(balances[msg.sender])()){		/* 	the re-entrency windows by fallback function 		BAD CODE */
			balances[msg.sender] = 0;							/*  balances should be updated BEFORE the call function's, 
																	fallback function opportunity window for calling back the withdraw() function, again. */
		};

		else{
			throw;
		}
	}

	function getFunds() returns (uint){
		return address(this).balance;
	}
}
