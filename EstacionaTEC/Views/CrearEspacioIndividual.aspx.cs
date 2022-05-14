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
    public partial class CrearEspacioIndividual : System.Web.UI.Page
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

            //Se carga la información del estacionamiento
            //Carga el ID en el label
            String id = (string)Session["Estacionamiento"];
            lblID.Text = id;

            //Trae los datos del estacionamiento por medio del DAO y el controller

            Controller controller = Controller.getInstance();
           
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

        }
    }
}