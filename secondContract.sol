pragma solidity ^0.5.0;

contract secondOne{
    
    uint256 public result;
    uint256 public total;
    
    function calculate(uint firstNumber, uint secondNumber) public returns (uint256){
        result = firstNumber*secondNumber;
        total = result;
        return result;
    }
    
}
