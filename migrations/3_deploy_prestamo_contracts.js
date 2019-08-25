
// seteo para deploy de contrato prestamo
var Prestamo = artifacts.require("Prestamo");

module.exports = function(deployer) {
  deployer.deploy(Prestamo);
};