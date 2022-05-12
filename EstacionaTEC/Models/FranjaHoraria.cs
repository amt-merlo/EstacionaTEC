using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class FranjaHoraria
    {
        private int idDia;
        private int idPersona;
        private TimeSpan inicio;
        private TimeSpan fin;

        public FranjaHoraria(int idDia, int idPersona, TimeSpan inicio, TimeSpan fin)
        {
            this.IdDia = idDia;
            this.IdPersona = idPersona;
            this.Inicio = inicio;
            this.Fin = fin;
        }

        public int IdDia { get => idDia; set => idDia = value; }
        public int IdPersona { get => idPersona; set => idPersona = value; }
        public TimeSpan Inicio { get => inicio; set => inicio = value; }
        public TimeSpan Fin { get => fin; set => fin = value; }
    }
}