// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract myToken is ERC20{
    constructor() ERC20("Gold Dragon 18","GD18") {
        _mint(msg.sender,70*10**18);
    }

    //by default there are 18 decimals set
}