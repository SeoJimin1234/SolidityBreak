// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract Lec14{
    event numberTracker(uint256 num, string str);
    //5만 필요하다면 5가 적힌 이벤트를 가져올 수 없음
    event numberTracker2(uint256 indexed num, string str); //num을 통하여 특정 이벤트 값들을 가지고 올 수 있다
//10개의 이벤트가 있다면 num은 1부터~10까지 이벤트가 있을때 우리가 5가 필요하다면 5를 입력해서 가져올 수 있음
//원하는 값을 필터해서 가져올 수 있다
    uint256 num =0;
    //이 함수는 str을 받아서 numberTracker을 출력, num이 오름
    function PushEvent(string memory _str)public {
        emit numberTracker(num, _str);
        emit numberTracker2(num, _str);
        num++;
    }
}