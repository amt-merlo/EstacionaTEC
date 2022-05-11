using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class Vehiculo
    {
        private int idPersona;
        private String placa;

        public Vehiculo(int idPersona, string placa)
        {
            this.IdPersona = idPersona;
            this.Placa = placa;
        }

        public int IdPersona { get => idPersona; set => idPersona = value; }
        public string Placa { get => placa; set => placa = value; }
    }
}