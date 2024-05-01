// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract voteCasting {
    struct Voter {
        string physical_address;
        string email;
        string phoneNumber;
        string birthDate;
        bool digitalSignature;
        string driverLicense;
    }

    mapping(address => Voter) public voters;

    function castVote(string memory _email, string memory _phoneNumber, string memory _birthDate, bool _digitalSignature, string memory _driverLicense) public {
        require(bytes(_email).length > 0, "Email is required");
        require(bytes(_phoneNumber).length > 0, "Phone number is required");
        require(bytes(_birthDate).length > 0, "Birth date is required");
        require(_digitalSignature, "Digital signature is required");
        require(bytes(_driverLicense).length > 0, "Driver's license or state ID is required");

        voters[msg.sender] = Voter({
            physical_address: "",
            email: _email,
            phoneNumber: _phoneNumber,
            birthDate: _birthDate,
            digitalSignature: _digitalSignature,
            driverLicense: _driverLicense
        });
    }
}
