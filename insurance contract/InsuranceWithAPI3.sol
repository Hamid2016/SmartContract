// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@api3/airnode-protocol/contracts/rrp/requesters/RrpRequesterV0.sol";

contract MyAirnodeContract is RrpRequesterV0 {
    address public airnode; // Address of the Airnode
    bytes32 public endpointId; // The ID of the endpoint
    address public sponsorWallet; // Address of the sponsor wallet
    uint256 public latestResponse; // Latest API response

    // Constructor
    constructor(address _airnodeRrp) RrpRequesterV0(_airnodeRrp) {}

    // Function to set the Airnode details
    function setAirnodeDetails(
        address _airnode,
        bytes32 _endpointId,
        address _sponsorWallet
    ) external {
        airnode = _airnode;
        endpointId = _endpointId;
        sponsorWallet = _sponsorWallet;
    }

    // Function to make a request
    function makeRequest(bytes calldata parameters) external {
        airnodeRrp.makeFullRequest(
            airnode,
            endpointId,
            address(this),
            sponsorWallet,
            address(this),
            this.fulfill.selector,
            parameters
        );
    }

    // Callback function to handle the response
    function fulfill(
        bytes32 requestId,
        bytes calldata data
    ) external onlyAirnodeRrp {
        latestResponse = abi.decode(data, (uint256));
    }
}
