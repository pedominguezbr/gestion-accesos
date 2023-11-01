using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEEscaneoAgenciaSucursal
    {
        public DateTime FechaRegistro { get; set; }

        public string NroSolicitud { get; set; }

        public string NombreAgencia { get; set; }

        public string NombreSucursal { get; set; }

        public int NumEquipos { get; set; }

        public int NumEquiposEsc { get; set; }

        public string EstadoVal { get; set; }

    }

    public class BEEscaneoAgenciaSucursalList : List<BEEscaneoAgenciaSucursal>
    {
    }
}
