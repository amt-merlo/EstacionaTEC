using EstacionaTEC.Controllers.DAO;
using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorReservas
    {
        private readonly DAOReservas dao = new DAOReservas();
        private readonly Proxy proxy;

        public GestorReservas()
        {
            this.proxy = new Proxy(dao);
        }
        public bool crearReserva(DTOReservas res) {
            Reserva reserva = new Reserva(res.IdentificacionPersona,res.Placa,res.HoraEntrada,res.HoraSalida,res.IdEspacio);
            return proxy.create(reserva);
        }
    }
}