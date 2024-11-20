// SPDX-License-Identifier: GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract A{
    string public name;
    uint256 public age;

    constructor(string memory _name, uint256 _age){
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age) public{
        name = _name;
        age = _age;
    }
}

contract B{
    A instance_1 = new A("Alice", 52);
    
    function get() public view returns(string memory, uint256){
        return (instance_1.name(), instance_1.age());
    }

    function change(string memory _name, uint256 _age) public{
        instance_1.change(_name, _age);
    }
}