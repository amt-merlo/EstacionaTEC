using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class EditarFuncionarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String IDFuncionario = gridViewFuncionarios.SelectedRow.Cells[1].Text;
            Session["FuncionarioEditar"] = IDFuncionario;
            Response.Redirect("EditarFuncionarioIndividual.aspx");
        }
    }
}