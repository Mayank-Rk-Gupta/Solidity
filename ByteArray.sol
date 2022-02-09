// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract BytesArray{
    // 1 byte = 8 bit
    // 1 hexadecimal digit= 4 bit
    // 1 byte = 2 hexadecimal digit
    bytes5 public example1; 
    // output--> bytes5: 0x0000000000 (10 digits means each block is having two hx digits)
    bytes7 public example2; 
    // output--> bytes7: 0x00000000000000 (14 digits means each block is having two hx digits)
    function SetValue() public{
        example1 = "12345";
    // output --> bytes5: 0x3132333435 (Storing the ASCII value in hexadecimal)
        example2 = "abcdefg";
    // output --> bytes7: 0x61626364656667 (Storing the ASCII value in hexadecimal)
    }
}
