//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract LearnFunction {
    uint256  hey;
    uint256 internal   newNumber;
    //get data with help of function
    // function getInfo()public view returns (uint256) {
    //     return hey;
    // }
    // function updateData(uint256 _hey) public {
    //     hey=_hey;
    // }
    function addNum(uint256 _a,uint256 _b) public  returns(uint){
        newNumber = _a+_b;
        hey = newNumber;
        return hey;
    }
}

