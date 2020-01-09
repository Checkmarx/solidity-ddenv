pragma solidity ^0.4.22;

contract OverflowUint256 {
    function overflow() public pure returns (uint256 _overflow) {
        uint256 max = 2**256 - 1;
        return max + 1;
    }

    function underflow() public pure returns (uint256 _underflow) {
        uint256 min = 0;
        return min - 1;
    }
}

