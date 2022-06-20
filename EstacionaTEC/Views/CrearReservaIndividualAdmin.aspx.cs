using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class CrearReservaIndividualAdmin : System.Web.UI.Page
    {
        int idEspacio;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            idEspacio = Convert.ToInt32(gridEspacios.SelectedRow.Cells[1].Text);
            String numeracion = gridEspacios.SelectedRow.Cells[2].Text;
            lblEspacio.Text = numeracion;
        }

        protected void btnReservar_Click(object sender, EventArgs e)
        {

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {

        }
    }
}