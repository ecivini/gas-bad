// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../../src/Ownable/OZOwnable.sol";

contract OZOwnableTest is Test {
  OZOwnable public ownable;
  address public secondOwner;

  function setUp() public {
    ownable = new OZOwnable();
    secondOwner = address(0xbeef);
  }

  function testOwner() public {
    ownable.owner();
  }

  function testTransferOwnership() public {
    ownable.transferOwnership(secondOwner);
  }

  function testRenounceOwnership() public {
    ownable.renounceOwnership();
  }
}
