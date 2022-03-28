// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract SimpleStorage {
    
    // unsigned int
    uint256 favoritenumber;
    bool favbool;


    struct People {
        uint256 favoritenumber;
        string name;        
    }

    People[] public people;
    // string map to uint256
    mapping(string => uint256) public nameToFavNumber;

    // storage : variable data will persist after function executes
    // memory: after execution deletes variable data
    // you must use string memory to work
    function addPerson(string memory _name, uint256 _favnumber) public{
        people.push(People(_favnumber,_name));
        nameToFavNumber[_name] = _favnumber;
    }

    function store(uint256 _favnumber) public {
        favoritenumber = _favnumber;
    }



    // Both below does not modify the blockchain
    // view keyword only reads from the blockchain, without transact
    // pure keyword, only does math for example but it does not save
    function retrieve() public view returns(uint256) {
        return favoritenumber;
    }
    /*
    int256 favorint = -5;
    address adrresfavor = 0x8d6cF2Fd948C29cC41D4F835f14834d7cdaC853C;
    bool favoritebool = false;
    string stringm = "Hello World";
    bytes32 fabytes = "cat";
    */

}