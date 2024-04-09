/* 
    Command     truffle test    (runs the test script)
    works with MyVotingProject\migrations\3_deploy_hello_world.js
    and MyVotingProject\test\hello_world.js

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    // This function doesn't change state, cost gas only when called by a transaction.
    function sayHello() public pure returns (string memory) {
        // Example assertion to demonstrate usage; always true in this case.
        assert(bytes("Hello, World!").length > 0);

        return "Hello, World!";
    }
}
