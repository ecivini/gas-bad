// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../../src/Base64/SoladyBase64.sol";

contract SoladyBase64Test is Test {
    SoladyBase64 public base64;

    function setUp() public {
      base64 = new SoladyBase64();
    }

    function testEncode() public {
      bytes memory data = "gasbad, not gud"; 
      base64.encode(data); // Z2FzYmFkLCBub3QgZ3Vk
    }

    function testDecode() public {
      string memory data = "Z2FzYmFkLCBub3QgZ3Vk";
      base64.decode(data);
    }
}
