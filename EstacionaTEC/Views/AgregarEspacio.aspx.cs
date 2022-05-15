using EstacionaTEC.Controllers;
using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class AgregarEspacio : System.Web.UI.Page
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

        protected void gridViewEstacionamientos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gridViewEstacionamientos_Disposed(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String IDEstacionamiento = gridViewEstacionamientoPropio.SelectedRow.Cells[1].Text;
            Session["Estacionamiento"] = IDEstacionamiento;
            Response.Redirect("CrearEspacioIndividual.aspx");
        }

        protected void gridViewEstacionamientoCampus_SelectedIndexChanged(object sender, EventArgs e)
        {
            String IDEstacionamiento = gridViewEstacionamientoCampus.SelectedRow.Cells[1].Text;
            Session["Estacionamiento"] = IDEstacionamiento;
            Response.Redirect("CrearEspacioIndividual.aspx");
        }

        protected void gridViewEstacionamientoSubcontratado_SelectedIndexChanged(object sender, EventArgs e)
        {
            String IDEstacionamiento = gridViewEstacionamientoSubcontratado.SelectedRow.Cells[1].Text;
            Session["Estacionamiento"] = IDEstacionamiento;
            Response.Redirect("CrearEspacioIndividual.aspx");
        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdministradorLanding.aspx");
        }
    }
}