// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol"; // ERC20 token from OpenZeppelin (OZ).

contract LW3Token is ERC20 {
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        _mint(msg.sender, 10 * 10 ** 18);
    }
}

// _mint is an internal function from ERC20 that gives token to a specified user
// msg.sender is the user
// 10 * 10 ** 18 stands for 10 LW3Token calculated that way to remove decimal places since currencies don't have a decimal