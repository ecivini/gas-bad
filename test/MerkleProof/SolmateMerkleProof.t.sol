//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import {SolmateMerkleProof} from "../../src/MerkleProof/SolmateMerkleProof.sol";

contract SolmateMerkleProofTest is Test {
    bytes32[] proof_;

    function testVerify5ElementsCalldata(
        bytes32[5] memory proof,
        bytes32 leaf
    ) public {
        for (uint256 i = 0; i < proof.length; i++) {
            proof_.push(proof[i]);
        }
        bytes32 root = processProof(proof_, leaf);
        SolmateMerkleProof merkleProof5 = new SolmateMerkleProof(root);
        assertEq(merkleProof5.verify(proof_, leaf), true);
    }

    function testVerify10ElementsCalldata(
        bytes32[10] memory proof,
        bytes32 leaf
    ) public {
        for (uint256 i = 0; i < proof.length; i++) {
            proof_.push(proof[i]);
        }
        bytes32 root = processProof(proof_, leaf);
        SolmateMerkleProof merkleProof10 = new SolmateMerkleProof(root);
        assertEq(merkleProof10.verify(proof_, leaf), true);
    }

    function testVerify15ElementsCalldata(
        bytes32[15] memory proof,
        bytes32 leaf
    ) public {
        for (uint256 i = 0; i < proof.length; i++) {
            proof_.push(proof[i]);
        }
        bytes32 root = processProof(proof_, leaf);
        SolmateMerkleProof merkleProof15 = new SolmateMerkleProof(root);
        assertEq(merkleProof15.verify(proof_, leaf), true);
    }

    function processProof(
        bytes32[] memory proof,
        bytes32 leaf
    ) internal pure returns (bytes32) {
        bytes32 computedHash = leaf;
        for (uint256 i = 0; i < proof.length; i++) {
            computedHash = _hashPair(computedHash, proof[i]);
        }
        return computedHash;
    }

    function _hashPair(bytes32 a, bytes32 b) private pure returns (bytes32) {
        return a < b ? _efficientHash(a, b) : _efficientHash(b, a);
    }

    function _efficientHash(
        bytes32 a,
        bytes32 b
    ) private pure returns (bytes32 value) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x00, a)
            mstore(0x20, b)
            value := keccak256(0x00, 0x40)
        }
    }
}
