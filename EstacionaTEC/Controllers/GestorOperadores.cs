using EstacionaTEC.Controllers.DAO;
using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorOperadores
    {
        private readonly DAOOperador dao = new DAOOperador();
        public bool crearOperador(DTOOperador dto)
        {
            Operador operador = new Operador(dto.Id,dto.NombreCompleto,dto.Correo,dto.Celular,dto.IdEstacionamiento);
            return dao.create(operador);
        }
    }
}