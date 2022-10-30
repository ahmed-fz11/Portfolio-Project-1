// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract TokenSale{
    address owner;
    IBEP20 ibep20;

    uint256 constant firstPhaseFee = 0.005 ether;
    uint256 constant secondPhaseFee = 0.01 ether;
    uint256 constant thirdPhaseFee = 0.1 ether;

    uint256 startTime;

    constructor(address _token){
        owner=msg.sender;
        startTime = block.timestamp;
        ibep20 = IBEP20(_token);
    }

    modifier onlyOwner{
        require(msg.sender==owner,"YOURE NOT THE OWNER");
        _;
    }

    function buyToken()public payable{
        if(block.timestamp <= startTime + 30 days){
            require(msg.value>=firstPhaseFee,"You must buy minimum 1 token");
            uint256 calcToken = msg.value/firstPhaseFee ;
            ibep20.mintTo(msg.sender,calcToken);
        }
        else if(block.timestamp <= startTime + 60 days){
            require(msg.value>=secondPhaseFee,"You must buy minimum 1 token");
            uint256 calcToken = msg.value/secondPhaseFee ;
            ibep20.mintTo(msg.sender,calcToken);
        }
        else{
            require(msg.value>=thirdPhaseFee,"You must buy minimum 1 token");
            uint256 calcToken = msg.value/thirdPhaseFee ;
            ibep20.mintTo(msg.sender,calcToken);
        }
    }
}