using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class GestorReservas
    {
        public void crearReserva(DTOReservas res) {
            Reserva reserva = new Reserva(res.IdentificacionPersona,res.Placa,res.HoraEntrada,res.HoraSalida,res.IdEspacio);
        }
    }
}