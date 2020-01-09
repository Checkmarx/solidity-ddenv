pragma solidity ^0.4.22;

contract OverflowUint8 {
    function overflow() public pure returns (uint8 _overflow) {
        uint8 max = 2**8 - 1;
        return max + 1;
    }

    function underflow() public pure returns (uint8 _underflow) {
        uint8 min = 0;
        return min - 1;
    }
}

