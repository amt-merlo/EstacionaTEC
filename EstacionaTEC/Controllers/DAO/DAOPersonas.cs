using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
/*
 * conexion ejemplo
            SqlConnection conexion = new SqlConnection("Data Source=DatabaseServer;Initial Catalog=ProyectoDisenno;User ID=JohelPF_SQLLogin_1;Password=w7v8k5itwh");
            conexion.Open();
            String cadena = "exec nombreprocedure " + parametro1 + parametro2 + ...;
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader registro = comando.ExecuteScalar();

            */
namespace EstacionaTEC.Controllers.DAO
{
    public class DAOPersonas : DAOSolicitudes
    {

        public bool create(Object obj)
        {
            Persona persona = (Persona)obj;
            int retorno;
            SqlConnection conexion = new SqlConnection("Data Source=DatabaseServer;Initial Catalog=ProyectoDisenno.mssql.somee.com;User ID=JohelPF_SQLLogin_1;Password=w7v8k5itwh");
            conexion.Open();
            String cadena = "exec insertarPersona " + persona.Identificacion + persona.NombreCompleto + persona.NumTelefono + persona.CorreoInstitucional + persona.CorreoAlterno + persona.Departamento + persona.EsJefatura + persona.EsAdmin + persona.ServiciosEspeciales + persona.Contraseña + persona.EsAdministrativo + persona.EstaEnPlanilla;
            SqlCommand comando = new SqlCommand(cadena, conexion);
            retorno = (int)comando.ExecuteScalar();
            conexion.Close();
            return Convert.ToBoolean(retorno);
        }

        public bool delete(object x)
        {
            throw new NotImplementedException();
        }


        public object get(int id)
        {
            Persona retorno;
            SqlConnection conexion = new SqlConnection("Data Source=DatabaseServer;Initial Catalog=ProyectoDisenno.mssql.somee.com;User ID=JohelPF_SQLLogin_1;Password=w7v8k5itwh");
            conexion.Open();
            String cadena = "exec buscarPersona " + id;
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader reader = comando.ExecuteReader();
            if (reader.HasRows)
            {
                retorno = new Persona(reader.GetInt32(1), reader.GetString(2), reader.GetInt32(3), reader.GetString(4), reader.GetString(5), reader.GetString(6), reader.GetBoolean(7), reader.GetBoolean(8), reader.GetBoolean(9),reader.GetBoolean(10),reader.GetBoolean(11),"");
                reader.Close();
                conexion.Close();
                return retorno;
            }
            else
            {
                reader.Close();
                conexion.Close();
                return false;
            }
        }

        public List<object> getAll()
        {
            throw new NotImplementedException();
        }

        public List<object> getBy()
        {
            throw new NotImplementedException();
        }


        public bool update(object x)
        {
            throw new NotImplementedException();
        }
    }
}