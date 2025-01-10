//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract DataTypes {
    // bool public hey;//default value for bool is false
    // bool public no = true;

    //uint stands for unsigned integer, means none negative integers diffrent size are available
    // uint8 ;//ranges 0-2**8-1=255
    // uint16 ;//ranges 0-2**16-1=65535

    // uint8 public u8=1;
    // uint public u256=456;
    // uint public u=123; //defaule uint is 256

    //negative number
    // int256 ;//range from -2**256-1 to 2**256-1 
    // int8 public i8=-1;
    // int public i256=456;
    // int public i=-1200;

    //now you add min and max values
    // int public minInt = type(int).min;
    // int public maxInt = type(int).max;
    
    //array
    //in solidity, the data type bytes represent a squence bytes
    //there are two types of bytes
    //---fixed-sized bytes array
    //---dynamically-sized bytes array
    //so when you define bytes in smart contract, you use dynamic bytes
    // bytes1 public a = 0xb5;
    // bytes1 public b;

    address public addr;

    uint public u256=456;
    bytes1 public b;
    bool public hey1;

}