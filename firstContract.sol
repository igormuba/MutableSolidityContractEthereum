pragma solidity ^0.4.6;

contract firstContract {
    uint256 returnedValue=1;
    address public linkedContract;
    address[] public historyOfContracts;



    
    function changeContract(address newContract) public returns (bool){
        historyOfContracts.push(linkedContract);
        address oldContract = linkedContract;
        linkedContract = newContract;

        return true;
    }

    function delegatedCalculation(uint256 firstNumber, uint256 secondNumber) public{
       linkedContract.delegatecall(bytes4(keccak256("calculate(uint256,uint256)")), firstNumber, secondNumber);
    }
    
    function getReturnedView() public returns(uint256){
        return returnedValue;
    }
    
    function getLinkedContract() public returns(address){
        return linkedContract;
    }
    

}
