var ConvertLib = artifacts.require("./ConvertLib.sol");
var Valudio = artifacts.require("./Valudio.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, Valudio);
  deployer.deploy(Valudio);
};
