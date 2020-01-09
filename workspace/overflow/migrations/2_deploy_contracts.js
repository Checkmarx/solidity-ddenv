const OverflowUint8 = artifacts.require('./OverflowUint8.sol');
const OverflowUint256 = artifacts.require('./OverflowUint256.sol');

module.exports = function(deployer) {
    deployer.deploy(OverflowUint8);
    deployer.deploy(OverflowUint256);
};

