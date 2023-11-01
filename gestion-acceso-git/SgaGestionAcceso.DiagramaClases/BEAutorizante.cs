using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BEAutorizante : BEPersona
    {
        public DateTime FechaIngreso { get; set; }

        public DateTime FechaCese { get; set; }
    }

    public class BEAutorizanteList : List<BEAutorizante>
    {
    }
}
