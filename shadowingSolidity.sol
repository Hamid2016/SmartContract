//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
//inherent state variables
//unlike function, sate variables can not override in old version

contract A {
    string public name="Contract A";
    function getName()public view returns(string memory) {
        return name;
    }
}
contract C is A {
    constructor() {
        name = "Contract C";
    }
    //C.getName returns "Contract C"
}
    
