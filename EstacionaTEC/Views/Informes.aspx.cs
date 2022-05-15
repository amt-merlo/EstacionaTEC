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
    public partial class Informes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = int.Parse(Session["ID"].ToString());
            Controller controller = Controller.getInstance();
            Persona persona = (Persona)controller.getPersona(ID);

            bool jefatura = persona.EsJefatura;
            bool administrador = persona.EsAdmin;

            if (jefatura)
            {
                btnEstadisticasFranjasHorarias.Visible = true;
                btnModificarPlanilla.Visible = true;
                btnVerUnFuncionario.Visible = true;
            }
            else
            {
                btnEstadisticasFranjasHorarias.Visible = false;
                btnModificarPlanilla.Visible = false;
                btnVerUnFuncionario.Visible = false;
            }

            if (administrador)
            {
                btnModificarPlanilla.Visible = false;
            }
        }

        protected void btnInfoEstacionamientos_Click(object sender, EventArgs e)
        {
            Response.Redirect("verEstacionamientos.aspx");
        }

        protected void btnInfoFuncionarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("verFuncionarios.aspx");
        }

        protected void btnEstadisticasFranjasHorarias_Click(object sender, EventArgs e)
        {

        }

        protected void btnVerFuncionario_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerFuncionariosJefatura.aspx");
        }

        protected void btnModificarPlanilla_Click(object sender, EventArgs e)
        {
            Response.Redirect("GestionarPlanilla.aspx");
        }

        protected void btnVerUnFuncionario_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerUnFuncionario.aspx");
        }
    }
}