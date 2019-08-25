pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Prestamo.sol";

contract TestPrestamo {

    // The address of the prestamo contract to be tested
    Prestamo prestamo = Prestamo(DeployedAddresses.Prestamo());

    // The id of the pet that will be used for testing
    uint monto = 100000;
    uint plazo = 60;
    uint interes = 42;
    uint cuotaEsperada = 1000;


    event logData(uint numero);
    // Testing  setOferta() function
    function testUserSetOferta() public {
        prestamo.setOferta(monto, plazo, interes);
        uint cuota = prestamo.obtenerCuota();


        emit logData(cuota);

 //       Assert.equal(cuota, cuotaEsperada, "La cuota esperada.");


    }


}
