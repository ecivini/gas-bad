// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/solmate/src/auth/Owned.sol";

contract SolmateOwnable is Owned {
  /**
    * @notice Constructor
    */
  constructor () Owned(msg.sender) { }
}
