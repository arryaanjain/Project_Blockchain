// SPDX-License-Identifier: MIT
//Newer versions need licensing line, so add one now (above).

//Creating my first smart contract
pragma solidity ^0.8.26;

//include soldiity compiler, a carate added to tell any newer version
//is also cool!, you may also use >= and  <= cobinations to choose 
//a compiler between specific versions.

//defining a contract
contract SimpleStorage {
    //adding simple data types, the A,B,Cs of any language
    // boolean, uint, int, address, bytes
    bool hasFavouriteNumber = false; //a boolean variable
    uint num = 123; //default is 256bit, however, just add uint8, uint16 for 
    //8, 16 bits, or more.
    //better to be descriptive for numbers
    uint256 num1 = 5;
    string text = "Test";
    int256 newInt = -9;
    address soAddress = 0xdCad3a6d3569DF655070DEd06cb7A1b2Ccd1D3AF;
    bytes32 someBytes = "cat"; //converted to bytes, default is any size
}

contract SimpleStorageNum {
    uint256 public favNumber; //initialized to 0
    
    function store(uint256 _favNumber) public { //A new public function
        favNumber = _favNumber;
        favNumber += 1;
    }

    //address of this smart comtract after test deployment:
    //0xd9145CCE52D386f254917e481eB44e9943F39138
    //after storing num, it aint visible cause visibility mode private,
    //add public to variable favNumber

    //visibility modes: public, private, external, internal

    function retrieve() public view returns(uint256) {
        return favNumber;
    }
    //functions that have view, pure keywords do not take gas, but 
    //gas is applicable when such functions are called by other functions.
}

contract ArrayBasics {
    //user defined datatype
    //making an object of struct
    People public person = People({favNum: 2, name: "Arryaan"});

    struct People {
        //programming with c nostalgia :)
        uint256 favNum;
        string name;
    }

    //for many many records, here is an array:
    People[] public people; //array obj
}


