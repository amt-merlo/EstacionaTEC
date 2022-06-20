using EstacionaTEC.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class CrearReservaIndividual : System.Web.UI.Page
    {
        int idEspacio;
        int idDia;
        TimeSpan entrada;
        TimeSpan salida;

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

        protected void btnReservar_Click(object sender, EventArgs e)
        {
            //Tomamos la información que necesitamos
            int idPersona = Convert.ToInt32(Session["ID"]);
            String placa = ddlistPlacas.SelectedValue;
            int idEspacio = this.idEspacio;
            int idEstacionamiento = Convert.ToInt32(Session["EstacionamientoSeleccionado"]);


            //Si el sp devuelve true
            DTOReservas reserva = new DTOReservas(idPersona, placa, entrada, salida, idEspacio, idDia, idEstacionamiento);
            //Se envia el objeto al gestor por medio del controller
            Controller controller = Controller.getInstance();
            bool resultado = controller.createReserva(reserva);
            
            if (resultado)
            {
                Response.Write("<script>alert('¡Espacio reservado exitosamente!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Lo sentimos, hubo un error procesando la reserva, inténtelo de nuevo')</script>");
            }
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            idEspacio = Convert.ToInt32(gridEspacios.SelectedRow.Cells[1].Text);
            String numeracion = gridEspacios.SelectedRow.Cells[2].Text;
            lblEspacio.Text = numeracion;
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearReserva.aspx");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            idDia = gridFranjas.SelectedIndex;
            entrada = TimeSpan.Parse(gridFranjas.SelectedRow.Cells[2].Text);
            salida = TimeSpan.Parse(gridFranjas.SelectedRow.Cells[3].Text);
        }
    }
}