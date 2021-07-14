const SimpleNFTStorage = artifacts.require("SimpleNFTStorage");

module.exports = function(deployer) {
  deployer.deploy(SimpleNFTStorage);
};
