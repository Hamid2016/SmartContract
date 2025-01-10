//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// Base contract with an enum
contract Base {
    enum Status { Pending, Active, Inactive, Closed }

    // State variable using the enum
    Status public currentStatus;

    // Function to set the status
    function setStatus(Status _status) public {
        currentStatus = _status;
    }

    // Function to get the status
    function getStatus() public view returns (Status) {
        return currentStatus;
    }
}

// Derived contract that inherits the enum
contract Derived is Base {
    // Function to reset the status to Pending
    function resetStatus() public {
        currentStatus = Status.Pending;
    }

    // Function to activate the status
    function activateStatus() public {
        currentStatus = Status.Active;
    }
}
