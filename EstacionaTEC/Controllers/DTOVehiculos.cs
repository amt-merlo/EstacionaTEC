using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class DTOVehiculos
    {
        private int idPersona;
        private String placa;

        public DTOVehiculos(int idPersona, string placa)
        {
            this.IdPersona = idPersona;
            this.Placa = placa;
        }

        public int IdPersona { get => idPersona; set => idPersona = value; }
        public string Placa { get => placa; set => placa = value; }
    }
}