pragma solidity ^0.4.6;

contract thirdContract {
    uint256 returnedValue=1;
    address public linkedContract;
    address[] public historyOfContracts;

    
    function calculate(uint256 firstNumber, uint256 secondNumber) public{
        returnedValue = firstNumber+secondNumber;
    }
}
