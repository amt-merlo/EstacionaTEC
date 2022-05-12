using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorVehiculos
    {
        public void crearVehiculo(DTOVehiculos veh) {
            Vehiculo vehiculo = new Vehiculo(veh.IdPersona,veh.Placa);
        }
    }
}