# 👾 Gas Bad

GasBad is a project aimed at comparing the gas efficiency of various Solidity libraries. It focuses on analyzing and measuring the gas consumption of popular Solidity libraries to identify which ones offer the most efficient gas usage.

## 🔥 Motivation

Gas consumption is a critical factor in Ethereum smart contract development. Efficient gas usage not only helps optimize transaction costs but also contributes to scalability and overall contract performance. GasBad aims to provide developers with insights into the gas efficiency of different Solidity libraries, allowing them to make informed decisions when choosing libraries for their projects.

## 📚 Libraries Tested

Currently, GasBad focuses on testing the gas usage of the following Solidity libraries:

- OpenZeppelin: A widely-used library for secure and community-audited smart contract development.
- Solady: A Solidity library known for its gas optimization techniques and efficiency enhancements.
- Solmate: A library specifically designed to provide gas-efficient implementations of common Solidity operations.

## 🧪 Testing Methodology

GasBad conducts gas efficiency tests using Forge 0.2.0 with via-IR optimizations and Solidity 0.8.20. The Forge framework allows for precise gas measurement and analysis of Solidity code.

It is important to note that the project's current structure is designed for the sole purpose of conducting these gas efficiency tests and does not adhere to best practices for secure smart contract development. This structure is chosen for its simplicity and the ease of obtaining gas reports using Foundry.

## 📊 Testing Categories

GasBad evaluates the gas efficiency of libraries across different categories. Here are the categories currently tested:

<details>
<summary>ERC20</summary>


Gas consumption evaluation of ERC20 token-related operations provided by the tested libraries. By comparing gas usage, developers can make informed decisions about the most efficient library for ERC20 functionality.

**Gas Usage Comparison**:

| Function Name | Solmate | Solady | OpenZeppelin | Gas Efficiency |
|---------------|--------------|-------------|------------------|-----------|
| allowance     | 808          | 768         | 788              | Solady    |
| approve       | 24310        | 24268       | 24387            | Solady    |
| decimals      | 265          | 257         | 262              | Solady    |
| name          | 2901         | 529         | 2823             | Solady    |
| symbol        | 3083         | 738         | 2985             | Solady    |
| totalSupply   | 2321         | 2319        | 2324             | Solady    |
| transfer      | 29567        | 29541       | 29666            | Solady    |
| transferFrom  | 20234        | 20021       | 21828            | Solady    |

**Gas Efficiency Comparison (%)**:

| Function Name | Solmate vs Solady (%) | Solmate vs OpenZeppelin (%) | Solady vs OpenZeppelin (%) |
|---------------|--------------------------------|---------------------------------------|--------------------------------------|
| allowance     | 5.21                           | 2.67                                  | -2.55                                |
| approve       | -0.17                          | -0.34                                 | -0.70                                |
| decimals      | 3.02                           | 1.15                                  | -1.53                                |
| name          | 448.40                         | 2.69                                  | -93.73                               |
| symbol        | 317.98                         | 3.31                                  | -91.76                               |
| totalSupply   | 0.09                           | -0.15                                 | -0.23                                |
| transfer      | 0.09                           | -0.08                                 | -0.32                                |
| transferFrom  | 1.06                           | -7.20                                 | -7.49                                |


</details>

<details>
<summary>ERC721</summary>

Gas consumption evaluation of ERC721 token-related operations provided by the tested libraries. By comparing gas usage, developers can make informed decisions about the most efficient library for ERC721 functionality.

**Gas Usage Comparison**:

| Function Name   | Solmate | Solady | OpenZeppelin | Gas Efficiency |
|-----------------|---------|--------|--------------|----------------|
| approve         | 22667   | 22444  | 23030        | Solady         |
| balanceOf       | 2663    | 2618   | 2663         | Solady         |
| burn            | 4234    | 4181   | 4511         | Solady         |
| getApproved     | 412     | 545    | 699          | Solmate        |
| isApprovedForAll| 2915    | 2807   | 2915         | Solady         |
| mint            | 46894   | 46678  | 47149        | Solady         |
| name            | 2928    | 549    | 565          | Solady         |
| setApprovalForAll| 24602  | 24477  | 24626        | Solady         |
| symbol          | 3134    | 747    | 768          | Solady         |
| tokenURI        | 850     | 835    | 850          | Solady         |
| transferFrom    | 22515   | 20319  | 23352        | Solady         |

**Gas Efficiency Comparison (%)**:

| Function Name   | Solmate vs Solady (%) | Solmate vs OpenZeppelin (%) | Solady vs OpenZeppelin (%) |
|-----------------|----------------------|-----------------------------|----------------------------|
| approve         | 0.97                 | -1.74                       | -2.70                      |
| balanceOf       | 1.98                 | 0.00                         | -1.88                      |
| burn            | 1.32                 | -6.68                       | -8.41                      |
| getApproved     | -24.22               | -41.15                      | -33.57                     |
| isApprovedForAll| 3.90                 | 0.00                         | -3.90                      |
| mint            | 0.38                 | -0.07                       | -0.48                      |
| name            | 81.54                | 81.35                       | 0.23                       |
| setApprovalForAll| 0.54                | -0.97                       | -1.30                      |
| symbol          | 76.02                | 75.82                       | -0.26                      |
| tokenURI        | 1.80                 | 0.00                         | -1.80                      |
| transferFrom    | 9.87                 | -13.10                      | -23.80                     |

</details>

<details>
<summary>ERC1155</summary>

TODO

</details>

<details>
<summary>ERC4626</summary>

TODO

</details>

<details>
<summary>Ownable</summary>

TODO

</details>

<details>
<summary>ECDSA</summary>

TODO

</details>

<details>
<summary>MerkleProof</summary>

TODO

</details>

<details>
<summary>Base64</summary>

TODO

</details>

## 📋 Want More?
If you want to see other contracts tested or have specific libraries or functionalities in mind, you can create an issue on the repository and explain what you'd like to see. I'll be more than happy to add it to this collection and perform the necessary tests.

Alternatively, if you have already conducted gas efficiency tests and want to share your results, you can create a pull request (PR) on the repository. Once your PR is submitted, I will review and integrate it into the project, making it accessible to everyone.

Let's collaborate and build a comprehensive resource for gas efficiency analysis in Solidity libraries! 🚀

## 🗂️ License
You can find more details [here](./LICENSE.md)