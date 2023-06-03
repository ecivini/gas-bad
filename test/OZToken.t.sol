// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/OZToken.sol";

contract OZTokenTest is Test {
    OZToken public token;
    address public target;

    function setUp() public {
        token = new OZToken();
        target = address(0x000000000000000000000000000000000000dEaD);
    }

    function testName() public {
        string memory name = token.name();
        assertEq(name, "Test");
    }

    function testSymbol() public {
        string memory symbol = token.symbol();
        assertEq(symbol, "TEST");
    }

    function testDecimals() public {
        uint8 decimals = token.decimals();
        assertEq(decimals, 6);
    }

    function testTransfer() public {
        uint amount = 5000 * 10**6;
        token.transfer(target, amount);
    }

    function testApprove() public {
        uint amount = 5000 * 10**6;
        token.approve(address(this), amount);
    }

    function testTransferFrom() public {
        address from = address(0xABCD);

        token.transfer(from, 1e6);
        vm.prank(from);
        token.approve(address(this), 1e6);

        assertTrue(token.transferFrom(from, target, 1e6));
    }

}
