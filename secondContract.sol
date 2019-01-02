pragma solidity ^0.4.6;

contract secondContract {
    uint returnedValue;
    address public linkedContract;
    address[] public historyOfContracts;






    function calculate(uint256 firstNumber, uint256 secondNumber) public{
        returnedValue = firstNumber*secondNumber;
    }
    function getFirstUint() public returns(uint256){
        return returnedValue;
    }
}
