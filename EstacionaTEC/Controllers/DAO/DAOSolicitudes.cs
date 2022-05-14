using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EstacionaTEC.Controllers.DAO
{
    public interface DAOSolicitudes
    {
        bool create(Object obj);
        object get(int id);
        List<object> getAll();
        List<object> getBy(int id);
        bool update(Object obj);
        bool delete(Object obj);

    }
}