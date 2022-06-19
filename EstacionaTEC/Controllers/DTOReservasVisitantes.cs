using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class DTOReservasVisitantes
    {
        string nombre;
        int id;
        string placa;
        string motivo;
        string sitio;
        int reserva;

        public DTOReservasVisitantes(string nombre, int id, string placa, string motivo, string sitio, int reserva)
        {
            this.Nombre = nombre;
            this.Id = id;
            this.Placa = placa;
            this.Motivo = motivo;
            this.Sitio = sitio;
        }

        public string Nombre { get => nombre; set => nombre = value; }
        public int Id { get => id; set => id = value; }
        public string Placa { get => placa; set => placa = value; }
        public string Motivo { get => motivo; set => motivo = value; }
        public string Sitio { get => sitio; set => sitio = value; }
        public int Reserva { get => reserva; set => reserva = value; }
    }
}