//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract DataLocation {
    uint[] public arr;
    mapping (uint=>address)map;
    struct MyStruct{
        uint foo;
    }
    mapping (uint=>MyStruct)myStructs;
    function f()public  {
        //call _f the function with state variables
        _f(arr,map,myStructs[1]);
        //get a struct from a mapping
        MyStruct storage myStructs=myStructs[1];
        //create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
        }
    function _f(
        uint[] storage _arr,
        mapping (uint => address)storage _map,
        MyStruct storage _myStruct
    )internal {
        //do sth with storage variable
    }
    //u can return memory variables
    function g(uint[] memory _arr) public returns (uint[] memory) {
        //sth
    }
    function h(uint[] calldata _arr)external  {
        //do sth with calldata array
    }

}