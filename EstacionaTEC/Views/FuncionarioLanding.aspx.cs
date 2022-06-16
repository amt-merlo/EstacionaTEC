using EstacionaTEC.Controllers;
using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class FuncionarioLanding : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //Consulta del nombre del usuario
            DataView dv = (DataView)sqlGetNombre.Select(DataSourceSelectArguments.Empty);
            //Se convierte el resultado en una tabla
            DataTable groupsTable = dv.ToTable();

            //Variables a usar
            String nombre = "";

            //Se asignan los valores en las variables
            nombre = (String)groupsTable.Rows[0][0];
            lblNombre.Text = nombre;
        }
        protected void btnInformes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Informes.aspx");
        }


        protected void btnModificarDatos_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarInfoPersonal.aspx");
        }

        protected void btnReservar_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("EditarInfoPersonal.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Informes.aspx");
        }
    }
}