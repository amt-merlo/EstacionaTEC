using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class Operador
    {
        public Operador(int id, string nombreCompleto, string correo, int celular, int idEstacionamiento)
        {
            this.Id = id;
            this.NombreCompleto = nombreCompleto;
            this.Correo = correo;
            this.Celular = celular;
            this.IdEstacionamiento = idEstacionamiento;
        }

        public int Id { get; set; }
        public string NombreCompleto { get; set; }
        public string Correo { get; set; }
        public int Celular { get; set; }
        public int IdEstacionamiento { get; set; }
    }
}