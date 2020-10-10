pragma solidity 0.5.0;

contract Test1 {

  uint256 private id;

  constructor ()
  public
  {
    id = 0;
  }

  struct Person {
    string name;
    uint8 id;
    uint256 registrationTimeStamp;
  }

  mapping (address => Person) people;

  function createPerson (string memory name, uint8 id, uint256 registrationTimeStamp ) public {
        //This creates a person
        Person memory newPerson;
        newPerson.name = name;
        newPerson.id = id;
        newPerson.registrationTimeStamp = registrationTimeStamp;

  }
}