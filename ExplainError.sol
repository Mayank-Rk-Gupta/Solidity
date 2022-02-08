// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract explainError {
    address public sender;
    mapping(address=>uint) public balances;
    constructor(){
        sender=msg.sender;
        balances[sender]=100 ether;
        
    }
    // Using error function for debugging purpose
    error NotEnoughMoney(uint requested, uint available);
    function sendMoney(address reciever , uint amount) public{
        if(amount > balances[msg.sender])
        {
            // revert keyword is used to trigger error function
            revert NotEnoughMoney({requested:amount,available:balances[msg.sender]});
        }
        balances[msg.sender]-=amount;
        balances[reciever]+= amount;

    }
   
}