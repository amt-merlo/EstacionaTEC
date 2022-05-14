using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class DTOEspacio
    {
        private int idEstacionamiento;
        private int idTipo;
        private string numeracion;

        public DTOEspacio(int idEstacionamiento, int idTipo, string numeracion)
        {
            this.IdEstacionamiento = idEstacionamiento;
            this.IdTipo = idTipo;
            this.Numeracion = numeracion;
        }

        public int IdEstacionamiento { get => idEstacionamiento; set => idEstacionamiento = value; }
        public int IdTipo { get => idTipo; set => idTipo = value; }
        public string Numeracion { get => numeracion; set => numeracion = value; }
    }
}