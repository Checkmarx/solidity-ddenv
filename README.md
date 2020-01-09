Solidity Decentralized App Development Environment
==================================================

This project allows you to try Smart Contracts/Blockchain/Ethereum/Solidity
development without having to setup all required tools. Everything you'll need
is a running Docker service.

This was put together to support our research [Solidity and Smart Contracts from
a Security Standpoint][1]. Inside the `workspace` directoy you'll find examples
of two common Smart Contracts security issues: Overflow and Reentrancy.

## How to use

Clone the project and move into its folder

```
$ git clone https://github.com/Checkmarx/solidity-ddenv && cd solidity-ddenv
```

The `ddenv` bash script starts all required Docker containers, spawns a new
shell with `ddenv` in the `$PATH`, and moves into the `workspace` directory.

```
$ ddenv
```

To create a new DApp run

```
$ mkdir my-first-dapp && cd "$_"
$ ddenv truffle init
```

Create and play with your Smart Contracts

```
$ ddenv truffle compile 
```

When you're done, stop it

```
$ ddenv stop
```

To leave `ddenv`

```
$ exit
```

## License

**ddenv** - Solidity Decentralized App Development Environment

Copyright (C) 2020 Checkmarx

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see https://www.gnu.org/licenses/.

[1]: https://www.checkmarx.com/blog/checkmarx-research-solidity-and-smart-contracts-from-a-security-standpoint
