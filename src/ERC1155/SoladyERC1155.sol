// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/solady/src/tokens/ERC1155.sol";

contract SoladyERC1155 is ERC1155 {
  /**
   * @notice Constructor
   */
  constructor () { 
    uint[] memory ids = new uint[](5);
    uint[] memory amounts = new uint[](5);

    for (uint8 i = 0; i < 5; i++) {
      ids[i] = i;
      amounts[i] = 10 * (i + 1);
    }

    _batchMint(msg.sender, ids, amounts, "");
  }

  /**
   * @notice Return the uri of the token
   * @dev For simplicity, returns always the same uri
   */
  function uri(uint256 id) public view override returns (string memory) {
    return "ipfs://...";
  }

  /**
   * @notice Mint a token to the specified address
   * @param _to Receiver address
   * @param _tokenId Id of the token to mint
   * @param _amount Amount of tokens to mint
   */
  function mint(address _to, uint _tokenId, uint _amount) external {
    _mint(_to, _tokenId, _amount, "");
  }

  /**
   * @notice Batch mint tokens
   * @param _to Receiver address 
   * @param _ids Array of the tokens to mint
   * @param _amounts Amount of each token to mint
   */
  function mintBatch(address _to, uint[] memory _ids, uint[] memory _amounts) external {
    _batchMint(_to, _ids, _amounts, "");
  }

  /**
   * @notice Burn a token
   * @param _from Address from which tokens will be burnt
   * @param _tokenId Id of the token to burn
   * @param _amount Amount of tokens to burn
   */
  function burn(address _from, uint _tokenId, uint _amount) external {
    _burn(_from, _tokenId, _amount);
  }

  /**
   * @notice Batch burn tokens
   * @param _from Address from which tokens will be burnt
   * @param _ids Array of the tokens to mint
   * @param _amounts Amount of each token to mint
   */
  function burnBatch(address _from, uint[] memory _ids, uint[] memory _amounts) external {
    _batchBurn(_from, _ids, _amounts);
  }
}