// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/solmate/src/auth/authorities/RolesAuthority.sol";

contract SolmateRoleAccess is RolesAuthority {
  /**
    * @notice Constructor
    */
  constructor (Authority _authority) RolesAuthority(msg.sender, _authority) { }
}
