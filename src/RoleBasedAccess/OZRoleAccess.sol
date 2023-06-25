// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/openzeppelin-contracts/contracts/access/AccessControl.sol";

contract OZRoleAccess is AccessControl {
  /**
    * @notice Constructor
    */
  constructor () { 
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }
}
