// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/solady/src/utils/Base64.sol";

contract SoladyBase64 {
  /**
   * @notice Encode bytes into base64
   * @param _data Data to encode
   */
  function encode(bytes memory _data) external view returns (string memory) {
    return Base64.encode(_data);
  }

  /**
   * @notice Decode data from base64
   * @param _data Data to decode
   */
  function decode(string memory _data) external view returns (bytes memory) {
    return Base64.decode(_data);
  }
}
