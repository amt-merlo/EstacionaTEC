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
    public partial class GestionarPlanilla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = int.Parse(Session["ID"].ToString());
            Controller controller = Controller.getInstance();
            Persona persona = (Persona)controller.getPersona(ID);

            int departamento = persona.Departamento;
            Session["Departamento"] = departamento;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ID = int.Parse(GridView1.SelectedRow.Cells[1].Text);

            Controller controller = Controller.getInstance();
            Persona persona = (Persona)controller.getPersona(ID);

            lblIdentificacion.Text = ID.ToString();
            lblNombre.Text = persona.NombreCompleto;

            if (persona.EstaEnPlanilla)
            {
                lblPlanilla.Text = "Si";
            }
            else
            {
                lblPlanilla.Text = "No";
            }

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            int index = radButtonPlanilla.SelectedIndex;
            if (index == 0)
            {
                int ID = int.Parse(lblIdentificacion.Text);
                Controller controller = Controller.getInstance();
                Persona persona = (Persona)controller.getPersona(ID);

            }
            else
            {   
                
                int ID = int.Parse(lblIdentificacion.Text);
                Controller controller = Controller.getInstance();
                Persona persona = (Persona)controller.getPersona(ID);
                bool planilla; 

                if (persona.EstaEnPlanilla)
                {
                     planilla = false;
                }
                else
                {
                     planilla = true;
                }

                DTOPersonas dto = new DTOPersonas(ID, persona.NombreCompleto, persona.NumTelefono, persona.CorreoInstitucional, persona.CorreoAlterno, persona.Departamento, persona.EsJefatura, persona.EsAdmin, persona.ServiciosEspeciales, persona.EsAdministrativo, planilla, persona.Contraseña);

                bool resultado = controller.actualizarPersona(dto);

                if (resultado)
                {
                    Response.Redirect("GestionarPlanilla.aspx");
                }
                else
                {
                    lblMensaje.Text = "No se pudo realizar el cambio, intente más tarde";
                }

            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Informes.aspx");
        }
    }
}