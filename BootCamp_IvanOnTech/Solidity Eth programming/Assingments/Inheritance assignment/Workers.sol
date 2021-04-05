import "./People.sol";
pragma solidity 0.5.12;

contract Workers is People{
	
	struct Worker {
      address worker;
      address theBoss;
      uint32 worker_salary;
      
    }

	mapping (address => uint) public salary;

	
	
	function createWorker(string memory name, uint age, uint height, address worker,address _theBoss, uint32 _salary) public payable {

		require (age <= 75, "Age needs to be below 75");
		require (worker != _theBoss);
		createPerson(name, age, height);
		salary[worker] += _salary;
		
	}

	

	function fireWorker(address _toFire, address theBoss) public payable {
      	require( msg.sender == theBoss, "You are not the Boss to fire him !");
      	require(_toFire != msg.sender, "You're the boss, You cannot fire yourself !");
      	deletePerson(_toFire);
      	delete salary[_toFire];
   }
}
