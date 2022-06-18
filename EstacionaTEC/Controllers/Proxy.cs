using EstacionaTEC.Controllers.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EstacionaTEC.Controllers
{
    public class Proxy : DAOSolicitudes
    {
        private DAOSolicitudes ServicioReal;

        public Proxy(DAOSolicitudes servicioReal)
        {
            ServicioReal = servicioReal;
        }

        public bool RevisarAcceso(object obj)
        {
            return true;
        }
        public bool create(object obj)
        {
            if (obj is DTOReservas)
            {
                if (RevisarAcceso(obj))
                {
                    return ServicioReal.create(obj);
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return ServicioReal.create(obj);
            }
        }

        public bool delete(object obj)
        {
            return ServicioReal.delete(obj);
        }

        public object get(int id)
        {
            return ServicioReal.get(id);
        }

        public List<object> getAll()
        {
            return ServicioReal.getAll();
        }

        public List<object> getBy(int id)
        {
            return ServicioReal.getBy(id);
        }

        public bool update(object obj)
        {
            return ServicioReal.update(obj);
        }
    }
}