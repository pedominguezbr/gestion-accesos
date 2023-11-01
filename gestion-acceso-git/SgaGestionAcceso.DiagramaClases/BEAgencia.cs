using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BEAgencia
    {
        public int IdAgencia { get; set; }
      
        public string Nombre { get; set; }

        public BERepresentateLegal RepresentanteLegal { get; set; }

        public string RUC { get; set; }

        public string NemonicoAg { get; set; }

        public Boolean Estado { get; set; }

        public BESucursalList SucursalList { get; set; }
    }

    public class BEAgenciaList : List<BEAgencia>
    {
    }
}
