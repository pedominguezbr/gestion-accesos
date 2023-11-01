using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEEscaneoAgenteDetalle
    {
        public DateTime fsolicitud { get; set; }
        public string idagente { get; set; }
        public string estado { get; set; }
        public string idSolicitud { get; set; }

    }
    public class BEEscaneoAgenteDetalleList : List<BEEscaneoAgenteDetalle>
    { 
    
    }
}
