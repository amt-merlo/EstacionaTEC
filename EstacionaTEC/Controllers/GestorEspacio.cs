using EstacionaTEC.Controllers.DAO;
using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorEspacio
    {
        private readonly DAOEspacio dao = new DAOEspacio();

        public bool crearEspacio(DTOEspacio dto)
        {
            Espacio espacio = new Espacio(dto.IdEstacionamiento, dto.IdTipo, dto.Numeracion);
            return dao.create(espacio);
        }
    }
}