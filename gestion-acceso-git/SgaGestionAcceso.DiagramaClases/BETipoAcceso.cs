using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BETipoAcceso
    {
        public int IdTipoAcceso { get; set; }

        public string Nombres { get; set; }

        public Boolean Estado { get; set; }
    }

    public class BETipoAccesoList : List<BETipoAcceso>
    {
    }
}
