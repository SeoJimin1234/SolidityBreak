// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;
 
contract lec18{
    
    //배열 정의
    uint256[] public ageArray;
    uint256[10] public ageFixedSizeArray;
    string[] public nameArray= ["Kal","Jhon","Kerri"];
  
	  //배열 length 구하기 -> 배열 이름.length
    function AgeLength()public view returns(uint256) {
        return ageArray.length;
    }
    
    //배열에 추가할때 .push -> 자료형 주의!
    //인덱스는 0부터 시작
    function AgePush(uint256 _age)public{
        ageArray.push(_age);
    }
    
    //값 가져오기 -> 배열이름[인덱스]
    function AgeGet(uint256 _index)public view returns(uint256){
        return ageArray[_index];
    }
    //배열 삭제하는 법 두가지 있음->pop, delete
    //pop-> 제일 최신의 값을 삭제
    function AgePop()public {
        ageArray.pop();
    }
    
    //delete -> 인덱스를 통해 원하는 것을 지울 수 있음
    function AgeDelete(uint256 _index)public {
        delete ageArray[_index];
    }
    function AgeChange(uint256 _index, uint256 _age)public{
        ageArray[_index] = _age;
    }


}