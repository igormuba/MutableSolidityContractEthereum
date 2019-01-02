pragma solidity ^0.5.0;

contract firstOne{
    
    address linkedContract;
    uint256 total;
    
    uint256 timesThisContractChanged;
    address[] historyOfPreviousContracts;
    
    function setLinkedContract(address _newContract) public{
        timesThisContractChanged++;
        historyOfPreviousContracts.push(linkedContract);
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
    
    function getTimesThisContractChanged() view public returns(uint256){
        return timesThisContractChanged;
    }
    
    function getHistoryOfPreviousContracts() view public returns(address[] memory){
        return historyOfPreviousContracts;
    }
    
}
