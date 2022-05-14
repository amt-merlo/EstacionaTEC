using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using EstacionaTEC.Controllers;
using EstacionaTEC.Controllers.DAO;
using EstacionaTEC.Models;

namespace EstacionaTEC.Controllers
{
    public class GestorPersonas
    {
        private readonly DAOPersonas dao = new DAOPersonas();
        public bool crearPersona(DTOPersonas dto)
        {
            Persona persona = new Persona(dto.Identificacion,dto.NombreCompleto,dto.NumTelefono,dto.CorreoInstitucional,dto.CorreoAlterno,dto.Departamento,dto.EsJefatura,dto.EsAdmin,dto.ServiciosEspeciales,dto.EsAdministrativo, dto.EstaEnPlanilla, dto.Contrasenna);
            return dao.create(persona);
        }
    }
}