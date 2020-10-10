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

    function getPerson(ID) public view returns(string memory name, uint id, uint age, uint height){
        for (uint i=0; i < people.length; i++){
            if(people[i].id ==ID){
                return Person[i].name;
            }
        }
    }