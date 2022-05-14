using EstacionaTEC.Controllers.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorEspacio
    {
        private readonly DAOEspacio dao = new DAOEspacio();

        public bool crearEspacio(DTOEspacio espacio)
        {
            return dao.create(espacio);
        }
    }
}