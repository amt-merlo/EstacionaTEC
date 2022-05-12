using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorFranjas
    {
        public void createFranja(DTOFranja franj) {
            FranjaHoraria franja = new FranjaHoraria(franj.IdDia, franj.IdPersona, franj.Inicio, franj.Fin);
        }
    }
}