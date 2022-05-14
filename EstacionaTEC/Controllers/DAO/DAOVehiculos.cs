using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers.DAO
{
    public class DAOVehiculos : DAOSolicitudes
    {
        public bool create(object obj)
        {
            Vehiculo vehiculo = (Vehiculo)obj;
            int retorno;
            SqlConnection conexion = new SqlConnection("Data Source = ProyectoDisenno.mssql.somee.com; Initial Catalog = ProyectoDisenno; Persist Security Info=False;User ID = JohelPF_SQLLogin_1; Password=w7v8k5itwh;Packet Size = 4096; Workstation ID = ProyectoDisenno.mssql.somee.com");
            conexion.Open();
            String cadena = "exec insertarVehiculo " + vehiculo.IdPersona + "," + "'" + vehiculo.Placa + "'";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            retorno = (int)comando.ExecuteScalar();
            conexion.Close();
            return Convert.ToBoolean(retorno);
        }

        public bool delete(object obj)
        {
            throw new NotImplementedException();
        }

        public object get(int id)
        {
            throw new NotImplementedException();
        }

        public List<object> getAll()
        {
            throw new NotImplementedException();
        }

        public List<object> getBy(int id)
        {
            List<Object> vehiculos = new List<Object>();
            SqlConnection conexion = new SqlConnection("Data Source = ProyectoDisenno.mssql.somee.com; Initial Catalog = ProyectoDisenno; Persist Security Info=False;User ID = JohelPF_SQLLogin_1; Password=w7v8k5itwh;Packet Size = 4096; Workstation ID = ProyectoDisenno.mssql.somee.com");
            conexion.Open();
            String cadena = "exec buscarVehiculos " + id;
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader reader = comando.ExecuteReader();
            while (reader.Read())
            {
                if (reader.HasRows)
                {
                    Vehiculo vehiculo = new Vehiculo(reader.GetInt32(1),reader.GetString(2));
                    vehiculos.Add(vehiculo);
                }
            }
            return vehiculos;
        }

        public bool update(object obj)
        {
            throw new NotImplementedException();
        }
    }
}