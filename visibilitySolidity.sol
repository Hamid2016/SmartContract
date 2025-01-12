//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Base {
    
    function privateFunction()private pure returns(string memory) {
        return "private function called";
    }

    function testPrivateFunc() public pure returns(string memory) {
        return privateFunction();
    }

    //Internal function can be called :inside the contract and inside contract which inherit the contract
    function internalFunc()internal pure returns (string memory) {
        return "internal function called";
    }
    function testInternalFunc()public pure virtual returns (string memory) {
        return internalFunc();
    }

}

contract Chilid is Base {
    
}