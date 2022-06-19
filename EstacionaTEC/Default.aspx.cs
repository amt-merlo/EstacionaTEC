using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Consulta del usuario
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            //Se convierte el resultado en una tabla
            DataTable groupsTable = dv.ToTable();

            //Variables a usar
            int ID = 0;
            int tipo = 0;

            //Se asignan los valores en las variables
            ID = (int)groupsTable.Rows[0]["ID"];
            

            

            if (ID == -100) //El usuario no existe
            {
                
                lblMensaje.Text = "El usuario no se encuentra registrado";
            }
            else
            {
                //Se crea una variable global para identificar al usuario en cada pagina por separado
                Session["ID"] = ID;

                //Si el usuario existe, valida si es administrador o no
                tipo = Convert.ToInt32(groupsTable.Rows[0]["Tipo"]);

                
                if (tipo == 1)
                {
                    //Se redirecciona al menú para administrador
                    Response.Redirect("Views/AdministradorLanding.aspx");
                }
                else if (tipo == 0)
                {
                    //Se redirecciona al menu para operador 
                    Response.Redirect("Views/FuncionarioLanding.aspx");
                }
                else if(tipo == 2)
                {
                    //Se redirecciona al menu para funcionario estándar 
                    Response.Redirect("Views/OperadorLanding.aspx");
                }
                
            }


            /*
            SqlConnection conexion = new SqlConnection(@"server=DESKTOP-3KMMPB2; database=ProyectoDisenno;integrated security =true");
            conexion.Open();
            String correo = (txtBoxCorreo.Text);
            String contrasenna = (txtBoxContrasenna.Text);
            String cadena = "exec checkLogin " + correo + contrasenna;
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader registro = comando.ExecuteReader();

            */
        }
    }
}