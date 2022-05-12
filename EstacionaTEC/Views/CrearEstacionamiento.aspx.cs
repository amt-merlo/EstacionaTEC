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
    public partial class CrearEstacionamiento : System.Web.UI.Page
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

            //Consulta del tipo de estacionamiento
            DataView dv2 = (DataView)sqlGetTipoEstacionamiento.Select(DataSourceSelectArguments.Empty);

            //Visibilidad de los campos especiales para parqueo subcontratado
            lblNombreContacto.Text = "";
            lblTelefono.Text = "";
            lblNumContrato.Text = "";
            lblSubtituloContacto.Text = "";
            txtBoxNombreContacto.Visible = false;
            txtBoxTelefonoContacto.Visible = false;
            txtBoxNumContrato.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e) //Boton de registrar
        {
            //Informacion del Parqueo 
            String nombre = txtBoxNombre.Text;
            String direccion = txtBoxDireccion.Text;

            //Hora apertura
            String HApertura = ddListHoraApertura.SelectedValue;
            String MApertura = ddListMinutosApertura.SelectedValue;
            

            //Hora cierre
            String HCierre = ddListHoraCierre.SelectedValue;
            String MCierre = ddListMinutosCierre.SelectedValue;
            
            //Se convierten las horas a timespan
            String horaApertura = HApertura + ":" + MApertura;
            String horaCierre = HCierre + ":" + MCierre;

            TimeSpan tsApertura = TimeSpan.Parse(horaApertura);
            TimeSpan tsCierre = TimeSpan.Parse(horaCierre);

            //Dependiendo del tipo de estacionamiento se obtiene informacion extra
            int tipo = radButtonTipoParqueo.SelectedIndex+1;
            
            if (tipo == 2)//Parqueo Subcontratado
            {
                String contrato = txtBoxNumContrato.Text;

                //Informacion contacto
                String nombreContacto = txtBoxNombreContacto.Text;
                int telefonoContacto = int.Parse(txtBoxTelefonoContacto.Text);

                //Se crea el objeto de tipo DTO
                DTOEstacionamientos estacionamiento = new DTOEstacionamientos(0, nombre, direccion, 0, 0, 0, tsApertura, tsCierre, nombreContacto, telefonoContacto, contrato, tipo);
                lblPrueba.Text = "Funciona 1";
            }
            else if(tipo == 1)
            {
                DTOEstacionamientos estacionamiento = new DTOEstacionamientos(0, nombre, direccion, 0, 0, 0, tsApertura, tsCierre, tipo, 0);
                lblPrueba.Text = "Funciona 2";
            }

            

            
        }

        protected void radButtonTipoParqueo_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            int index = radButtonTipoParqueo.SelectedIndex;
            
            if (index==0)//Parqueo propio
            {
                lblNombreContacto.Text = "";
                lblTelefono.Text = "";
                lblNumContrato.Text = "";
                lblSubtituloContacto.Text = "";
                txtBoxNombreContacto.Visible = false;
                txtBoxTelefonoContacto.Visible = false;
                txtBoxNumContrato.Visible = false;
            }
            else if(index==1)//Parqueo subcontratado
            {
                lblNombreContacto.Text = "Nombre: ";
                lblTelefono.Text = "Telefono: ";
                lblNumContrato.Text = "Numero de contrato: ";
                lblSubtituloContacto.Text = "Información de Contacto";
                txtBoxNombreContacto.Visible = true;
                txtBoxTelefonoContacto.Visible = true;
                txtBoxNumContrato.Visible = true;

            }
        }
    }
}