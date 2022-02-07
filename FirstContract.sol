// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Storedata{
    uint data;
    function setData(uint Number) public{
        data = Number;
    }
    function getData() public view returns(uint) {
        return data;
    } 
}