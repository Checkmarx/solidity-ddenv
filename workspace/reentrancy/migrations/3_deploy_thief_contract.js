const Bank = artifacts.require("./Bank.sol");
const Thief = artifacts.require("./Thief.sol");

module.exports = function(deployer) {
    deployer.deploy(Thief, Bank.address);
};
