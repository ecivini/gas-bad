// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/openzeppelin-contracts/contracts/token/ERC1155/ERC1155.sol";

contract OZERC1155 is ERC1155 {
  /**
   * @notice Constructor
   */
  constructor () ERC1155("ipfs://...") { 
    uint[] memory ids = new uint[](5);
    uint[] memory amounts = new uint[](5);

    for (uint8 i = 0; i < 5; i++) {
      ids[i] = i;
      amounts[i] = 10 * (i + 1);
    }

    _mintBatch(msg.sender, ids, amounts, "");
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
    _mintBatch(_to, _ids, _amounts, "");
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
    _burnBatch(_from, _ids, _amounts);
  }
}