// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Insurance {

    // Defining a struct to represent an insurance policy
    struct Policy {
        string policyName;      // The name of the policy
        uint256 premium;        // The premium cost for the policy
        uint256 coverageAmount; // The coverage amount of the policy
        bool isActive;          // Whether the policy is active or not
    }

    // Mapping to store multiple policies for each address (insured person)
    mapping(address => Policy[]) public policies;

    // Event declaration to log the creation of a new policy
    event PolicyCreated(address indexed insured, string policyName, uint256 premium, uint256 coverageAmount);

    // Function to create a new insurance policy
    function createPolicy(string memory _policyName, uint256 _premium, uint256 _coverageAmount) public {
        Policy memory newPolicy = Policy({
            policyName: _policyName,           // Policy name
            premium: _premium,                 // Premium amount
            coverageAmount: _coverageAmount,  // Coverage amount
            isActive: true                     // Setting the policy as active
        });

        policies[msg.sender].push(newPolicy);

        emit PolicyCreated(msg.sender, _policyName, _premium, _coverageAmount);
    }

    // Function to retrieve all policies for the caller's address
    function getPolicies() public view returns (Policy[] memory) {
        return policies[msg.sender];
    }

    // Owner of the contract (for clean-up and self-destruction)
    address public owner;

    constructor() {
        owner = msg.sender;  // Setting the owner to the address that deploys the contract
    }

    // Function to clean-up the contract’s internal state (e.g., deleting mappings)
    function _cleanUp() private {
        // Add operations here to delete mappings, arrays, etc.
        // Example: Delete all policies associated with the sender
        delete policies[msg.sender];
    }

    // Function to destroy the contract and transfer remaining Ether to the owner
    function destroyContract() public onlyOwner {
        _cleanUp(); // Clean up the contract's state
        selfdestruct(payable(owner)); // Transfer remaining Ether to the owner and self-destruct the contract
    }

    // Modifier to restrict access to the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can perform this action");
        _;
    }
}
