// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/openzeppelin-contracts/contracts/utils/Base64.sol";

contract OZBase64 {
  /**
   * @notice Encode bytes into base64
   * @param _data Data to encode
   */
  function encode(bytes memory _data) external view returns (string memory) {
    return Base64.encode(_data);
  }
}
