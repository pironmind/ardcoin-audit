const Token = artifacts.require("ArdCoin");

module.exports = function(deployer) {
  deployer.deploy(Token,'ARDMN', 'ArdCoin STO', 1000000000, 2);
};
