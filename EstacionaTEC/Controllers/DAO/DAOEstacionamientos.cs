using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers.DAO
{
    public class DAOEstacionamientos : DAOSolicitudes
    {
        public bool create(object obj)
        {
            int retorno;
            SqlConnection conexion = new SqlConnection("Data Source = ProyectoDisenno.mssql.somee.com; Initial Catalog = ProyectoDisenno; Persist Security Info=False;User ID = JohelPF_SQLLogin_1; Password=w7v8k5itwh;Packet Size = 4096; Workstation ID = ProyectoDisenno.mssql.somee.com");
            conexion.Open();
            if (obj is EstacionamientoTEC)
            {
                EstacionamientoTEC estacionamiento = (EstacionamientoTEC)obj;
                String cadena = "exec insertarEstacionamiento " + estacionamiento.Nombre + estacionamiento.Ubicacion + estacionamiento.Tipo + estacionamiento.CantidadEspaciosTotal + estacionamiento.CantidadEspaciosActual + estacionamiento.CantidadVehicTEC + estacionamiento.CantidadVehicEspecial + estacionamiento.HoraApertura + estacionamiento.HoraCierre + "" + 0 + "";
                SqlCommand comando = new SqlCommand(cadena, conexion);
                retorno = (int)comando.ExecuteScalar();
                conexion.Close();
                return Convert.ToBoolean(retorno);
            }
            else
            {
                EstacionamientoSubcontratado estacionamiento = (EstacionamientoSubcontratado)obj;
                String cadena = "exec insertarEstacionamiento " + estacionamiento.Nombre + estacionamiento.Ubicacion + 3 + estacionamiento.CantidadEspaciosTotal + estacionamiento.CantidadEspaciosActual + 0 + estacionamiento.CantidadVehicEspecial + estacionamiento.HoraApertura + estacionamiento.HoraCierre + estacionamiento.NombreContrato + estacionamiento.NumeroTelefonoContacto + estacionamiento.Contrato;
                SqlCommand comando = new SqlCommand(cadena, conexion);
                retorno = (int)comando.ExecuteScalar();
                conexion.Close();
                return Convert.ToBoolean(retorno);
            }
 
        }

        public bool delete(object obj)
        {
            throw new NotImplementedException();
        }

        public object get(int id)
        {
            throw new NotImplementedException();
        }

        public List<Object> getAll()
        {
            List<Object> estacionamientos = new List<Object>();
            SqlConnection conexion = new SqlConnection("Data Source = ProyectoDisenno.mssql.somee.com; Initial Catalog = ProyectoDisenno; Persist Security Info=False;User ID = JohelPF_SQLLogin_1; Password=w7v8k5itwh;Packet Size = 4096; Workstation ID = ProyectoDisenno.mssql.somee.com");
            conexion.Open();
            String cadena = "exec verTodosEstacionamienos";
            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader reader = comando.ExecuteReader();
            while (reader.Read())
            {
                int tipo = reader.GetInt32(3);
                if(tipo == 3)
                {
                    EstacionamientoSubcontratado estacionamiento = new EstacionamientoSubcontratado(reader.GetInt32(1),reader.GetString(2),reader.GetString(3),reader.GetInt32(5),reader.GetInt32(6),reader.GetInt32(8),reader.GetTimeSpan(9),reader.GetTimeSpan(10),reader.GetString(11),reader.GetInt32(12),reader.GetString(13));
                    estacionamientos.Add(estacionamiento);
                }
                else
                {
                    EstacionamientoTEC estacionamiento = new EstacionamientoTEC(reader.GetInt32(1),reader.GetString(2),reader.GetString(3),reader.GetInt32(5),reader.GetInt32(6),reader.GetInt32(8),reader.GetTimeSpan(9),reader.GetTimeSpan(10),tipo,reader.GetInt32(7));
                    estacionamientos.Add(estacionamiento);
                }
            }
            reader.Close();
            conexion.Close();
            return estacionamientos;
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