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
    public partial class EditarInfoPersonal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
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

                //Para los datos del funcionario a editar>>>
                int id = int.Parse(Session["ID"].ToString());

                //Trae los datos de la persona por medio del DAO y el controller

                Controller controller = Controller.getInstance();
                Persona persona = (Persona)controller.getPersona(id);
            }
            else
            {
                //DO nothing
            }
            

            

            
        }

        protected void btnGuardarCorreo_Click(object sender, EventArgs e)
        {
            //Guarda el correo ingresado
            String correo = txtBoxCorreoAlterno.Text;

            //Para los datos del funcionario a editar>>>
            int id = int.Parse(Session["ID"].ToString());

            //Trae los datos de la persona por medio del DAO y el controller

            Controller controller = Controller.getInstance();
            Persona persona = (Persona)controller.getPersona(id);

            DTOPersonas nuevaPersona = new DTOPersonas(id, persona.NombreCompleto, persona.NumTelefono, persona.CorreoInstitucional, correo, persona.Departamento, persona.EsJefatura, persona.EsAdmin, persona.ServiciosEspeciales, persona.EsAdministrativo, persona.EstaEnPlanilla, "");
            
            bool respuesta = controller.actualizarPersona(nuevaPersona); //Se manda a actualizar con el DAO
            if (respuesta)
            {
                lblMensajeCorreo.Text = "¡Correo agregado exitosamente!";
            }
            else
            {
                lblMensajeCorreo.Text = ("Algo salió mal, inténtelo más tarde");
            }

        }

        protected void btnRegistrarVehiculo_Click(object sender, EventArgs e)
        {
            String placa = txtBoxPlaca.Text;
            int ID = int.Parse(Session["ID"].ToString());

            //Aqui falta si es oficial o no
            DTOVehiculos vehiculo = new DTOVehiculos(ID, placa);
            Controller controller = Controller.getInstance();
            controller.crearVehiculo(vehiculo); //Se envia a la DAO por medio del controller
            Response.Redirect("EditarInfoPersonal.aspx");
        }

        protected void btnRegistrarFranja_Click(object sender, EventArgs e)
        {
            int dia = ddListDia.SelectedIndex + 1;
            String horaInicio = ddListHoraInicio.SelectedValue;
            String minutosInicio = ddListMinutosInicio.SelectedValue;
            String horaFin = ddListHoraFin.SelectedValue;
            String minutosFin = ddListMinutosFin.SelectedValue;

            int ID = int.Parse(Session["ID"].ToString());

            //Se conforman los timeSpan
            TimeSpan inicio = TimeSpan.Parse( horaInicio + ":" + minutosInicio);
            TimeSpan fin = TimeSpan.Parse(horaFin + ":" + minutosFin);

            DTOFranja franja = new DTOFranja(dia, ID, inicio, fin);
            Controller controller = Controller.getInstance();
            bool respuesta = controller.crearFranja(franja); //Se manda a registrar con el DAO

            if (respuesta)
            {
                Response.Redirect("EditarInfoPersonal.aspx");
            }
            else
            {
                lblMensajeFranja.Text = "Algo salió mal, inténtelo de nuevo más tarde";
            }
        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("FuncionarioLanding.aspx");
        }
    }
}