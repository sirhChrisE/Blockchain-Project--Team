// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./voteCasting.sol";
import "./voterVerification.sol";

contract VoterTally {
    VoteCasting public voteCasting;
    VoterVerification public voterVerification;
    uint256 public totalVotes;

    constructor(address _voteCastingAddress, address _voterVerificationAddress) {
        voteCasting = VoteCasting(_voteCastingAddress);
        voterVerification = VoterVerification(_voterVerificationAddress);
    }

    function tallyVotes() external {
        // Check if voting has ended
        require(voterVerification.votingEnded(), "Voting is still ongoing");

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
