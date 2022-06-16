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

            //Se crea el objeto DTO
            DTOEstacionamientos estacionamiento;

            //Dependiendo del tipo de estacionamiento se obtiene informacion extra
            int tipo = radButtonTipoParqueo.SelectedIndex+1;
            

            if (tipo == 3)//Parqueo Subcontratado
            {
                String contrato = txtBoxNumContrato.Text;

                //Informacion contacto
                String nombreContacto = txtBoxNombreContacto.Text;
                int telefonoContacto = int.Parse(txtBoxTelefonoContacto.Text);

                //Se crea el objeto de tipo DTO
                estacionamiento = new DTOEstacionamientos(0, nombre, direccion, 0, 0, 0, tsApertura, tsCierre, nombreContacto, telefonoContacto, contrato, tipo);
                lblPrueba.Text = "¡Estacionamiento registrado exitosamente!";
                Response.Write("<script>alert('¡Estacionamiento registrado exitosamente!')</script>");
            }
            else 
            {
                estacionamiento = new DTOEstacionamientos(0, nombre, direccion, 0, 0, 0, tsApertura, tsCierre, tipo, 0);
                lblPrueba.Text = "¡Estacionamiento registrado exitosamente!";
                Response.Write("<script>alert('¡Estacionamiento registrado exitosamente!')</script>");
            }

            //Se envia el objeto al gestor por medio del controller
            Controller controller = Controller.getInstance();
            controller.crearEstacionamiento(estacionamiento);

            //Se limpian los campos
            txtBoxNombre.Text = "";
            txtBoxDireccion.Text = "";
            txtBoxNombreContacto.Text = "";
            txtBoxNumContrato.Text = "";
            txtBoxTelefonoContacto.Text = "";
            
        }

        protected void radButtonTipoParqueo_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            String tipo = radButtonTipoParqueo.SelectedValue;
            
            if (tipo.Equals("Principal") || tipo.Equals("Campus"))//Parqueo propio
            {
                lblNombreContacto.Text = "";
                lblTelefono.Text = "";
                lblNumContrato.Text = "";
                lblSubtituloContacto.Text = "";
                txtBoxNombreContacto.Visible = false;
                txtBoxTelefonoContacto.Visible = false;
                txtBoxNumContrato.Visible = false;
            }
            else if(tipo.Equals("Subcontratado"))//Parqueo subcontratado
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

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdministradorLanding.aspx");
        }
    }
}