// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC4626.sol";

contract OZERC4626 is ERC4626 {
    
    /**
     * @notice Constructor
     */
    constructor () ERC4626("Test4626", "TEST4626") { 
        _mint(msg.sender, 0);
        _mint(msg.sender, 1);
        _mint(msg.sender, 2);
        _mint(msg.sender, 3);
        _mint(msg.sender, 5);
    }

    /**
     * @notice Returns the name of the token
     */
    function name() public pure override returns (string memory) {
        return "Test";
    }

    /**
     * @notice Returns the symbol of the token
     */
    function symbol() public pure override returns (string memory) {
        return "TEST";
    }


    function tokenURI(uint256 tokenId) public view override returns (string memory) {
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
        _safeMint(_to, _tokenId);
    }

    /**
     * @notice Burn a token
     * @param _tokenId Id of the token to burn
     */
    function burn(uint _tokenId) external {
        _burn(_tokenId);
    }

    /// _baseURI override
    function _baseURI() internal view override returns (string memory) {
        return "ipfs://.../";
    }
}