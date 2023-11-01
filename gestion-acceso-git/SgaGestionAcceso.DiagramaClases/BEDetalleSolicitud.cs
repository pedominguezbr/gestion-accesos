using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BEDetalleSolicitud
    {
        public BEPersona Persona { get; set; }

        public DateTime FechaRegistro { get; set; }

        public bool Estado { get; set; }

        public BEDetSolAplicaciPuestoList DetSoliAplicacionPuesto { get; set; }

        public int IdDetalleSolicitud { get; set; }
    }

    public class BEDetalleSolicitudList : List<BEDetalleSolicitud>
    {
    }
}
