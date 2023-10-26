# 👾 Gas Bad

GasBad is a project aimed at comparing the gas efficiency of various Solidity libraries. It focuses on analyzing and measuring the gas consumption of popular Solidity libraries to identify which ones offer the most efficient gas usage.

## 🔥 Motivation

Gas consumption is a critical factor in Ethereum smart contract development. Efficient gas usage not only helps optimize transaction costs but also contributes to scalability and overall contract performance. GasBad aims to provide developers with insights into the gas efficiency of different Solidity libraries, allowing them to make informed decisions when choosing libraries for their projects.

## 📚 Libraries Tested

Currently, GasBad focuses on testing (**only**) the gas usage of the following Solidity libraries:

- OpenZeppelin: A widely-used library for secure and community-audited smart contract development.
- Solady: A Solidity library known for its gas optimization techniques and efficiency enhancements.
- Solmate: A library specifically designed to provide gas-efficient implementations of common Solidity operations.

## 🧪 Testing Methodology

GasBad conducts gas efficiency tests using Forge 0.2.0 with via-IR optimizations and Solidity 0.8.20. The Forge framework allows for precise gas measurement and analysis of Solidity code.

It is important to note that the project's current structure is designed for the sole purpose of conducting these gas efficiency tests and does not adhere to best practices for secure smart contract development. This structure is chosen for its simplicity and the ease of obtaining gas reports using Foundry.

## 📊 Tested contracts

GasBad evaluates the gas efficiency of libraries across different contracts. Here are the ones currently tested:

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

</details>

<details>
<summary>ERC1155</summary>

Gas consumption evaluation of ERC1155 token-related operations provided by the tested libraries. By comparing gas usage, developers can make informed decisions about the most efficient library for ERC1155 functionality.

**Gas Usage Comparison**:

| Function Name   | OpenZeppelin | Solady | Solmate | Gas Efficiency |
|-----------------|-----------|---------------|----------------|----------------|
| balanceOf       | 2547      | 2407          | 2485           | Solady  |
| balanceOfBatch  | 16106     | 12566         | 14317          | Solady  |
| burn            | 8784      | 8064          | 8156           | Solady  |
| burnBatch       | 36684     | 33635         | 35648          | Solady  |
| isApprovedForAll| 778       | 681           | 783            | Solady  |
| mint            | 28155     | 27712         | 27871          | Solady  |
| mintBatch       | 124178    | 121891        | 124104         | Solady  |
| safeBatchTransferFrom | 151145 | 146637    | 148209         | Solady  |
| safeTransferFrom | 34027    | 33141         | 33458          | Solady  |
| setApprovalForAll | 24506   | 24367         | 24487          | Solady  |
| uri             | 2945      | 540           | 566            | Solady  |


</details>

<details>
<summary>ERC4626</summary>

Gas consumption evaluation of ERC4626 vault-related operations provided by the tested libraries. By comparing gas usage, developers can make informed decisions about the most efficient library for ERC4626 functionality.

**Gas Usage Comparison**:

| Function Name   | OpenZeppelin | Solady | Solmate | Gas Efficiency |
|-----------------|-----------|---------------|----------------|----------------|
| balanceOf       | 756       | 705           | 707            | Solady |
| convertToAssets | 1544      | 1286          | 361 - 1424     | Solmate if totalSupply is zero else Solady |
| deposit         | 62699     | 60093         | 59628          | Solmate        |
| mint            | 62802     | 60199         | 59652          | Solmate        |
| name            | 2886      | 2840          | 2922           | Solady         |
| previewDeposit  | 2119      | 1875          | 1972           | Solady         |
| previewWithdraw | 1666      | 1396          | 1497           | Solady         |
| redeem          | 24849     | 23901         | 23944          | Solady         |
| symbol          | 3226      | 3195          | 3252           | Solady         |
| totalAssets     | 1139      | 912           | 1133           | Solady         |
| totalSupply     | 383       | 380           | 380            | Solmate/Solady | 
| withdraw        | 25958     | 24792         | 23922          | Solmate        |

</details>

<details>
<summary>Ownable</summary>

Gas consumption evaluation of Ownable related operations provided by the tested libraries. By comparing gas usage, developers can make informed decisions about the most efficient library for this functionality.

**Gas Usage Comparison**:

| Function Name     | OpenZeppelin | Solady | Solmate | Gas Efficiency |
|-------------------|---------------|------------------|--------------------|----------------|
| owner             | 2298          | 2355             | 2279               | Solmate      |
| renounceOwnership | 5486          | 5472             | -                  | Solady  |
| transferOwnership | 6955          | 7002             | 6785               | Solmate |


</details>

<details>
<summary>RoleBasedAccess</summary>

Gas consumption evaluation of RoleBasedAccess contracts related operations provided by the tested libraries. By comparing gas usage, developers can make informed decisions about the most efficient library for this functionality.

> Note: *In order to be specific, it uses the following contracts for comparisons:*
> 1. **AccessControl.sol** from Openzeppelin
> 2. **OwnableRoles** from Solady
> 3. **RolesAuthority** from Solmate
> 
**Gas Usage Comparison**:

| Function Name     | OpenZeppelin | Solady            | Solmate            | Gas Efficiency |
|-------------------|---------------|------------------|--------------------|----------------|
| owner             | 2363          | 2546             | 2444               | OpenZeppelin   |
| grantRole         | 29178         | 26096            | 18915              | Solmate        |
| revokeRole        | 7146          | 6323             | 18915              | Solady         |


</details>

<details>
<summary>ECDSA</summary>

Gas consumption evaluation of ECDSA related operations provided by the tested libraries. By comparing gas usage, developers can make informed decisions about the most efficient library for this functionalities.

**Gas Usage Comparison**:

| Function Name   | OpenZeppelin | Solady | Solmate | Gas Efficiency |
|-----------------|-----------|---------------|----------------|----------------|
| recover       | 3935      | 3741          | -           | Solady  |
| toEthSignedMessage  | 252     | 255         | -          | OpenZeppelin  |

</details>

<details>
<summary>MerkleProof</summary>

| Function Name   | OpenZeppelin | Solady | Solmate | Gas Efficiency |
|-----------------|-----------|---------------|----------------|----------------|
| verify1         | | | | |
| verify5         | | | | |
| verify10        | | | | |
| verify15        | | | | |
| verify20        | | | | |
| verifyCalldata1 | | | | |
| verifyCalldata5 | | | | |
| verifyCalldata15 | | | | |
| verifyCalldata20 | | | | |
| multiProof      | | | | |
| multiProofCalldata | | | | |
</details>

<details>
<summary>Base64</summary>

Gas consumption evaluation of Base64 related operations provided by the tested libraries. By comparing gas usage, developers can make informed decisions about the most efficient library for this functionality.

**Gas Usage Comparison**:

| Function Name     | OpenZeppelin | Solady | Solmate | Gas Efficiency |
|-------------------|---------------|------------------|--------------------|----------------|
| encode             | 2599          | 1925             | -               | Solady      |
| decode             | -          | 1786             | -                  | Solady  |


</details>

## 📋 Want More?
If you want to see other contracts tested or have specific libraries or functionalities in mind, you can create an issue on the repository and explain what you'd like to see. I'll be more than happy to add it to this collection and perform the necessary tests.

Alternatively, if you have already conducted gas efficiency tests and want to share your results, you can create a pull request (PR) on the repository. Once your PR is submitted, I will review and integrate it into the project, making it accessible to everyone.

Let's collaborate and build a comprehensive resource for gas efficiency analysis in Solidity libraries! 🚀

## 🗂️ License
You can find more details [here](./LICENSE.md)