using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EstacionaTEC.Controllers.DAO
{
    public interface DAOSolicitudes
    {
        bool create();
        object get();
        List<object> getAll();
        List<object> getBy();
        bool update();
        bool delete();

    }
}