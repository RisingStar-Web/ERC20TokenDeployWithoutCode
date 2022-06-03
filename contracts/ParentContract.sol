// contracts/MyNFT.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BasicToken.sol";

contract ParentContract {
    mapping(address => address[]) public tokens;

    constructor() {}

    function createToken(string memory name, string memory symbol, uint256 initialSupply, uint8 decimals) external {
        BasicToken token = new BasicToken(name, symbol, initialSupply, decimals, msg.sender);
        tokens[msg.sender].push(address(token));
    }

    function getTokens(address user) external view returns(address[] memory) {
        return tokens[user];
    }
}