var ParentContract = artifacts.require("ParentContract");
module.exports = function (deployer) {
  deployer.deploy(ParentContract);
  // Additional contracts can be deployed here
};
