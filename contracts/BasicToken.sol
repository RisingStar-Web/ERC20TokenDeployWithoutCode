// contracts/MyNFT.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract BasicToken is ERC20 {
    uint8 private _decimals = 18;
    constructor(string memory name, string memory symbol, uint256 initialSupply, uint8 decimals, address owner) ERC20(name, symbol) {
        _mint(owner, initialSupply * 10 ** decimals);
        _decimals = decimals;
    }
}