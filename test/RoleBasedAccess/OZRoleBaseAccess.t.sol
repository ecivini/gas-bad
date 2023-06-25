// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../../src/RoleBasedAccess/OZRoleAccess.sol";

contract OZRoleBaseAccessTest is Test {
  OZRoleAccess public roleBasedAccess;
  bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;
  bytes32 public constant FIRST_ROLE = keccak256("FIRST_ROLE");

  function setUp() public {
    roleBasedAccess = new OZRoleAccess();
  }

  function testGetRoleAdmin() public view{
    roleBasedAccess.getRoleAdmin(DEFAULT_ADMIN_ROLE);
  }

  function testContractAddress() public view returns(address){
    return address(this);
  }

  function testGrantRole() public {
    roleBasedAccess.grantRole(FIRST_ROLE, address(0xbeef));
  }

  function testRevokeRole() public {
    roleBasedAccess.revokeRole(FIRST_ROLE, address(0xbeef));
  }
}
