pragma solidity ^0.4.22;

contract Bank {
    mapping(address => uint) balances;

    constructor() public {
    }

    function put() public payable {
        uint amount = balances[msg.sender];
        balances[msg.sender] = amount + msg.value;
    }

    function withdraw() public {
        if (msg.sender.call.value(balances[msg.sender])()) {
            balances[msg.sender] = 0;
        }
    }
}

