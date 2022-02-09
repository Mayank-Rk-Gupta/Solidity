// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;
contract SendEther{
   
    receive() external payable{}
    function checkBalance() public view returns(uint){
        return address(this).balance;
    }
    function checkBalance(address receiver) public view returns (uint){
        return receiver.balance;
    }
    function SendEtherViaSend(address payable receiver,uint amount) public{
        /*
        send function return the status as a boolean. It has a gas limit of 2300 gas
        It is always good advice to use require function with send because it will return 
        everthing in a condition of failure
        */
        bool sent = receiver.send(amount);
        require(sent,"Transaction has been failed!");
    }
    function SendEtherViaTransfer(address payable receiver,uint amount) public {
        /*
        The gas limit of transfer function is 2300 gas However by default in case of 
        failue it returns everything(No requirements to write require function manually)
        */

        receiver.transfer(amount);
    }
    function SendEtherViaCall(address payable receiver,uint amount) public {
        /*
        The gas limit of transfer function is define by user.It is always good advice to use
        require function with send because it will return everthing in a condition of failure
        */
        (bool send,) = receiver.call{value:amount}("");
        require(send,"Transaction has been failed!");
    }

}