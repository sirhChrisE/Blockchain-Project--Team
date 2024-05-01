pragma solidity ^0.8.0;

contract VotingSystem {
    struct Voter {
        bool isRegistered;  // Flag to indicate whether the voter is registered
        string email;       // Voter's email address
        string phoneNumber; // Voter's phone number
        string birthDate;   // Voter's birth date
        string driverLicense; // Voter's driver's license
    }

    mapping(address => Voter) public voters;

    // Function to verify voter's information
    function verifyVoter (
        address _voterAddress,     // Ethereum address of the voter
        string memory _email,      // Email provided by the voter
        string memory _phoneNumber, // Phone number provided by the voter
        string memory _birthDate,  // Birth date provided by the voter
        string memory _driverLicense // Driver's license provided by the voter
    ) public view returns (bool) { // View function that returns a boolean indicating if the voter is verified

        // Retrieve voter's information from the mapping
        Voter storage voter = voters[_voterAddress];
        
        // Check if the voter is registered
        if (!voter.isRegistered) {
            return false; // Voter is not registered
        }
        
        // Compare voter's information
        if (keccak256(bytes(voter.email)) != keccak256(bytes(_email)) ||
            keccak256(bytes(voter.phoneNumber)) != keccak256(bytes(_phoneNumber)) ||
            keccak256(bytes(voter.birthDate)) != keccak256(bytes(_birthDate)) ||
            keccak256(bytes(voter.driverLicense)) != keccak256(bytes(_driverLicense))) {
            return false; // Information doesn't match
        }

        // All checks passed, voter is verified
        return true;
    }
}
``
