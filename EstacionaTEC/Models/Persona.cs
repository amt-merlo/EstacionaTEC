using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class Persona
    {
        private int identificacion;
        private String nombreCompleto;
        private int numTelefono;
        private String correoInstitucional;
        private String correoAlterno;
        private String departamento;
        private List<Vehiculo> vehiculos = new List<Vehiculo>();
        private bool esJefatura;
        private bool esAdmin;
        private bool serviciosEspeciales;
        private List<FranjaHoraria> horario = new List<FranjaHoraria>();

        public Persona(int identificacion, string nombreCompleto, int numTelefono, string correoInstitucional, string correoAlterno, string departamento,
            bool esJefatura, bool esAdmin, bool serviciosEspeciales)
        {
            this.Identificacion = identificacion;
            this.NombreCompleto = nombreCompleto;
            this.NumTelefono = numTelefono;
            this.CorreoInstitucional = correoInstitucional;
            this.CorreoAlterno = correoAlterno;
            this.Departamento = departamento;
            this.EsJefatura = esJefatura;
            this.EsAdmin = esAdmin;
            this.ServiciosEspeciales = serviciosEspeciales;
        }

        public int Identificacion { get => identificacion; set => identificacion = value; }
        public string NombreCompleto { get => nombreCompleto; set => nombreCompleto = value; }
        public int NumTelefono { get => numTelefono; set => numTelefono = value; }
        public string CorreoInstitucional { get => correoInstitucional; set => correoInstitucional = value; }
        public string CorreoAlterno { get => correoAlterno; set => correoAlterno = value; }
        public string Departamento { get => departamento; set => departamento = value; }
        public bool EsJefatura { get => esJefatura; set => esJefatura = value; }
        public bool EsAdmin { get => esAdmin; set => esAdmin = value; }
        public bool ServiciosEspeciales { get => serviciosEspeciales; set => serviciosEspeciales = value; }
        internal List<Vehiculo> Vehiculos { get => vehiculos; set => vehiculos = value; }
        internal List<FranjaHoraria> Horario { get => horario; set => horario = value; }
    }
}