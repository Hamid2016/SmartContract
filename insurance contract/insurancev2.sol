// SPDX-License-Identifier: MIT
// Declaring the Solidity version
pragma solidity ^0.8.18;

contract InsuranceV2 {

    // Defining a struct to represent an insurance policy
    struct Policy {
        string policyName;      // The name of the policy
        uint256 premium;        // The premium cost for the policy
        uint256 coverageAmount; // The coverage amount of the policy
        bool isActive;          // Whether the policy is active or not
    }

    // Mapping to store multiple policies for each address (insured person)
    // Each address (person) can have multiple policies, so it maps to an array of Policy structs
    mapping(address => Policy[]) public policies;

    // Event declaration to log the creation of a new policy
    // The event will log the address of the insured person, the policy name, premium, and coverage amount
    event PolicyCreated(address indexed insured, string policyName, uint256 premium, uint256 coverageAmount);

    // Function to create a new insurance policy
    // The function takes the policy's name, premium, and coverage amount as arguments
    function createPolicy(string memory _policyName, uint256 _premium, uint256 _coverageAmount) public payable {
        // Creating a new policy and initializing the values
        Policy memory newPolicy = Policy({
            policyName: _policyName,           // Policy name
            premium: _premium,                 // Premium amount
            coverageAmount: _coverageAmount,  // Coverage amount
            isActive: true                     // Setting the policy as active
        });

        // Storing the new policy in the mapping, associated with the caller's address
        policies[msg.sender].push(newPolicy);

        // Emitting an event to log the creation of the policy
        emit PolicyCreated(msg.sender, _policyName, _premium, _coverageAmount);
    }

    // Function to retrieve all policies for the caller's address
    // Returns an array of Policy structs
    function getPolicies() public view returns (Policy[] memory) {
        // Fetching the array of policies associated with the sender (caller)
        return policies[msg.sender];
    }
}