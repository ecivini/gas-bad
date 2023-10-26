// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {MerkleProofLib} from "lib/solady/src/utils/MerkleProofLib.sol";

contract SoladyMerkleProof {
    bytes32 internal immutable root;

    constructor (bytes32 root_) {
        root = root_;
    }

    function verify(bytes32[] memory proof, bytes32 leaf) external view returns (bool) {
        return MerkleProofLib.verify(proof, root, leaf);
    }

    function verifyCalldata(bytes32[] calldata proof, bytes32 leaf) external view returns (bool) {
        return MerkleProofLib.verifyCalldata(proof, root, leaf);
    }

    function multiProofVerify(
        bytes32[] memory proof,
        bool[] memory proofFlags,
       bytes32[] memory leaves
    ) external view returns (bool) {
        return MerkleProofLib.verifyMultiProof(proof, root, leaves, proofFlags);
    }

    function multiProofVerifyCalldata(
        bytes32[] calldata proof,
        bool[] calldata proofFlags,
       bytes32[] calldata leaves
    ) external view returns (bool) {
        return MerkleProofLib.verifyMultiProofCalldata(proof, root, leaves, proofFlags);
    }

}