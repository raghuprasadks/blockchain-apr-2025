const EtherTransfer = artifacts.require("EtherTransfer");

module.exports = function (deployer) {
  deployer.deploy(EtherTransfer);
};