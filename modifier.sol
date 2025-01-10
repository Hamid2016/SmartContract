//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

// modifier are codes that can run before 
// three reasons to use them:resitrict access, validate unputs, guard against reenterency hack

contract Modifier {
    address public onwer;
    uint256 public x=10;
    bool public locked;

    constructor() {
        onwer=msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == onwer, "you are not owner of contract");
        _;//continue the function further 
    }
    modifier validateData(address _addr){
        require(_addr!=address(0), "not valid address");
        _;
    }
    function checkOwner(address _newOwner)public onlyOwner validateData(_newOwner) {
        onwer=_newOwner;
    }
    modifier reEntrancy(){
        require(locked, "No reentrancy");
        locked=true;
        _;
        locked=false;
    }
    function decrement(uint256 i)public reEntrancy {
        x-=1;
        if (i>1) {
            decrement(i-1);
        }
    }
}