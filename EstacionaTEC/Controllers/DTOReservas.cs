﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class DTOReservas
    {
        private int identificacionPersona;
        private string placa;
        private TimeSpan horaEntrada;
        private TimeSpan horaSalida;
        private int idEspacio;

        public DTOReservas(int identificacionPersona, string placa, TimeSpan horaEntrada, TimeSpan horaSalida, int idEspaciod)
        {
            this.identificacionPersona = identificacionPersona;
            this.placa = placa;
            this.horaEntrada = horaEntrada;
            this.horaSalida = horaSalida;
            this.idEspacio = idEspacio;
        }

        public int IdentificacionPersona { get => identificacionPersona; set => identificacionPersona = value; }
        public string Placa { get => placa; set => placa = value; }
        public TimeSpan HoraEntrada { get => horaEntrada; set => horaEntrada = value; }
        public TimeSpan HoraSalida { get => horaSalida; set => horaSalida = value; }
        public int IdEspacio { get => idEspacio; set => idEspacio = value; }
    }
}