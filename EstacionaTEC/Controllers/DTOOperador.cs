using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class DTOOperador
    {
        public DTOOperador(int id, string nombreCompleto, string correo, int celular, int idEstacionamiento, String contrasenna)
        {
            this.Id = id;
            this.NombreCompleto = nombreCompleto;
            this.Correo = correo;
            this.Celular = celular;
            this.IdEstacionamiento = idEstacionamiento;
            this.Contrasenna = contrasenna;
        }

        public int Id { get; set; }
        public string NombreCompleto { get; set; }
        public string Correo { get; set; }
        public int Celular { get; set; }
        public int IdEstacionamiento { get; set; }
        public string Contrasenna { get; set; }
    }
}