pragma solidity ^0.5.8;

contract Prestamo {

    uint256 public monto;
    uint256 public plazo;
    uint256 public tasa;
    uint public plz;
    address payable acredor;
    address payable deudor;
    ufixed128x19 rezasgo;
    uint256 tiempoDeCobro;




    function setOferta (uint256 montoOfre, uint256 plazoOfre, uint256 interesOfre)public {
        monto =  montoOfre;
        plazo =  plazoOfre;
        tasa =  interesOfre;
        acredor = msg.sender;

    }
    function tomarOferta () public {
//        uint256 montoADebtiar = monto * -1;
//        acredor.transfer(montoADebtiar);
        deudor = msg.sender;

    }
    function liquidarOferta() public payable {
        deudor.transfer(monto);
    }






/**
    function obtenerCuota()public payable returns (ufixed128x19){


        for (uint i=0; i==plz; i++) {
            rezasgo = rezasgo * (1 / (1 + tasa / plazo));
        }


        ufixed128x19 cuota =  monto * (( tasa / plazo ) / (1 - rezasgo));
        emit logNumero(cuota);
        return cuota;
    }

    function setOferta (ufixed128x19 montoOfre, ufixed128x19 plazoOfre, ufixed128x19 interesOfre)public {
        monto =  montoOfre;
        plazo =  plazoOfre;
        tasa =  interesOfre;
        acredor = msg.sender;

    }

**/



}
