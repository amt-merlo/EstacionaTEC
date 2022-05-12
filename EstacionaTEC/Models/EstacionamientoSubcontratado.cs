using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class EstacionamientoSubcontratado : Estacionamiento
    {
        private int IdEstacionamiento;
        private string nombre;
        private string ubicacion;
        private int cantidadEspaciosTotal;
        private int cantidadEspaciosActual;
        private int cantidadVehicEspecial;
        private TimeSpan horaApertura;
        private TimeSpan horaCierre;
        private string nombreContrato;
        private int numeroTelefonoContacto;
        private string contrato;

        public int IdEstacionamiento1 { get => IdEstacionamiento; set => IdEstacionamiento = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Ubicacion { get => ubicacion; set => ubicacion = value; }
        public int CantidadEspaciosTotal { get => cantidadEspaciosTotal; set => cantidadEspaciosTotal = value; }
        public int CantidadEspaciosActual { get => cantidadEspaciosActual; set => cantidadEspaciosActual = value; }
        public int CantidadVehicEspecial { get => cantidadVehicEspecial; set => cantidadVehicEspecial = value; }
        public TimeSpan HoraApertura { get => horaApertura; set => horaApertura = value; }
        public TimeSpan HoraCierre { get => horaCierre; set => horaCierre = value; }
        public string NombreContrato { get => nombreContrato; set => nombreContrato = value; }
        public int NumeroTelefonoContacto { get => numeroTelefonoContacto; set => numeroTelefonoContacto = value; }
        public string Contrato { get => contrato; set => contrato = value; }

        public void CrearEspacio()
        {
            throw new NotImplementedException();
        }
    }
}