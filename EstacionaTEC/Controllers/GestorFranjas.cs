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
        private readonly Proxy proxy;

        public GestorFranjas()
        {
            this.proxy = new Proxy(dao);
        }
        public bool createFranja(DTOFranja franj) {
            FranjaHoraria franja = new FranjaHoraria(franj.IdDia, franj.IdPersona, franj.Inicio, franj.Fin);
            return proxy.create(franja);
        }
    }
}