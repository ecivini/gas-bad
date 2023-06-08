// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../../src/ECDSA/OZECDSA.sol";

contract OZECDSATest is Test {
    OZECDSA public ecdsa;
    bytes32 data;
    bytes32 message;
    address signer;
    uint signerPK;

    function setUp() public {
      ecdsa = new OZECDSA();
      signerPK = 1234;
      signer = vm.addr(signerPK);
      vm.prank(signer);
      data = 0xfa17cca975c8d294f9cda4fee6d53872c9308a7b3e4b4449c102cc617f5e6708; // keccak256("gasbad")
    }

    function testEthMessage() public {
      message = ecdsa.toEthSignedMessage(data);
    }

    function testRecover() public {
      (uint8 v, bytes32 r, bytes32 s) = vm.sign(signerPK, message);
      bytes memory signature = abi.encodePacked(r, s, v);
      ecdsa.recover(message, signature); 
    }
}
