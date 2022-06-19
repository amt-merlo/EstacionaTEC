using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionaTEC.Views
{
    public partial class Chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string ObtenerDatos()
        {
            SqlConnection conexion = new SqlConnection("Data Source = ProyectoDisenno.mssql.somee.com; Initial Catalog = ProyectoDisenno; Persist Security Info=False;User ID = JohelPF_SQLLogin_1; Password=w7v8k5itwh;Packet Size = 4096; Workstation ID = ProyectoDisenno.mssql.somee.com");
            conexion.Open();
            String cadena = "exec cantPersonasDiaYFranja " + "0" + "," + "'07:00'" + "," + "'09:00'";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader reader = comando.ExecuteReader();
            reader.Read();
            int cant1 = reader.GetInt32(0);
            reader.Close();
            cadena = "exec cantPersonasDiaYFranja " + "0" + "," + "'09:00'" + "," + "'12:00'";
            comando = new SqlCommand(cadena, conexion);
            reader = comando.ExecuteReader();
            reader.Read();
            int cant2 = reader.GetInt32(0);
            reader.Close();
            cadena = "exec cantPersonasDiaYFranja " + "0" + "," + "'13:00'" + "," + "'15:00'";
            comando = new SqlCommand(cadena, conexion);
            reader = comando.ExecuteReader();
            reader.Read();
            int cant3 = reader.GetInt32(0);
            reader.Close();
            cadena = "exec cantPersonasDiaYFranja " + "0" + "," + "'15:00'" + "," + "'17:00'";
            comando = new SqlCommand(cadena, conexion);
            reader = comando.ExecuteReader();
            reader.Read();
            int cant4 = reader.GetInt32(0);
            reader.Close();
            cadena = "exec cantPersonasDiaYFranja " + "0" + "," + "'17:00'" + "," + "'19:00'";
            comando = new SqlCommand(cadena, conexion);
            reader = comando.ExecuteReader();
            reader.Read();
            int cant5 = reader.GetInt32(0);
            reader.Close();
            cadena = "exec cantPersonasDiaYFranja " + "0" + "," + "'19:00'" + "," + "'21:00'";
            comando = new SqlCommand(cadena, conexion);
            reader = comando.ExecuteReader();
            reader.Read();
            int cant6 = reader.GetInt32(0);
            reader.Close();
            string datos;
            datos = "[['Franjas', 'Personas'],['7-9', " + cant1 + "],['9-12', " + cant2 + "],['13-15', " + cant3 + "],['15-17', " + cant4 + "],['17-19', " + cant5 + "],['19-21', " + cant6 + "]]";
            return datos;
        }
    }
}