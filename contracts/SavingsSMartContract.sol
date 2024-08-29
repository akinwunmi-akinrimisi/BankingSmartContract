// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract SavingsSmarContract {
    address owner;
    mapping(address => uint256) balance;

    constructor (){
        msg.sender == owner;
    }

    modifier onlyOwner(){
        require(msg.sender==owner, "only owner can perform this operation");
        _;
    }

// deposite money from user account into contract 
// - amount to be deposited 
// - operation is performed by account owner 
// - account owner must have enough money to send out: balance >=amount
// - amount to be sent must be greater than zero to avoid waste of gas 
// - operation not to be initiated by zero address 
// - receiving account must not be zero address 
// - money is going from user account: user account to be deducted
// - money is going into the contract 

    function depositeFunds(uint256 _amount) onlyOwner external{
        require(_amount>0, "amount to be sent must be greater than zero");
        require(balance[msg.sender]>= _amount, "you dont have enough money");
        require(msg.sender != address(0));

        balance[msg.sender] -= _amount;


    }


}


















// withdraw from contract back into user account 
// send money from user account into another account 
// send money from contract into another account 
// check contract balance 
// check personal balance 
// check any balance 

