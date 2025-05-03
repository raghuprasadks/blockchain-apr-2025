// SPDX-License-Identifier: MIT
pragma solidity=0.8.13;

contract Voting {
    mapping(string => uint256) public votesReceived;
    string[] public candidates;

    constructor(string[] memory _candidates) {
        candidates = _candidates;
    }

    function voteForCandidate(string memory candidate) public {
        require(validCandidate(candidate), "Candidate not valid.");
        votesReceived[candidate] += 1;
    }

    function totalVotesFor(string memory candidate) public view returns (uint256) {
        require(validCandidate(candidate), "Candidate not valid.");
        return votesReceived[candidate];
    }

    function validCandidate(string memory candidate) private view returns (bool) {
        for (uint256 i = 0; i < candidates.length; i++) {
            if (keccak256(bytes(candidates[i])) == keccak256(bytes(candidate))) {
                return true;
            }
        }
        return false;
    }
}
