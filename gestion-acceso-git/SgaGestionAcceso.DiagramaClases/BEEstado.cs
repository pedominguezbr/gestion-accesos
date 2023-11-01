using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BEEstado
    {
        public int IdEstado { get; set; }

        public string CodEstado { get; set; }

        public string Nombre { get; set; }
    }

    public class BEEstadoList : List<BEEstado>
    {
    }
}
