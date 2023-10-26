// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC4626} from "lib/solmate/src/mixins/ERC4626.sol";
import {ERC20} from "lib/solmate/src/tokens/ERC20.sol";

contract SolmateERC4626 is ERC4626 {

    /**
     * @notice Constructor
     */
    constructor (
        ERC20 asset_,
        string memory name_,
        string memory symbol_
    ) ERC4626(asset_, name_, symbol_) { }

    function totalAssets() public view override returns (uint256) {
        return asset.balanceOf(address(this));
    }

}