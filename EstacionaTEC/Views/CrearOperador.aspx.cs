using EstacionaTEC.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class CrearOperador : System.Web.UI.Page
    {

        public bool IsValidEmail(string emailaddress)
        {
            try
            {
                MailAddress m = new MailAddress(emailaddress);

                return true;
            }
            catch (FormatException)
            {
                return false;
            }
        }
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

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            int identificacion = int.Parse(txtBoxCedula.Text);
            String nombre = txtBoxNombre.Text;
            int telefono = int.Parse(txtBoxTelefono.Text);
            String correo = txtBoxCorreo.Text;
            int idEstacionamiento = int.Parse(lblIDEstacionamiento.Text);


            //Se valida el correo institucional 
            bool validarCorreo = IsValidEmail(correo);
            if (validarCorreo)
            {
                //Se crea el objeto DTO
                DTOOperador operador = new DTOOperador(identificacion, nombre, correo, telefono, idEstacionamiento,"1234"); //la contraseña se manda default como 1234

                //Se envia el objeto al gestor por medio del controller
                Controller controller = Controller.getInstance();
                bool resultado = controller.crearOperador(operador);
                
                if (resultado)
                {
                    
                    Response.Write("<script>alert('¡Operador registrado exitosamente!')</script>");

                }
                else
                {

                    lblMensaje.Text = "Ya existe un operador registrado con el mismo número de cédula";
                }
            }
            else
            {
                lblMensaje.Text = "El correo electrónico proporcionado no tiene un formato válido";
            }
        }

        protected void gridEstacionamientos_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ID = int.Parse(gridEstacionamientos.SelectedRow.Cells[1].Text);
            lblIDEstacionamiento.Text = ID.ToString();
        }
    }
}