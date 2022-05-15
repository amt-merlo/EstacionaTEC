using EstacionaTEC.Controllers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class CrearFuncionario : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e) //Registrar funcionario nuevo
        {
            //Se recuperan los valores del forms
            int identificacion = int.Parse(txtBoxIdentificacion.Text);
            String nombre = txtBoxNombre.Text;
            int telefono = int.Parse(txtBoxTelefono.Text);
            String correo = txtBoxCorreo.Text;
            int departamento = ddListDepartamento.SelectedIndex+1;
            bool jefatura = Convert.ToBoolean(radButtonJefatura.SelectedIndex);
            bool admin = Convert.ToBoolean(radButtonAdmin.SelectedIndex);
            bool especiales = Convert.ToBoolean(radButtonNecesidadesEspeciales.SelectedIndex);
            bool esAdministrativo = Convert.ToBoolean(radButtonAdministrativo.SelectedIndex);
            bool planilla = Convert.ToBoolean(radButtonPlanilla.SelectedIndex);
            String contrasenna = txtBoxContrasenna.Text;

            //Se valida el correo institucional 
            bool validarCorreo = IsValidEmail(correo);
            if (validarCorreo)
            {
                Regex regex = new Regex(@"^([\w\.\-]+)@(estudiantec.cr)$|^([\w\.\-]+)@(tec.ac.cr)$");
                Match match = regex.Match(correo);
                if (match.Success)
                {
                    //Se crea el objeto DTO
                    DTOPersonas persona = new DTOPersonas(identificacion, nombre, telefono, correo, "", departamento, jefatura, admin, especiales, esAdministrativo, planilla, contrasenna);


                    //Se envia el objeto al gestor por medio del controller
                    Controller controller = Controller.getInstance();
                    bool resultado = controller.crearPersona(persona);

                    if (resultado)
                    {
                        lblCorreo.Text = "";
                        lblPrueba.Text = "¡Funcionario registrado exitosamente!";
                    }
                    else
                    {
                        lblCorreo.Text = "";
                        lblPrueba.Text = "Ya existe un funcionario registrado con el número identificación indicado";
                    }

                    //Se limpian los campos
                    txtBoxNombre.Text = "";
                    txtBoxIdentificacion.Text = "";
                    txtBoxCorreo.Text = "";
                    txtBoxTelefono.Text = "";
                    txtBoxContrasenna.Text = "";
                }
                else
                {
                    lblCorreo.Text = "La dirección de correo indicada no pertenece a un dominio institucional";
                }
            }
            else
            {
                lblCorreo.Text = "La dirección de correo indicada no es válida";
            }
            
        }

        protected void btnMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdministradorLanding.aspx");
        }
    }
}