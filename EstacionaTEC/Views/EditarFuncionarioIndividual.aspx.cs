using EstacionaTEC.Controllers;
using EstacionaTEC.Models;
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
    public partial class EditarFuncionarioIndividual : System.Web.UI.Page
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
            if(!IsPostBack) //Generate new form
            {
                //Consulta del nombre del usuario loggeado
                DataView dv = (DataView)sqlGetNombre.Select(DataSourceSelectArguments.Empty);
                //Se convierte el resultado en una tabla
                DataTable groupsTable = dv.ToTable();

                //Variables a usar
                String nombre = "";

                //Se asignan los valores en las variables
                nombre = (String)groupsTable.Rows[0][0];
                lblNombre.Text = nombre;

                //Para los datos del funcionario a editar>>>
                //Carga el ID en el label
                String id = (string)Session["FuncionarioEditar"];
                lblIdentificacion.Text = id;
                //Trae los datos de la persona por medio del DAO y el controller

                Controller controller = Controller.getInstance();
                Persona persona = (Persona)controller.getPersona(int.Parse(id));

                txtBoxNombre.Text = persona.NombreCompleto;
                txtBoxCorreo.Text = persona.CorreoInstitucional;
                txtBoxCelular.Text = persona.NumTelefono.ToString();
                ddListDepartamento.SelectedIndex = persona.Departamento - 1;

                //Jefatura
                if (persona.EsJefatura)
                {
                    radButtonJefatura.SelectedIndex = 1;
                }
                else
                {
                    radButtonJefatura.SelectedIndex = 0;
                }

                //Administrador
                if (persona.EsAdmin)
                {
                    radButtonAdmin.SelectedIndex = 1;
                }
                else
                {
                    radButtonAdmin.SelectedIndex = 0;
                }

                //Servicios Especiales
                if (persona.ServiciosEspeciales)
                {
                    radButtonServiciosEspeciales.SelectedIndex = 1;
                }
                else
                {
                    radButtonServiciosEspeciales.SelectedIndex = 0;
                }

                //Administrativo
                if (persona.EsAdministrativo)
                {
                    radButtonAdministrativo.SelectedIndex = 1;
                }
                else
                {
                    radButtonAdministrativo.SelectedIndex = 0;
                }

                //Planilla
                if (persona.EstaEnPlanilla)
                {
                    radButtonPlanilla.SelectedIndex = 1;
                }
                else
                {
                    radButtonPlanilla.SelectedIndex = 0;
                }
            }
            else
            {
                //Process submitted data
            }
            
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //Se recupera la información del forms
            int id = int.Parse((string)Session["FuncionarioEditar"]);
            String nombre = txtBoxNombre.Text;
            String correo = txtBoxCorreo.Text;
            int numeroTelefono = int.Parse(txtBoxCelular.Text);
            int departamento = ddListDepartamento.SelectedIndex+1;
            bool esJefatura = Convert.ToBoolean(radButtonJefatura.SelectedIndex);
            bool esAdmin = Convert.ToBoolean(radButtonAdmin.SelectedIndex);
            bool serviciosEspeciales = Convert.ToBoolean(radButtonServiciosEspeciales.SelectedIndex);
            bool esAdministrativo = Convert.ToBoolean(radButtonAdministrativo.SelectedIndex);
            bool planilla = Convert.ToBoolean(radButtonPlanilla.SelectedIndex);

            //Se valida el correo institucional 
            bool validarCorreo = IsValidEmail(correo);
            if (validarCorreo)
            {
                Regex regex = new Regex(@"^([\w\.\-]+)@(estudiantec.cr)$|^([\w\.\-]+)@(tec.ac.cr)$");
                Match match = regex.Match(correo);
                if (match.Success)
                {
                    lblCorreo.Text = correo;
                    //Se crea el objeto DTO
                    DTOPersonas persona = new DTOPersonas(id, nombre, numeroTelefono, correo, "", departamento, esJefatura, esAdmin, serviciosEspeciales, esAdministrativo, planilla, "");


                    //Se envia el objeto al gestor por medio del controller
                    Controller controller = Controller.getInstance();
                    bool resultado = controller.actualizarPersona(persona);

                    if (resultado)
                    {
                        lblCorreo.Text = "";
                        lblPrueba.Text = "¡Funcionario registrado exitosamente!";
                    }
                    else
                    {
                        lblCorreo.Text = "";
                        lblPrueba.Text = "Algo salió mal, por favor inténtelo de nuevo";
                    }
                    
                    //Se limpian los campos
                    txtBoxNombre.Text = "";
                    txtBoxCorreo.Text = "";
                    txtBoxCelular.Text = "";
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


        protected void btnDescartar_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditarFuncionarios.aspx");
        }
    }
}