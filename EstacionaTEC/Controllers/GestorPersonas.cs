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
        private readonly Proxy proxy;

        public GestorPersonas()
        {
            this.proxy = new Proxy(dao);
        }

        public bool crearPersona(DTOPersonas dto)
        {
            Persona persona = new Persona(dto.Identificacion,dto.NombreCompleto,dto.NumTelefono,dto.CorreoInstitucional,dto.CorreoAlterno,dto.Departamento,dto.EsJefatura,dto.EsAdmin,dto.ServiciosEspeciales,dto.EsAdministrativo, dto.EstaEnPlanilla, dto.Contrasenna);
            return proxy.create(persona);
        }

        public Persona buscarPersona(int id)
        {
            Persona persona = (Persona)proxy.get(id);
            return persona;
        }

        public bool actualizarPersona(DTOPersonas dto)
        {
            Persona persona = new Persona(dto.Identificacion, dto.NombreCompleto, dto.NumTelefono, dto.CorreoInstitucional, dto.CorreoAlterno, dto.Departamento, dto.EsJefatura, dto.EsAdmin, dto.ServiciosEspeciales, dto.EsAdministrativo, dto.EstaEnPlanilla, dto.Contrasenna);
            return proxy.update(persona);
        }

        public List<Object> buscarTodaslasPersonas()
        {
            return proxy.getAll();
        }

        public List<Object> buscarPorDepartamento(int id)
        {
            return proxy.getBy(id);
        }
    }
}