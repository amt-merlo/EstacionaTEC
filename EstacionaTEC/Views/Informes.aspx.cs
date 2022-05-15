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

        }

        protected void btnInfoEstacionamientos_Click(object sender, EventArgs e)
        {
            Response.Redirect("verEstacionamientos.aspx");
        }

        protected void btnInfoFuncionarios_Click(object sender, EventArgs e)
        {

        }

        protected void btnEstadisticasFranjasHorarias_Click(object sender, EventArgs e)
        {

        }

        protected void btnVerFuncionario_Click(object sender, EventArgs e)
        {

        }
    }
}