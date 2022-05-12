using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Models
{
    public class CreadorSubcontradado : CreadorEstacionamiento
    {
        public override Estacionamiento createEstacionamiento()
        {
            throw new NotImplementedException();
        }
    }
}