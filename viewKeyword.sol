//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ViewKeyword {
    uint256 Num1 = 2;
    uint256 Num2 = 7;

    //using view to check the state variables
    function getResults() public view returns(uint256,uint256) {
        return (Num1,Num2);
    }

    function getResults1() public pure  returns(uint256 product, uint256 total){
        uint256 num1 = 20;
        uint256 num2 = 7;
        product = num1*num2;
        total = num1+num2;
    }
}