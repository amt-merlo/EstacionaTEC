using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class Reserva
    {
        private int identificacionPersona;
        private string placa;
        private TimeSpan horaEntrada;
        private TimeSpan horaSalida;
        private int idEspacio;

        public int IdentificacionPersona { get => identificacionPersona; set => identificacionPersona = value; }
        public string Placa { get => placa; set => placa = value; }
        public TimeSpan HoraEntrada { get => horaEntrada; set => horaEntrada = value; }
        public TimeSpan HoraSalida { get => horaSalida; set => horaSalida = value; }
        public int IdEspacio { get => idEspacio; set => idEspacio = value; }
    }
}