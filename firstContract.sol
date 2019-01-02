pragma solidity ^0.5.0;

contract firstOne{
    
    address linkedContract;
    uint256 total;
    
    function setLinkedContract(address _newContract) public{
        linkedContract = _newContract;
    }
    
    function delegatedCalculation(uint firstNumber, uint secondNumber) public{
        bool status;
        bytes memory result;
        (status, result) = linkedContract.delegatecall(abi.encodePacked(bytes4(keccak256("calculate(uint256,uint256)")), firstNumber, secondNumber));
    }
    
    function getTotal() public view returns (uint256){
        return total;
    }
    
}
