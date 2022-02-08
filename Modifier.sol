// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract explainModifier {
    address public minter;
    constructor(){
        minter=msg.sender;
    }
    mapping(address=>uint) balances;
    modifier OnlyMinter(){
        require(msg.sender == minter,"Only minter can call this function");
        _;
    }
    function SetAmmount(address reciever, uint amount) public OnlyMinter
    {
        balances[reciever]+= amount;

    }
}