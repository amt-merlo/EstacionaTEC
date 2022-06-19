using EstacionaTEC.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class CrearReservaIndividual : System.Web.UI.Page
    {
        int idEspacio;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReservar_Click(object sender, EventArgs e)
        {
            //Tomamos la información que necesitamos
            int idPersona = Convert.ToInt32(Session["ID"]);
            String placa = ddlistPlacas.SelectedValue;
            int idEspacio = this.idEspacio;

            //Horas
            String horaInicio = ddListHoraInicio.SelectedValue;
            String minutosInicio = ddListMinutosInicio.SelectedValue;
            String horaFin = ddListHoraFin.SelectedValue;
            String minutosFin = ddListMinutosFin.SelectedValue;

            //Se conforman los timeSpan
            TimeSpan horaEntrada = TimeSpan.Parse(horaInicio + ":" + minutosInicio);
            TimeSpan horaSalida = TimeSpan.Parse(horaFin + ":" + minutosFin);

            //Aqui primero se debe validar si el horario coincide con la franja o no

            //Si el sp devuelve true
            DTOReservas reserva = new DTOReservas(idPersona, placa, horaEntrada, horaSalida, idEspacio);
            //Se envia el objeto al gestor por medio del controller
            Controller controller = Controller.getInstance();
            bool resultado = controller.createReserva(reserva);

            if (resultado)
            {
                Response.Write("<script>alert('¡Funcionario registrado exitosamente!')</script>");
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
    }
}