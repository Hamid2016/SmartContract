//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Payable {
    //payable address can receive either 
    address payable public  owner;

    //payable construstor can receive either
    constructor()payable  {
        owner=payable(msg.sender) ;
    }
    //function to deeposite money into contract
    function deposite()public payable  {
        //code
    }
    //this function is not payable then, we will face an error
    function notPayable() public {
        //code
    }
    function withdraw()public   {
        //get amount of either store in this cotract
        uint  amount=address(this).balance;
        //send all the money to owner
        (bool success,)=owner.call{value:amount}("");
        require(success, "faild to send ether");
    }
    //function to transfer ether from this contract to address from input
    function transfer(address payable _to,uint _amount)public  {
        (bool success,)=_to.call{value:_amount}("");
        require(success, "faild to send ether");
    } 
}