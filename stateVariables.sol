//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;


contract GlobalVariables{
    address public owner;
    address public myBlockHash;
    uint256 public difficulty;
    uint256 public gasLimit;
    uint256 public number;
    uint256 public timeStamp;
    uint256 public value;
    uint256 public nowOn;
    address public origin;
    uint256 public gasPrice;
    bytes public callData;
    bytes4 public firstFour;








    constructor() {
        owner=msg.sender;
        //0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
        myBlockHash=block.coinbase;
        difficulty=block.prevrandao;
        
        gasLimit=block.gaslimit;
        number=block.number;
        timeStamp=block.timestamp;
        gasPrice=tx.gasprice;
        origin=tx.origin;
        callData=msg.data;
        firstFour=msg.sig;
        
    }
}