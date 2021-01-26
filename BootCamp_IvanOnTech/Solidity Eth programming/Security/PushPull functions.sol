pragma solidity 


/**
 * The contractName contract does this and that...
 */
contract contractName {
  constructor() public {}



Push vs Pull

//Push
Push funds to user


//Pull
Let user pull out funds themselves


//Example of Push (bad)

function play() payable{
	//GAME LOGIC

	if(win){
		player.transfer(prize);

	}

} 

//Example of Pull (Good)

mapping(address => uint) prizes;

function play() public{
	//GAME LOGIC

	if(win){
		prizes[player] = prize;
	}
}

function getPrize() public {
	//checks/effects/interactions

	uint prize = prizes[msg.sender];
	prizes[msg.sender] = 0;
	msg.sender.transfer(prize);

}

}