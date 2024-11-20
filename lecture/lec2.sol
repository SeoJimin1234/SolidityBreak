// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec2{
    //boolean 정의 : true/false
    bool public b = false;

    // ! || == &&
    bool public b1 = !false; //true
    bool public b2 = false || true; //true
    bool public b3 = false==true; //false
    bool public b4 = false && true; // false

    //bytes 1~32
    bytes4 public bt = 0x12345678;
    bytes public bt2 = "STRING";

    //address : 
    address public addr = 0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B;

    //int vs unit

    //int8
    //2^7 ~ 2^7 -1
    int8 public it = 4;

    //uint3
    //0!2^8-1
    uint256 public uit = 132213;
}