//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract FunctionSolidity {
    function returnMany() public pure returns(uint,bool,uint) {
        return(2,true,1);
    }
    //return values can be named
    //return value can be omitted
    function named()public pure returns (uint x,bool b,uint y) {
        x=1;
        b=true;
        y=5;
    }
    //use destructing assignment when calling another
    //function that returns multiple values
    function destructingAssigment() public pure returns(uint,bool,uint,uint,uint) {
        (uint i,bool b,uint j)=returnMany();
        //Values can be left off
        (uint x,,uint y)=(4,5,6);
        return (i,b,j,x,y);
    }
    // Cannot use map for either input or output
    //can use array for input
    function arrayInput(uint[] memory _arr )public  {
        //can use array for output
    }
    uint[] public arr;
    function arrayOutput()public view returns (uint[] memory) {
        return arr;
    }

    
}

//call function with key-value inputs
contract XYZ {
    function someFunWithManyInputs(uint x,uint y,uint z,address a,bool b,string memory c) public pure returns(uint){
        //
    }
    function callFunc()external pure returns (uint) {
        return someFunWithManyInputs(1, 2, 3, address(0), true, "c");
    }
    function functionWithKeyValue() external pure returns(uint) {
        return someFunWithManyInputs({a:address(0), b:true, c:"c", x:1, y:2, z:3});
    }
    

    
}
