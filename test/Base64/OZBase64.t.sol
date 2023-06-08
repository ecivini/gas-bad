// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../../src/Base64/OZBase64.sol";

contract OZBase64Test is Test {
    OZBase64 public base64;

    function setUp() public {
      base64 = new OZBase64();
    }

    function testEncode() public {
      bytes memory data = "gasbad, not gud"; 
      base64.encode(data); // Z2FzYmFkLCBub3QgZ3Vk
    }

    function testDecode() public {
      // Not supported by OZ
    }
}
