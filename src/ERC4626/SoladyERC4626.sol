// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20, ERC4626} from "lib/solady/src/tokens/ERC4626.sol";

contract SoladyRC4626 is ERC4626 {
    bool public immutable useVirtualShares;
    uint8 public immutable decimalsOffset;

    address internal immutable _underlying;
    uint8 internal immutable _decimals;

    string internal _name;
    string internal _symbol;

    /**
     * @notice Constructor
     */
    constructor (
        address underlying_,
        string memory name_,
        string memory symbol_,
        bool useVirtualShares_,
        uint8 decimalsOffset_
    )  { 
        _underlying = underlying_;
        (bool success, uint8 result) = _tryGetAssetDecimals(underlying_);
        _decimals = success ? result : _DEFAULT_DECIMALS_OFFSET;

        _name = name_;
        _symbol = symbol_;

        useVirtualShares = useVirtualShares_;
        decimalsOffset = decimalsOffset_;
    }

    /**
     * @notice Returns the name of the underlying asset
     */
    function asset() public view virtual override returns (address) {
        return _underlying;
    }

    /**
     * @notice Returns the name of the token
     */
    function name() public view override returns (string memory) {
        return _name;
    }

    /**
     * @notice Returns the symbol of the token
     */
    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    function _useVirtualShares() internal view virtual override returns (bool) {
        return useVirtualShares;
    }

    function _underlyingDecimals() internal view virtual override returns (uint8) {
        return _decimals;
    }

    function _decimalsOffset() internal view virtual override returns (uint8) {
        return decimalsOffset;
    }
    
}