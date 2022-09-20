// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract myToken is ERC20{
    constructor() ERC20("Gold Dragon 8","GD8") {
        _mint(msg.sender,70*10**8);
    }

    function decimals() public view virtual override returns (uint8) {
        return 8;
    }
}