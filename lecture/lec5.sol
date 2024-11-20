// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec5{
    //1. public
    uint256 public a = 5;

    //2. private
    uint256 private a2 = 5;
}

contract Public_example{
    uint256 a = 3;

    function changeA(uint256 _value) external{
        a = _value;
    }
    function get_a() view external returns (uint256){ //function에는 view와 pure을 넣을 수 있다
        return a;
    }
}

contract Public_example_2{
    Public_example instance = new Public_example(); // 사용하기 위해서는 인스턴스화를 시켜야 함

    function changeA_2(uint256 _value) public{
        instance.changeA(_value);
    }

    function use_public_example_a() view public returns (uint256){
        return instance.get_a();
    }
}