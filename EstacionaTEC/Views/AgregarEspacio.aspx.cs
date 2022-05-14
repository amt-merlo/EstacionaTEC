using EstacionaTEC.Controllers;
using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class AgregarEspacio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Controller controller = Controller.getInstance();
            List<Object> estacionamientos = controller.mostrarEstacionamiento();

            EstacionamientoTEC estaPrueba = new EstacionamientoTEC(0, "Estacionamiento SJ", "SJ", 0, 0, 0, TimeSpan.Parse("03:23"), TimeSpan.Parse("03:23"), 1, 0);
            estacionamientos.Add(estaPrueba);
            lblNombre.Text = estaPrueba.Nombre;

            /*
            gridViewEstacionamientos.DataSource = null;
            gridViewEstacionamientos.DataSource = estacionamientos;
            
            
            if(estacionamientos.Count > 0)
            {
                gridViewEstacionamientos.Columns[0].HeaderText = "ID";
                gridViewEstacionamientos.Columns[1].HeaderText = "Nombre";
                gridViewEstacionamientos.Columns[2].HeaderText = "Ubicación";
                gridViewEstacionamientos.Columns[3].HeaderText = "Espacios";
                gridViewEstacionamientos.Columns[4].HeaderText = "Disponibles";
                gridViewEstacionamientos.Columns[5].HeaderText = "Vehiculo Especial";
                gridViewEstacionamientos.Columns[6].HeaderText = "Hora Apertura";
                gridViewEstacionamientos.Columns[7].HeaderText = "Hora Cierre";
                gridViewEstacionamientos.Columns[8].HeaderText = "Contacto";
                gridViewEstacionamientos.Columns[9].HeaderText = "Telefono Contacto";
                gridViewEstacionamientos.Columns[10].HeaderText = "Contrato";
            }
            */
        }

        protected void gridViewEstacionamientos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gridViewEstacionamientos_Disposed(object sender, EventArgs e)
        {

        }
    }
}