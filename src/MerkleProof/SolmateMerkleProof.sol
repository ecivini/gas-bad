// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {MerkleProofLib} from "lib/solmate/src/utils/MerkleProofLib.sol";

contract OZMerkleProof {
    bytes32 internal immutable root;

    constructor (bytes32 root_) {
        root = root_;
    }

    function verify(bytes32[] calldata proof, bytes32 leaf) external view returns (bool) {
        return MerkleProofLib.verify(proof, root, leaf);
    }


}