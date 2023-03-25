// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Mirror.sol";

contract MirrorTest is Test {
    Mirror public mirror;

    function setUp() public {
        mirror = new Mirror();
    }

    function testSimple() public {
        assertEq(mirror.mirror(5), 5);
    }

    function testFuzz(uint256 x) public {
        assertEq(mirror.mirror(x), x);
    }
}
