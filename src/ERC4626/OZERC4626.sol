// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC4626, ERC20, IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC4626.sol";

contract OZERC4626 is ERC4626 {

    constructor (
        address _underlying,
        string memory _name,
        string memory _symbol
    ) ERC20(_name, _symbol) ERC4626(IERC20(_underlying)) {}

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external {
        _burn(account, amount);
    }
}