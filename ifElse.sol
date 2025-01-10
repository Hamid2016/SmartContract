//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract IfElse {
    uint256 public myNum = 5;
    string public myString;
//     function get(uint256 _num) public returns(string memory myString) {
//         if(_num==5){
            
//             myString="value is 5";
//         }
//         else {
//             myString="not 5";
        
//         }
//     }

    function shortHand(uint256 _num) public returns(string memory) {
        return _num==5 ? myString = "value is 5" : myString="not 5";
    }
}