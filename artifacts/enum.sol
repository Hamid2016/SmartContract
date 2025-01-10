//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Enum {
    //enum represent shipping status
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }
    //default value is the first element in the list
    Status public status;
    // returns uint
    //Pending - 0
    //Shipped-1
    //Accepted-2
    //Rejected-3
    //Cancelled-4
    function get()public view returns(Status) {
        return status;
    }

    //Update status by passing unit into input
    function set(Status _status) public {
        status=_status;

    }
    //You can update to a specific enum like this
    function cancel()public  {
        status = Status.Cancelled;
    }
    //delete resets the enum to its first value,0
    function reset()public  {
        delete status;
        
    } 
}