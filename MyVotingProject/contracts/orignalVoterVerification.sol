
function verifyVoter (address _voterAddress, string memory _email, string memory _phoneNumber, string memory_birthDate, string memory _driverlicense) public view returns (bool) Voter storage voter = voters[_voterAddress];
    if (!voter.isRegistered) {
        // Voter is not registered
        return false;
    }
    
    if (keccak256(bytes (voter.email)) != keccak256(bytes(_email))) {
        // Email does not match
        return false;
    }
    
    if (keccak256(bytes (voter.phoneNumber)) != keccak256(bytes(_phoneNumber))) {
        // Phone number does not match
        return false;
    }
    
    if (keccak256(bytes (voter.birthDate)) != keccak256(bytes(_birthDate))) {
        // Birth date does not match
        return false;
    }
        
    if (keccak256(bytes(voter.driverlicense)) != keccak256(bytes(_driverLicense))) {
        // Driver's license does not match
        return false;

    // All checks passed, voter is verified return true;
    return true;
}
