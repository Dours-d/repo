pragma solidity 0.5.12;

contract People{

    struct Person {
      uint id;
      string name;
      address creator;
      uint age;
      uint height;
      bool senior;
    }

    Person[] private people;

    function createPerson(string memory name, uint id, uint age, uint height) public {
        //This creates a person
        Person memory newPerson;
        newPerson.name = name;
        newPerson.age = age;
        newPerson.height = height;

        if(age >= 65){
           newPerson.senior = true;
        }
        else{
           newPerson.senior = false;
        }
        people.push(newPerson); 
    }

    function getPerson(address ins) public view returns (string memory, uint, uint){
      return (people[ins].name, people[ins].age, people[ins].height);
        
    }
}    