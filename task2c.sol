// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract myToken is ERC20{
    constructor() ERC20("Copper 10","CP10") {
    }

    function create_token(uint256 _amount) public {
        _mint(msg.sender,_amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return 10;
    }

}