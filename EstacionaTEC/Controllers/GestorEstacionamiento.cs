using EstacionaTEC.Controllers.DAO;
using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorEstacionamiento
    {
        private readonly CreadorTEC creadorTEC = new CreadorTEC();
        private readonly CreadorSubcontradado creadorSUB = new CreadorSubcontradado();
        private readonly DAOEstacionamientos dao = new DAOEstacionamientos();
        private readonly Proxy proxy;

        public GestorEstacionamiento()
        {
            this.proxy = new Proxy(dao);
        }
        public List<Object> mostrarEstacionamientos()
        {
            List<Object> estacionamientos = new List<Object>();
            estacionamientos = proxy.getAll();
            return estacionamientos;
        }
        public bool crearEstacionamiento(DTOEstacionamientos DTOEst)
        {
            Estacionamiento estacionamiento;
            switch (DTOEst.Tipo)
            {
                case 1:
                    estacionamiento = creadorTEC.createEstacionamiento(DTOEst);
                    break;
                case 2:
                    estacionamiento = creadorTEC.createEstacionamiento(DTOEst);
                    break;
                case 3:
                    estacionamiento = creadorSUB.createEstacionamiento(DTOEst);
                    break;
                default:
                    throw new Exception("No existe el tipo de parqueo");
            }
            return proxy.create(estacionamiento);
        }

        public Estacionamiento buscarEstacionamiento(int ID)
        {
            Estacionamiento estacionamiento= (Estacionamiento)proxy.get(ID);
            return estacionamiento;
        }
    }
}