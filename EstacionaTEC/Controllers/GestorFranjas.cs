using EstacionaTEC.Controllers.DAO;
using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorFranjas
    {
        private readonly DAOFranjas dao = new DAOFranjas();
        public bool createFranja(DTOFranja franj) {
            FranjaHoraria franja = new FranjaHoraria(franj.IdDia, franj.IdPersona, franj.Inicio, franj.Fin);
            return dao.create(franja);
        }
    }
}