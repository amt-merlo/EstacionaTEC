using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public abstract class CreadorEstacionamiento
    {

        public abstract Estacionamiento createEstacionamiento();
    }
}