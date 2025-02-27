//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Event {
    //event declaration
    //up to 3 parameters can be indexed
    //Indexed parameters helps you filter the logs by the indexed parameters
    event Log(address indexed sender,string message);
    event AnotherLog();
    function test()public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();

    }
}