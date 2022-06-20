using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class DTOReservasVisitantes
    {
        public DTOReservasVisitantes(string nombre, int id, string motivo, string sitio, int identificacionPersona, string placa, TimeSpan horaEntrada, TimeSpan horaSalida, int idEspacio, int idEstacionamiento)
        {
            Nombre = nombre;
            Id = id;
            Motivo = motivo;
            Sitio = sitio;
            IdentificacionPersona = identificacionPersona;
            Placa = placa;
            HoraEntrada = horaEntrada;
            HoraSalida = horaSalida;
            IdEspacio = idEspacio;
            IdEstacionamiento = idEstacionamiento;
        }

        public string Nombre { get => Nombre; set => Nombre = value; }
        public int Id { get => Id; set => Id = value; }
        public string Motivo { get => Motivo; set => Motivo = value; }
        public string Sitio { get => Sitio; set => Sitio = value; }
        public int IdentificacionPersona { get => IdentificacionPersona; set => IdentificacionPersona = value; }
        public string Placa { get => Placa; set => Placa = value; }
        public TimeSpan HoraEntrada { get => HoraEntrada; set => HoraEntrada = value; }
        public TimeSpan HoraSalida { get => HoraSalida; set => HoraSalida = value; }
        public int IdEspacio { get => IdEspacio; set => IdEspacio = value; }
        public int IdEstacionamiento { get => IdEstacionamiento; set => IdEstacionamiento = value; }
    }
}