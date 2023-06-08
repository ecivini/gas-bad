// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol";

contract OZECDSA {
  /**
   * @notice Try to recover the signer address of a message
   * @param _hash Hash of the signed data
   * @param _sig Signature
   */
  function recover(bytes32 _hash, bytes memory _sig) external view returns (address) {
    (address signer, ) = ECDSA.tryRecover(_hash, _sig);
    return signer;
  }

  /**
   * @notice Create an Ethereuem signed message from the signed hash
   * @param _hash Hash of the signed data
   */
  function toEthSignedMessage(bytes32 _hash) external returns (bytes32) {
    return ECDSA.toEthSignedMessageHash(_hash);
  } 
}
