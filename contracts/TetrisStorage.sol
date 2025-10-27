// contracts/TetrisStorage.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TetrisStorage {
    mapping(address => uint256) private scores;

    function update(uint256 s) external {
        if (s > scores[msg.sender]) {
            scores[msg.sender] = s;
        }
    }

    function bestOf(address user) external view returns (uint256) {
        return scores[user];
    }
}
