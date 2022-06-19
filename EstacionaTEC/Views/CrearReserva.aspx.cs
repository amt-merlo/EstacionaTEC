using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class CrearReserva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Consulta del usuario
            DataView dv = (DataView)sqlTipoUsuario.Select(DataSourceSelectArguments.Empty);
            //Se convierte el resultado en una tabla
            DataTable groupsTable = dv.ToTable();

            //Variables a usar
            int tipo = 0;

            //Se asignan los valores en las variables
            tipo = (int)groupsTable.Rows[0]["Tipo"];
            Session["Tipo"] = tipo;
        }

        protected void gridEstacionamiento_SelectedIndexChanged(object sender, EventArgs e)
        {
            String EstacionamientoSeleccionado = gridEstacionamiento.SelectedRow.Cells[1].Text;
            Session["EstacionamientoSeleccionado"] = EstacionamientoSeleccionado;
            Response.Redirect("CrearReservaIndividual.aspx");
        }
    }
}