// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

/* 
In Remix IDE
Red Button-> Payable 
Blue-> pure/view function or state variable
Yellow-> simple function
*/

contract Payable{

    /*
    constructor() payable{} 
    If I make constructor as payable I am able to send money in contract address only once while deploying
    */


    function getEth() public payable{

    }
    function Balance() public view returns (address,uint)
    {
        return(address(this),address(this).balance);
    }
}
