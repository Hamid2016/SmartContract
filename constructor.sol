// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// Base contract
contract Base {
    string public greeting;

    // Function to set a greeting
    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }

    // Function to get the greeting
    function getGreeting() public view returns (string memory) {
        return greeting;
    }
}

// Derived contract that inherits from Base
contract Derived is Base {
    // Additional function to clear the greeting
    function clearGreeting() public {
        greeting = "";
    }
}
