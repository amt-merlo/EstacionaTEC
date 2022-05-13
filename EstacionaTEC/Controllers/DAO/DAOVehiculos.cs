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
            SqlConnection conexion = new SqlConnection("Data Source=DatabaseServer;Initial Catalog=ProyectoDisenno.mssql.somee.com;User ID=JohelPF_SQLLogin_1;Password=w7v8k5itwh");
            conexion.Open();
            String cadena = "exec insertarVehiculo " + vehiculo.IdPersona + vehiculo.Placa;
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

        public List<object> getBy()
        {
            throw new NotImplementedException();
        }

        public bool update(object obj)
        {
            throw new NotImplementedException();
        }
    }
}