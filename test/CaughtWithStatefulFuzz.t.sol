// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/StdInvariant.sol";
import "../src/CaughtWithStatefulFuzz.sol";

contract CaughtWithStatefulFuzzTest is StdInvariant, Test  {
    CaughtWithStatefulFuzz public  caughtWithStatefulFuzz;

    function setUp() public {
        caughtWithStatefulFuzz = new CaughtWithStatefulFuzz();
        targetContract(address(caughtWithStatefulFuzz));
    }