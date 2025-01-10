//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Arrays {
    //several ways to initialize arrays
    uint[] public arr;
    uint[] public arr1=[1,2,10];
    //fixed sized array, all elements initialize to zero
    uint[10] fixedSizeArr;

    function get(uint _i)public view returns (uint) {
        return arr[_i];
    }

    //solidity can return entire array
    function getArr()public view returns (uint[] memory) {
        return arr;
    }
    function push(uint _i) public {
        //Appened to array which increase array length by one
        arr.push(_i);
    }
    function pop()public  {
        //removing last element from array-decrease array length by one
        arr.pop();
    }
    function getLength()public view returns(uint)  {
        return arr.length;
    }
    function remove(uint _index)public  {
        //delete not change array length.reset value to its default
        delete arr[_index];
    }

}