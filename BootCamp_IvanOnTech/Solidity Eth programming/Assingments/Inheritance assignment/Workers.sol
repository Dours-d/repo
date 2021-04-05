import "./People.sol";
pragma solidity 0.5.12;

contract Workers is People{
	
	struct Worker {
      address worker
      address theBoss;
      uint worker_salary;
      
    }

	mapping (address => uint) public salary;

	
	
	function createWorker(string memory name, uint age, uint height, address worker,address theBoss) public payable returns (address _theBoss, uint worker_salary) {

		require (age <= 75, "Age needs to be below 75");
		require (worker != theBoss);
		createPerson(name, age, height);
		salary[msg.sender] += worker_salary;
		theBoss = _theBoss;
	}

	

	function fireWorker(address _toFire, address theBoss) public {
      	require( msg.sender == theBoss, "You are not the Boss to fire him !");
      	require(_toFire != msg.sender, "You're the boss, You cannot fire yourself !");
      	deletePerson(_toFire);
      	delete salary[_toFire];
   }
}