using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class DTOPersonas
    {

        private int identificacion;
        private String nombreCompleto;
        private int numTelefono;
        private String correoInstitucional;
        private String correoAlterno;
        private String departamento;
        private bool esJefatura;
        private bool esAdmin;
        private bool serviciosEspeciales;

        public DTOPersonas(int identificacion, string nombreCompleto, int numTelefono, string correoInstitucional, string correoAlterno, string departamento, bool esJefatura, bool esAdmin, bool serviciosEspeciales)
        {
            this.Identificacion = identificacion;
            this.NombreCompleto = nombreCompleto ?? throw new ArgumentNullException(nameof(nombreCompleto));
            this.NumTelefono = numTelefono;
            this.CorreoInstitucional = correoInstitucional ?? throw new ArgumentNullException(nameof(correoInstitucional));
            this.CorreoAlterno = correoAlterno ?? throw new ArgumentNullException(nameof(correoAlterno));
            this.Departamento = departamento ?? throw new ArgumentNullException(nameof(departamento));
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
    }
}