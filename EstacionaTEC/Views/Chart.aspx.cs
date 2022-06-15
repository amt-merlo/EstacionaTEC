using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class Chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string ObtenerDatos()
        {
            string datos;
            datos = "[['Franjas', 'Personas'],['7-9', 100],['9-12', 150],['13-15', 90],['15-17', 50],['17-19', 30],['19-21', 20]]";
            return datos;
        }
    }
}