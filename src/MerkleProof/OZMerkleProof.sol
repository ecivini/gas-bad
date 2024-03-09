// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {MerkleProof} from "lib/openzeppelin-contracts/contracts/utils/cryptography/MerkleProof.sol";

contract OZMerkleProof {
    bytes32 internal immutable root;

    constructor (bytes32 root_) {
        root = root_;
    }

    function verify(bytes32[] memory proof, bytes32 leaf) external view returns (bool) {
        return MerkleProof.verify(proof, root, leaf);
    }

    function verifyCalldata(bytes32[] calldata proof, bytes32 leaf) external view returns (bool) {
        return MerkleProof.verifyCalldata(proof, root, leaf);
    }

    function multiProofVerify(
        bytes32[] memory proof,
        bool[] memory proofFlags,
       bytes32[] memory leaves
    ) external view returns (bool) {
        return MerkleProof.multiProofVerify(proof, proofFlags, root, leaves);
    }

    function multiProofVerifyCalldata(
        bytes32[] calldata proof,
        bool[] calldata proofFlags,
       bytes32[] calldata leaves
    ) external view returns (bool) {
        return MerkleProof.multiProofVerify(proof, proofFlags, root, leaves);
    }

}