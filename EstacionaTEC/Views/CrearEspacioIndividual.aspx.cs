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

            //Se carga la información del estacionamiento>>>>>>>>>>>
            //Carga el ID en el label
            String id = (string)Session["Estacionamiento"];
            lblID.Text = id;

            //Trae los datos del estacionamiento por medio del DAO y el controller
            Controller controller = Controller.getInstance();
            Object obj = controller.getEstacionamiento(int.Parse(id));
            

            if (obj is EstacionamientoTEC)
            {
                EstacionamientoTEC estacionamiento = (EstacionamientoTEC)obj;
                lblNombreEstacionamiento.Text = estacionamiento.Nombre;
                lblUbicacion.Text = estacionamiento.Ubicacion;
                lblCantEspaciosTotal.Text = estacionamiento.CantidadEspaciosTotal.ToString();
                lblCantEspaciosDisponibles.Text = estacionamiento.CantidadEspaciosActual.ToString();
                lblHoraApertura.Text = estacionamiento.HoraApertura.ToString();
                lblHoraCierre.Text = estacionamiento.HoraCierre.ToString();
                
            }
            else
            {
                EstacionamientoSubcontratado estacionamiento = (EstacionamientoSubcontratado)obj;
                lblNombreEstacionamiento.Text = estacionamiento.Nombre;
                lblUbicacion.Text = estacionamiento.Ubicacion;
                lblCantEspaciosTotal.Text = estacionamiento.CantidadEspaciosTotal.ToString();
                lblCantEspaciosDisponibles.Text = estacionamiento.CantidadEspaciosActual.ToString();
                lblHoraApertura.Text = estacionamiento.HoraApertura.ToString();
                lblHoraCierre.Text = estacionamiento.HoraCierre.ToString();
            }

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            int IDEstacionamiento = int.Parse(Session["Estacionamiento"].ToString());
            int tipo = ddListTipoEspacio.SelectedIndex+1;
            int validaNumeracion = radButtonNumeracion.SelectedIndex;
            String numeracion;

            if (validaNumeracion == 0)
            {
                numeracion = "N/A";
            }
            else
            {
                numeracion = txtBoxNumeracion.Text;
            }

            //Se crea el objeto DTO
            DTOEspacio espacio = new DTOEspacio(IDEstacionamiento, tipo, numeracion);

            //Se envia el objeto al DAO por medio de controller
            Controller controller = Controller.getInstance();
            bool resultado = controller.crearEspacio(espacio);

            if (resultado)
            {
                Response.Redirect("CrearEspacioIndividual.aspx");
            }
            else
            {
                lblMensaje.Text = "Se produjo un error al registrar el espacio, por favor intente de nuevo";
            }
        }

        protected void radButtonNumeracion_SelectedIndexChanged(object sender, EventArgs e)
        {
            int indice = radButtonNumeracion.SelectedIndex;
            if (indice == 0)
            {
                txtBoxNumeracion.Visible = false;
                lblNumeracion.Text = "";
            }
            else
            {
                txtBoxNumeracion.Visible = true;
                lblNumeracion.Text = "Ingrese la numeración: ";
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarEspacio.aspx");
        }
    }
}