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

        public List<Estacionamiento> mostrarEstacionamiento()
        {
            List<Estacionamiento> resp = gestorEstacionamiento.mostrarEstacionamientos();
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

        public bool crearReporteFuncionario(int buscado)
        {
            bool resp = gestorResportes.crearReporteFuncionario(buscado);
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
    }
}