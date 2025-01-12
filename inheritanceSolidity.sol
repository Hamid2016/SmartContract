//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/* Graph of inheritance
A is parent contract
B and C inherent from A
D E and F inherent from B
*/
contract A {
    function foo()public pure virtual returns (string memory) {
        return "A";
    }
}

//B inherant from A contract by 'is' keyword
contract B is A{
    //Override A.foo()
        function foo()override  public pure virtual returns (string memory) {
        return "B";
    }
}

contract C is A {
    function foo()override public pure virtual returns (string memory) {
        return "C";
    }
}

//contracts can inherit from several contracts
contract D is B,C {
    //D.foo() returns "C"
    //since C is the right most parent contract with function foo()
        function foo()override(B,C) public pure virtual returns (string memory) {
        return super.foo();
    }
}
    
contract E is C,B {
    //E.foo() returns "B"
    function foo()override(C,B) public pure virtual returns (string memory) {
        return super.foo();
    }
}

contract F is A,B {
    function foo()override(A,B) public pure virtual returns (string memory) {
    return super.foo();
    }
}   