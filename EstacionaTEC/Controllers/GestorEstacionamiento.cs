using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorEstacionamiento
    {
        private readonly CreadorTEC creadorTEC = new CreadorTEC();
        private readonly CreadorSubcontradado creadorSUB = new CreadorSubcontradado();
        public void mostrarEstacionamientos()
        {

        }
        public void crearEstacionamiento(DTOEstacionamientos DTOEst)
        {
            Estacionamiento estacionamiento;
            switch (DTOEst.Tipo)
            {
                case 0:
                    estacionamiento = creadorTEC.createEstacionamiento(DTOEst);
                    break;
                case 1:
                    estacionamiento = creadorTEC.createEstacionamiento(DTOEst);
                    break;
                case 2:
                    estacionamiento = creadorSUB.createEstacionamiento(DTOEst);
                    break;
                default:
                    throw new Exception("No existe el tipo de parqueo");
            }
        }
    }
}