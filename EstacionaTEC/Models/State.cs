using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public abstract class State
    {
        protected Espacio espacio;

        public void SetEspacio(Espacio espacio)
        {
            this.espacio = espacio;
        }

        public abstract void Reservar();
    }
}