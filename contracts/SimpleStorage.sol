// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 storageNumber;

    // Creating Struct i.e like objects in javascript or a simplfied class with attributes
    struct EvenStorage{
        string evenName;
        uint256 evenNumber;
    }
    //An Array of Unsigned Integer values
    uint256[] public storageNumberArray; 

    // An Array of Even Number Values
    EvenStorage[] public evenArrays;

    //Mapping Like python dictionary
    mapping(string => uint256) public dictionary;

    function setStorageNumber(uint256 _storageNumber, string memory mapName) public {
        storageNumber = _storageNumber;
        storageNumberArray.push(_storageNumber);// Adding into the array.
        if(_storageNumber % 2 == 0){
            evenArrays.push(EvenStorage("2",_storageNumber));
        }
        dictionary[mapName] = _storageNumber;
    }
    function getStorageNumber() public view returns(uint256) {
        return storageNumber;
    }
}