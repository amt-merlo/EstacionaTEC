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
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {

        }
    }
}