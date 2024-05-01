// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./VoterRegistry.sol";

contract VoterTally {
    VoterRegistry public voterRegistry;
    uint256 public totalVotes;

    constructor(address _voterRegistryAddress) {
        voterRegistry = VoterRegistry(_voterRegistryAddress);
    }

    function tallyVotes() external {
        // Get the total number of registered voters
        uint256 totalVoters = voterRegistry.getNumberOfVoters();
        
        // Reset totalVotes to zero before tallying
        totalVotes = 0;
        
        // Iterate through each voter and tally their vote
        for (uint256 i = 0; i < totalVoters; i++) {
            address voterAddress = voterRegistry.getVoterAddressAtIndex(i);
            VoterRegistry.Voter memory voter = voterRegistry.voters(voterAddress);
            if (voter.digitalSignature) {
                totalVotes++;
            }
        }
    }
}