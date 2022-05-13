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
    public partial class CrearFuncionario : System.Web.UI.Page
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
        }

        protected void Button1_Click(object sender, EventArgs e) //Registrar funcionario nuevo
        {
            //Se recuperan los valores del forms
            int identificacion = int.Parse(txtBoxIdentificacion.Text);
            String nombre = txtBoxNombre.Text;
            int telefono = int.Parse(txtBoxTelefono.Text);
            String correo = txtBoxCorreo.Text;
            String departamento = ddListDepartamento.SelectedValue;
            bool jefatura = Convert.ToBoolean(radButtonJefatura.SelectedIndex);
            bool admin = Convert.ToBoolean(radButtonAdmin.SelectedIndex);
            bool especiales = Convert.ToBoolean(radButtonNecesidadesEspeciales.SelectedIndex);
            String contrasenna = txtBoxContrasenna.Text;

            //Se crea el objeto DTO
            DTOPersonas persona = new DTOPersonas(identificacion, nombre, telefono, correo, "", departamento, jefatura, admin, especiales);
            lblPrueba.Text = "¡Funcionario registrado exitosamente!";

            //Se envia el objeto al gestor por medio del controller
            Controller controller = Controller.getInstance();
            controller.crearPersona(persona);

            //Se limpian los campos
            txtBoxNombre.Text = "";
            txtBoxIdentificacion.Text = "";
            txtBoxCorreo.Text = "";
            txtBoxTelefono.Text = "";
            txtBoxContrasenna.Text = "";
        }
    }
}