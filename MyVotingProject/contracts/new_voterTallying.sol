// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./VoteCasting.sol";

contract VoterTally {
    VoteCasting public voteCasting;
    uint256 public totalVotes;

    constructor(address _voteCastingAddress) {
        voteCasting = VoteCasting(_voteCastingAddress);
    }

    function tallyVotes() external {
        // Get the total number of registered voters
        uint256 totalVoters = voteCasting.totalRegisteredVoters();
        
        // Reset totalVotes to zero before tallying
        totalVotes = 0;
        
        // Iterate through each voter and tally their vote
        for (uint256 i = 0; i < totalVoters; i++) {
            address voterAddress = voteCasting.registeredVoterAtIndex(i);
            bool voted = voteCasting.hasVoted(voterAddress);
            if (voted) {
                totalVotes++;
            }
        }
    }
}
