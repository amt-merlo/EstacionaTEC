using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class verFuncionarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddListDepartamento.Visible = false;
            lblFiltro.Text = "";

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

        protected void radButtonFiltro_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = radButtonFiltro.SelectedIndex;

            if (index == 1) //si
            {
                ddListDepartamento.Visible = true;
                lblFiltro.Text = "¿Desea filtrar las personas por departamento?";
            }
            else {
                ddListDepartamento.Visible = false;
                lblFiltro.Text = "";
            }
        }

        protected void ddListDepartamento_SelectedIndexChanged(object sender, EventArgs e)
        {

            //int index = ddListDepartamento.SelectedIndex;
            //string parametro = index.ToString();

        }
    }
}