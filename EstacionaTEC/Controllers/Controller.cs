using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class Controller
    {
        private readonly GestorEstacionamiento gestorEstacionamiento = new GestorEstacionamiento();
        private readonly GestorFranjas gestorFranjas = new GestorFranjas();
        private readonly GestorReservas gestorReservas = new GestorReservas();
        private readonly GestorResportes gestorResportes = new GestorResportes();
        private readonly GestorVehiculos gestorVehiculos = new GestorVehiculos();
        private readonly GestorPersonas gestorPersonas = new GestorPersonas();

        public void crearPersona(DTOPersonas persona)
        {
            gestorPersonas.crearPersona(persona);
        }

        public void monstrarEstacionamiento()
        {
            gestorEstacionamiento.mostrarEstacionamientos();
        }

        public void crearEstacionamiento(DTOEstacionamientos estacionamientos)
        {
            gestorEstacionamiento.crearEstacionamiento(estacionamientos);
        }

        public void crearFranja(DTOFranja franja)
        {
            gestorFranjas.createFranja(franja);
        }

        public void crearReporteEstacionamientos()
        {
            gestorResportes.crearReporteEstacionamientos();
        }

        public void crearReporteFuncionarios() {
            gestorResportes.crearReporteFuncionarios();
        }

        public void crearReporteFuncionario(int buscado)
        {
            gestorResportes.crearReporteFuncionario(buscado);
        }

        public void crearEstadistica()
        {
            gestorResportes.crearEstadistica();
        }

        public void createReserva(DTOReservas reservas)
        {
            gestorReservas.crearReserva(reservas);
        }

        public void crearVehiculo(DTOVehiculos vehiculos)
        {
            gestorVehiculos.crearVehiculo(vehiculos);
        }
    }
}