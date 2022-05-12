using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class DTOEstacionamientos
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
        private int tipo;
        private int cantidadVehicTEC;

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
        public int Tipo { get => tipo; set => tipo = value; }
        public int CantidadVehicTEC { get => cantidadVehicTEC; set => cantidadVehicTEC = value; }

        public DTOEstacionamientos(int idEstacionamiento, string nombre, string ubicacion, int cantidadEspaciosTotal, int cantidadEspaciosActual, int cantidadVehicEspecial, TimeSpan horaApertura, TimeSpan horaCierre, string nombreContrato, int numeroTelefonoContacto, string contrato, int tipo)
        {
            IdEstacionamiento1 = idEstacionamiento;
            this.Nombre = nombre ?? throw new ArgumentNullException(nameof(nombre));
            this.Ubicacion = ubicacion ?? throw new ArgumentNullException(nameof(ubicacion));
            this.CantidadEspaciosTotal = cantidadEspaciosTotal;
            this.CantidadEspaciosActual = cantidadEspaciosActual;
            this.CantidadVehicEspecial = cantidadVehicEspecial;
            this.HoraApertura = horaApertura;
            this.HoraCierre = horaCierre;
            this.NombreContrato = nombreContrato ?? throw new ArgumentNullException(nameof(nombreContrato));
            this.NumeroTelefonoContacto = numeroTelefonoContacto;
            this.Contrato = contrato ?? throw new ArgumentNullException(nameof(contrato));
            this.Tipo = tipo;
        }

        public DTOEstacionamientos(int idEstacionamiento, string nombre, string ubicacion, int cantidadEspaciosTotal, int cantidadEspaciosActual, int cantidadVehicEspecial, TimeSpan horaApertura, TimeSpan horaCierre, int tipo, int cantidadVehicTEC)
        {
            IdEstacionamiento1 = idEstacionamiento;
            this.Nombre = nombre ?? throw new ArgumentNullException(nameof(nombre));
            this.Ubicacion = ubicacion ?? throw new ArgumentNullException(nameof(ubicacion));
            this.CantidadEspaciosTotal = cantidadEspaciosTotal;
            this.CantidadEspaciosActual = cantidadEspaciosActual;
            this.CantidadVehicEspecial = cantidadVehicEspecial;
            this.HoraApertura = horaApertura;
            this.HoraCierre = horaCierre;
            this.Tipo = tipo;
            this.CantidadVehicTEC = cantidadVehicTEC;
        }
    }
}