//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ArrayRemovingByShifting {
    uint[] public arr;
    function remove(uint _index)public  {
        require(_index<arr.length, "index out of bound");
        for (uint i=_index; i<arr.length-1; i++) 
        {
            arr[i]=arr[i+1];
        }
        arr.pop();
    }
    function test() external {
        arr=[1,2,3,4,5];
        remove(2);
    }
}