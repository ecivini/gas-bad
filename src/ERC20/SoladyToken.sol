// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/solady/src/tokens/ERC20.sol";

contract SoladyToken is ERC20 {
    /**
     * @notice Constructor
     * @dev Mints 10M tokens to the deployer address
     */
    constructor () {
        _mint(msg.sender, 10000000000000);
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

    /**
     * @notice Returns the decimals of the token
     */
    function decimals() public pure override returns (uint8) {
        return 6;
    }
}
