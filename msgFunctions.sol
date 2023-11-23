// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

// this solidity contract is to illustrate the global functions in the message context

contract message{
    uint newBalance;
    mapping (address =>uint) public balance;

    function deposit( uint value) public payable returns(address, uint, uint) {
        newBalance += value;
        balance[msg.sender] += value;
        return (msg.sender, msg.value, gasleft());

    }
}
