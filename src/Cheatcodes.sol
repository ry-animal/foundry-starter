pragma solidity ^0.8.13;

contract Cheatcodes {
    uint256 public number;
    uint256 public lastTimestamp;

    function setNumber(uint256 newNumber) public {
        require(block.timestamp > lastTimestamp + 120, "ERR");
        number = newNumber;
        lastTimestamp = block.timestamp;
    }
}