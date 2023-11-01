using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BEAplicacion
    {
        public int IdAplicacion { get; set; }

        public String CodAplicacion { get; set; }

        public String Nombre { get; set; }

        public DateTime FechaCreacion { get; set; }

        public Boolean Estado { get; set; }
    }

    public class BEAplicacionList : List<BEAplicacion>
    {
    }
}
