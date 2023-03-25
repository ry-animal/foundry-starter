// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Cheatcodes.sol";

contract CheatcodesTest is Test {
    Cheatcodes public cheatcodes;

    function setUp() public {
        cheatcodes = new Cheatcodes();
    }

    function testFailSetNumber() public {
        cheatcodes.setNumber(5);
    }

    function setNumber() public {
        // Foundry cheatcodes
        vm.warp(150);
        cheatcodes.setNumber(5);
    }
}
