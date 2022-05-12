using EstacionaTEC.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class CreadorTEC : CreadorEstacionamiento
    {
        public override Estacionamiento createEstacionamiento(DTOEstacionamientos DTOEst)
        {
            return new EstacionamientoTEC(DTOEst.IdEstacionamiento1, DTOEst.Nombre, DTOEst.Ubicacion, DTOEst.CantidadEspaciosTotal, DTOEst.CantidadEspaciosActual, DTOEst.CantidadVehicEspecial, DTOEst.HoraApertura, DTOEst.HoraCierre, DTOEst.Tipo, DTOEst.CantidadVehicTEC);
        }
    }
}