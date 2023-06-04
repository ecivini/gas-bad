// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/solmate/src/tokens/ERC721.sol";

contract SolmateERC721 is ERC721 {
  /**
    * @notice Constructor
    */
  constructor () ERC721("Test721", "TEST721") { 
    _mint(msg.sender, 0);
    _mint(msg.sender, 1);
    _mint(msg.sender, 2);
    _mint(msg.sender, 3);
    _mint(msg.sender, 5);
  }

  /**
   * @notice Returns the URI of the specified id
   * @param _id Id of the token
   * @dev For simplicity, assume same metadata for each token
   */
  function tokenURI(uint256 _id) public pure override returns (string memory) {
    return "ipfs://...";
  }

  /**
   * @notice Mint a token to the specified address
   * @param _to Receiver address
   * @param _tokenId Id of the token to mint
   */
  function mint(address _to, uint _tokenId) external {
    _mint(_to, _tokenId);
  }

  /**
   * @notice Safely mint a token to the specified address
   * @param _to Receiver address
   * @param _tokenId Id of the token to mint
   */
  function safeMint(address _to, uint _tokenId) external {
    _safeMint(_to, _tokenId, "0x");
  }

  /**
   * @notice Burn a token
   * @param _tokenId Id of the token to burn
   */
  function burn(uint _tokenId) external {
    _burn(_tokenId);
  }
}