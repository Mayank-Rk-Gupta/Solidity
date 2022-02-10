// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Enum{

    enum Status{
        pending,shipped,accepted,rejected
    }
    Status public status;
    function setStatus(Status _status) public {
        status=_status;
    }
    function getStatus() public view returns(Status){
        return status;
    }
    function resetStatus() public{
        delete status;
    }

}