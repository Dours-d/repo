import "./People.sol";
pragma solidity 0.5.12;

contract Workers is People{
	struct Worker {
      uint worker_salary;
      bool isBoss;
    }

	mapping (address => uint) public salary;
	
	function createWorker(string memory name, uint age, uint height, uint worker_salary, bool isBoss) public payable {

		require (age <= 75, "Age needs to be below 75");
		createPerson(name, age, height);
		salary[msg.sender] += worker_salary;
	    
	}

	address[] private worker_salary;

	function fireWorker(address _toFire, bool _isBoss) public {
      	require(Worker[msg.sender]._isBoss == true, "You are not the Boss to fire him !");
      	require(_toFire != msg.sender, "You're the boss, You cannot fire yourself !");
      	deletePerson(address _toFire);
      	delete salary[_toFire];
   }
}