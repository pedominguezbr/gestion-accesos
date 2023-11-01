using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BEEscaneoAgenciaSucursal
    {
        public int IdEscaneoAgenciaSuc { get; set; }

        public BEAgencia Agencia { get; set; }

        public BESucursal Sucursal { get; set; }

        public DateTime Fecha { get; set; }

        public BEEstado Estado { get; set; }

        public bool EstadoActivo { get; set; }

        public BEDetalleEscaneoValidadorList DetalleEscaneoValidador { get; set; }
         
    }

    public class BEEscaneoAgenciaSucursalList : List<BEEscaneoAgenciaSucursal>
    {
    }
}
