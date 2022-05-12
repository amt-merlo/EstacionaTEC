using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class EstacionamientoTEC : Estacionamiento
    {
        private int IdEstacionamiento;
        private string nombre;
        private string ubicacion;
        private int cantidadEspaciosTotal;
        private int cantidadEspaciosActual;
        private int cantidadVehicEspecial;
        private TimeSpan horaApertura;
        private TimeSpan horaCierre;
        private int tipo;
        private int cantidadVehicTEC;

        public EstacionamientoTEC(int idEstacionamiento, string nombre, string ubicacion, int cantidadEspaciosTotal, int cantidadEspaciosActual, int cantidadVehicEspecial, TimeSpan horaApertura, TimeSpan horaCierre, int tipo, int cantidadVehicTEC)
        {
            IdEstacionamiento = idEstacionamiento;
            this.nombre = nombre;
            this.ubicacion = ubicacion;
            this.cantidadEspaciosTotal = cantidadEspaciosTotal;
            this.cantidadEspaciosActual = cantidadEspaciosActual;
            this.cantidadVehicEspecial = cantidadVehicEspecial;
            this.horaApertura = horaApertura;
            this.horaCierre = horaCierre;
            this.tipo = tipo;
            this.cantidadVehicTEC = cantidadVehicTEC;
        }

        public int IdEstacionamiento1 { get => IdEstacionamiento; set => IdEstacionamiento = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Ubicacion { get => ubicacion; set => ubicacion = value; }
        public int CantidadEspaciosTotal { get => cantidadEspaciosTotal; set => cantidadEspaciosTotal = value; }
        public int CantidadEspaciosActual { get => cantidadEspaciosActual; set => cantidadEspaciosActual = value; }
        public int CantidadVehicEspecial { get => cantidadVehicEspecial; set => cantidadVehicEspecial = value; }
        public TimeSpan HoraApertura { get => horaApertura; set => horaApertura = value; }
        public TimeSpan HoraCierre { get => horaCierre; set => horaCierre = value; }
        public int Tipo { get => tipo; set => tipo = value; }
        public int CantidadVehicTEC { get => cantidadVehicTEC; set => cantidadVehicTEC = value; }

        public void CrearEspacio()
        {
            throw new NotImplementedException();
        }
    }
}