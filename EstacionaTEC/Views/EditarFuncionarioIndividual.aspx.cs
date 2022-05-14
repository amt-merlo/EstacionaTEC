using EstacionaTEC.Controllers;
using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class EditarFuncionarioIndividual : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Carga el ID en el label
            String id = (string)Session["FuncionarioEditar"];
            lblIdentificacion.Text = id;
            //Trae los datos de la persona por medio del DAO y el controller
            Controller controller = Controller.getInstance();
            Persona persona = (Persona)controller.getPersona(int.Parse(id));

            txtBoxNombre.Text = persona.NombreCompleto;
            txtBoxCorreo.Text = persona.CorreoInstitucional;
            txtBoxCelular.Text = persona.NumTelefono.ToString();
            ddListDepartamento.SelectedIndex = persona.Departamento;

            //Jefatura
            if(persona.EsJefatura)
            {
                radButtonJefatura.SelectedIndex = 1;
            }
            else
            {
                radButtonJefatura.SelectedIndex = 0;
            }
            
            //Administrador
            if(persona.EsAdmin)
            {
                radButtonAdmin.SelectedIndex = 1;
            }
            else
            {
                radButtonAdmin.SelectedIndex = 0;
            }

            //Servicios Especiales
            if(persona.ServiciosEspeciales)
            {
                radButtonServiciosEspeciales.SelectedIndex = 1;
            }
            else
            {
                radButtonServiciosEspeciales.SelectedIndex = 0;
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {

        }
    }
}