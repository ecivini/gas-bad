// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../../src/ERC721/SoladyERC721.sol";

contract SoladyERC721Test is Test {
    SoladyERC721 public token;
    address public target;

    function setUp() public {
      token = new SoladyERC721();
      target = address(0x000000000000000000000000000000000000dEaD);
    }

    function testName() public {
      token.name();
    }

    function testSymbol() public {
      token.symbol();
    }

    function testUri() public {
      token.tokenURI(2);
    }

    function testTransferFromOwner() public {
      token.transferFrom(address(this), target, 0);
    }

    function testBalanceOf() public {
      token.balanceOf(target);
    }

    function testApprove() public {
      token.approve(target, 1);
    }

    function testGetApproved() public {
      token.approve(target, 2);
      token.getApproved(2);
    }

    function testSetApprovalForAll(address _operator) public {
      token.setApprovalForAll(_operator, true);
    }   

    function testIsApprovedForAll(address _operator) public {
      token.isApprovedForAll(address(this), _operator);
    }

    function testTransferFromGeneric() public {
      address from = address(0xABCD);

      token.transferFrom(address(this), from, 3);
      vm.prank(from);
      token.approve(address(this), 3);
      token.transferFrom(from, target, 3);
    }

    function testMint() public {
      token.mint(target, 1337);
    }

    function testBurn() public {
      vm.prank(target);
      token.mint(target, 150);
      token.burn(150);
    }
}
