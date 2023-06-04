// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

contract OZToken is ERC20 {
    /**
     * @notice Constructor
     * @dev Mints 10M tokens to the deployer address
     */
    constructor () ERC20("Test", "TEST") {
        _mint(msg.sender, 10000000000000);
    }

    /**
     * @notice Returns the decimals of the token
     */
    function decimals() public pure override returns (uint8) {
        return 6;
    }
}
