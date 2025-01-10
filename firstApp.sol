//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract NFTCount {
    uint256 public numberOfNFT;

    //Check total number of NFT
    function checkTotalNFT()public view returns(uint256) {
        return numberOfNFT;
    }

    //This function will increment the NFT number
    function addNFT()public  {
        numberOfNFT +=1;
    } 

    //This function will decrement the NFT number by 1
    function decreaseNFT() public {
        numberOfNFT -=1;
    }
}