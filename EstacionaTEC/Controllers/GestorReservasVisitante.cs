using EstacionaTEC.Controllers.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorReservasVisitante
    {
        private readonly DAOReservasVisitante dao = new DAOReservasVisitante();
        private readonly Proxy proxy;

        public GestorReservasVisitante()
        {
            this.proxy = new Proxy(dao);
        }

        public bool createReservaVisitante(DTOReservasVisitantes dto)
        {
            return proxy.create(dto);
        }
    }
}