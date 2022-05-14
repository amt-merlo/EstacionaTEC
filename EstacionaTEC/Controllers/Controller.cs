using EstacionaTEC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class Controller
    {
        private static Controller instance = null;
        private readonly GestorEstacionamiento gestorEstacionamiento = new GestorEstacionamiento();
        private readonly GestorFranjas gestorFranjas = new GestorFranjas();
        private readonly GestorReservas gestorReservas = new GestorReservas();
        private readonly GestorResportes gestorResportes = new GestorResportes();
        private readonly GestorVehiculos gestorVehiculos = new GestorVehiculos();
        private readonly GestorPersonas gestorPersonas = new GestorPersonas();
        private readonly GestorEspacio gestorEspacio = new GestorEspacio();

        public static Controller getInstance()
        {
            if (instance == null)
            {
                instance = new Controller();
            }
            return instance;
        }

        public bool crearPersona(DTOPersonas persona)
        {
            bool resp = gestorPersonas.crearPersona(persona);
            return resp;
        }

        public bool crearEspacio(DTOEspacio espacio)
        {
            bool resp = gestorEspacio.crearEspacio(espacio);
            return resp;
        }

        public Object getPersona(int ID)
        {
            Object persona = gestorPersonas.buscarPersona(ID);
            return persona;
        }

        public List<Object> buscarPersonas(int id)
        {
            if (id == -1)
            {
                return gestorPersonas.buscarTodaslasPersonas();
            }
            else
            {
                return gestorPersonas.buscarPorDepartamento(id);
            }
        }

        public List<Object> mostrarEstacionamiento()
        {
            List<Object> resp = gestorEstacionamiento.mostrarEstacionamientos();
            return resp;
        }

        public bool crearEstacionamiento(DTOEstacionamientos estacionamientos)
        {
            bool resp = gestorEstacionamiento.crearEstacionamiento(estacionamientos);
            return resp;
        }

        public bool crearFranja(DTOFranja franja)
        {
            bool resp = gestorFranjas.createFranja(franja);
            return resp;
        }

        public bool crearReporteEstacionamientos()
        {
            bool resp = gestorResportes.crearReporteEstacionamientos();
            return resp;
        }

        public bool crearReporteFuncionarios() {
            bool resp = gestorResportes.crearReporteFuncionarios();
            return resp;
        }

        public Persona crearReporteFuncionario(int buscado)
        {
            Persona resp = gestorPersonas.buscarPersona(buscado);
            return resp;
        }

        public bool crearEstadistica()
        {
            bool resp = gestorResportes.crearEstadistica();
            return resp;
        }

        public bool createReserva(DTOReservas reservas)
        {
            bool resp = gestorReservas.crearReserva(reservas);
            return resp;
        }

        public bool crearVehiculo(DTOVehiculos vehiculos)
        {
            bool resp = gestorVehiculos.crearVehiculo(vehiculos);
            return resp;
        }

        public bool actualizarPersona(DTOPersonas Persona)
        {
            bool resp = gestorPersonas.actualizarPersona(Persona);
            return resp;
        }

        public List<Object> buscarVehiculo(int id)
        {
            return gestorVehiculos.buscarVehiculo(id);
        }
    }
}