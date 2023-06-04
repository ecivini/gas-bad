// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/solady/src/auth/Ownable.sol";

contract SoladyOwnable is Ownable {
  /**
    * @notice Constructor
    */
  constructor () { 
    _initializeOwner(msg.sender);
  }
}
