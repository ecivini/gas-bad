pragma solidity ^0.8.20;

import "lib/solady/src/utils/ECDSA.sol";

contract SoladyECDSA {
  /**
   * @notice Try to recover the signer address of a message
   * @param _hash Hash of the signed data
   * @param _sig Signature
   */
  function recover(bytes32 _hash, bytes memory _sig) external view returns (address) {
    return ECDSA.recover(_hash, _sig);
  }

  /**
   * @notice Create an Ethereuem signed message from the signed hash
   * @param _hash Hash of the signed data
   */
  function toEthSignedMessage(bytes32 _hash) external returns (bytes32) {
    return ECDSA.toEthSignedMessageHash(_hash);
  } 
}
