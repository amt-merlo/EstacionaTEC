using EstacionaTEC.Controllers.DAO;
using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorVehiculos
    {
        private readonly DAOVehiculos dao = new DAOVehiculos();
        public bool crearVehiculo(DTOVehiculos veh) {
            Vehiculo vehiculo = new Vehiculo(veh.IdPersona,veh.Placa);
            return dao.create(vehiculo);
        }
    }
}