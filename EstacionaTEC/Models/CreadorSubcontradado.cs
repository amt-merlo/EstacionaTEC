using EstacionaTEC.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class CreadorSubcontradado : CreadorEstacionamiento
    {
        public override Estacionamiento createEstacionamiento(DTOEstacionamientos DTOEst)
        {
            return new EstacionamientoSubcontratado(DTOEst.IdEstacionamiento1,DTOEst.Nombre,DTOEst.Ubicacion,DTOEst.CantidadEspaciosTotal,DTOEst.CantidadEspaciosActual,DTOEst.CantidadVehicEspecial,DTOEst.HoraApertura,DTOEst.HoraCierre,DTOEst.NombreContrato,DTOEst.NumeroTelefonoContacto,DTOEst.Contrato);
        }
    }
}