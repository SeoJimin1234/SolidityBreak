// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec4{
    /*
    function 이름 () public{ // {public, private, internal, external}으로 변경 가능
        // 내용
    }
    */

    uint256 public a = 3;
    //1. parameter와 return 값이 없는 function 정의
    function changeA1() public{
        a=5;
    }
    //2. parameter은 있고 Return 값이없는 function 정의
        function changeA2(uint256 _value) public{
        a=_value;
    }

    //3. prarameter와 return값 모두 있는 function 정의
        function changeA3(uint256 _value) public returns(uint256){
            a = _value;
            return a;
    }
}