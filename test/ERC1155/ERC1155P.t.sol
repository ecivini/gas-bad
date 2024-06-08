// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../../src/ERC1155/MockERC1155P.sol";

contract SoladyERC721Test is Test {
  MockERC1155P public token;
  address public target;

  function onERC1155Received(
    address _operator,
    address _from,
    uint _id,
    uint _value,
    bytes calldata _data
  ) external returns (bytes4) { 
    return this.onERC1155Received.selector;
  }
  
  function onERC1155BatchReceived(
    address _operator,
    address _from,
    uint256[] calldata _ids,
    uint256[] calldata _values,
    bytes calldata _data
  ) external returns (bytes4) {
    return this.onERC1155BatchReceived.selector;
  }

  function setUp() public {
    token = new MockERC1155P();
    target = address(0x000000000000000000000000000000000000dEaD);
  }

  function testUri() public {
    token.uri(2);
  }

  function testBalanceOf() public {
    token.balanceOf(address(this), 1);
  }

  function testBalanceOfBatch() public {
    uint[] memory ids = new uint[](5);
    address[] memory accounts = new address[](5);

    for (uint8 i = 0; i < 5; i++) {
      ids[i] = i;
      accounts[i] = address(this);
    }

    token.balanceOfBatch(accounts, ids);
  }

  function testSetApprovalForAll() public {
    address operator = address(0xbeef);
    token.setApprovalForAll(operator, true);
  }

  function testIsApprovedForAll() public {
    address operator = address(0xbeef);
    token.setApprovalForAll(operator, true);
    token.isApprovedForAll(address(this), operator);
  }

  function testSafeTransferFrom() public {
    token.safeTransferFrom(address(this), target, 0, 3, "");
  }

  function testSafeBatchTransferFrom() public {
    uint[] memory ids = new uint[](5);
    uint[] memory amounts = new uint[](5);

    for (uint8 i = 0; i < 5; i++) {
      ids[i] = i;
      amounts[i] = 5;
    }

    token.safeBatchTransferFrom(address(this), target, ids, amounts, "");
  }

  function testMint() public {
    token.mint(target, 5, 60);
  }

  function testMintBatch() public {
    uint[] memory ids = new uint[](5);
    uint[] memory amounts = new uint[](5);

    for (uint8 i = 0; i < 5; i++) {
      ids[i] = i + 6;
      amounts[i] = 10 * (i + 1 + 6);
    }

    token.mintBatch(target, ids, amounts);
  }

  function testBurn() public {
    token.burn(address(this), 4, 10);
  }

  function testBurnBatch() public {
    uint[] memory ids = new uint[](5);
    uint[] memory amounts = new uint[](5);

    for (uint8 i = 0; i < 5; i++) {
      ids[i] = i;
      amounts[i] = 2 * (i + 1);
    }

    token.burnBatch(address(this), ids, amounts);
  }
}
