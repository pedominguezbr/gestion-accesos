using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEAprovisionamiento
    {
        public int IdAprovisionamiento { get; set; }

        public string NumeroCertificado { get; set; }

        public BESolicitudAcceso Solicitud { get; set; }

        public DateTime FechaAprovisionamiento { get; set; }

        public bool EstadoActivo { get; set; }

        public BEDetalleAprovisionamientoList DetalleAprovisionamiento { get; set; }
    }

    public class BEAprovisionamientoList : List<BEAprovisionamiento>
    {
    }
   
}
