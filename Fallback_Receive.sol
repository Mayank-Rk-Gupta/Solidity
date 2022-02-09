// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;
/*
->Fallback Function
It is executed when a non-existent function is called on the contract
It is required to-be marked external
It has - no - name,
It has- no-arguments
It can not return- any - thing.
It can be defined one-per-contract
If not marked payable, it will throw exception if contract receives-ether
It's main- use is to directly send the ETH to-contract
->Receive Function
same as fallback function only one difference is Fallback can be used 
     for sending ether and data while receive is used only for sending ether
*/

contract Fallback {

    event log(string _function,address _sender,uint _val,bytes _data);
    fallback() external payable{
        emit log("fallback",msg.sender,msg.value,msg.data);
    }
    receive () external payable{
        emit log("receive",msg.sender,msg.value,'');
    }

}
