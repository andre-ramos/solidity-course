// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract FundMe{

    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable {
        addressToAmountFunded[msg.sender] += msg.value;   

        // The Oracle Problem: smart contracts are unable to connect with external systems (real world data and events) off-chain
        // Blockchain Oracle: Device that interacts with off-chain world
        // Centralized Oracle are a point of failure because centralization
        // Chain link is a decentralized oracle network


    }
}