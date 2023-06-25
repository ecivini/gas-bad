// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../../src/RoleBasedAccess/SolmateRoleAccess.sol";

contract SolmateOwnableTest is Test {
  SolmateRoleAccess public solmateRoleAccess;

  function setUp() public {
    solmateRoleAccess = new SolmateRoleAccess(Authority(address(0)));
  }

  function testOwner() public view{
    solmateRoleAccess.owner();
  }

  function testGrantRole() public {
    solmateRoleAccess.setUserRole(address(0xBEEF), 0, true);
  }

  function testRevokeRole() public {
    solmateRoleAccess.setUserRole(address(0xBEEF), 0, false);
  }
}
