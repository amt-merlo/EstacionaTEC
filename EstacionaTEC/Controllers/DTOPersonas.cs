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
        private int departamento;
        private bool esJefatura;
        private bool esAdmin;
        private bool serviciosEspeciales;
        private bool esAdministrativo;
        private bool estaEnPlanilla;
        private string contrasenna;

        public DTOPersonas(int identificacion, string nombreCompleto, int numTelefono, string correoInstitucional, string correoAlterno, int departamento, bool esJefatura, bool esAdmin, bool serviciosEspeciales, bool esAdministrativo, bool estaEnPlanilla, string contrasenna)
        {
            this.identificacion = identificacion;
            this.nombreCompleto = nombreCompleto ?? throw new ArgumentNullException(nameof(nombreCompleto));
            this.numTelefono = numTelefono;
            this.correoInstitucional = correoInstitucional ?? throw new ArgumentNullException(nameof(correoInstitucional));
            this.correoAlterno = correoAlterno;
            this.departamento = departamento;
            this.esJefatura = esJefatura;
            this.esAdmin = esAdmin;
            this.serviciosEspeciales = serviciosEspeciales;
            this.esAdministrativo = esAdministrativo;
            this.estaEnPlanilla = estaEnPlanilla;
            this.contrasenna = contrasenna ?? throw new ArgumentNullException(nameof(contrasenna));
        }

        public int Identificacion { get => identificacion; set => identificacion = value; }
        public string NombreCompleto { get => nombreCompleto; set => nombreCompleto = value; }
        public int NumTelefono { get => numTelefono; set => numTelefono = value; }
        public string CorreoInstitucional { get => correoInstitucional; set => correoInstitucional = value; }
        public string CorreoAlterno { get => correoAlterno; set => correoAlterno = value; }
        public int Departamento { get => departamento; set => departamento = value; }
        public bool EsJefatura { get => esJefatura; set => esJefatura = value; }
        public bool EsAdmin { get => esAdmin; set => esAdmin = value; }
        public bool ServiciosEspeciales { get => serviciosEspeciales; set => serviciosEspeciales = value; }
        public bool EsAdministrativo { get => esAdministrativo; set => esAdministrativo = value; }
        public bool EstaEnPlanilla { get => estaEnPlanilla; set => estaEnPlanilla = value; }
        public string Contrasenna { get => contrasenna; set => contrasenna = value; }
    }
}