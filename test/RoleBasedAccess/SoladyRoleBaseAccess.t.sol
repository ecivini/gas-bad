// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../../src/RoleBasedAccess/SoladyRoleAccess.sol";

contract SoladyOwnableTest is Test {
  SoladyRoleAccess public soladyRoleAccess;

  function setUp() public {
    soladyRoleAccess = new SoladyRoleAccess();
  }

  function testOwner() public view{
    soladyRoleAccess.owner();
  }

  function testGrantRole() public {
    soladyRoleAccess.grantRoles(address(1), 111111);
  }

  function testRevokeRole() public {
    soladyRoleAccess.revokeRoles(address(1), 111111);
  }
}
