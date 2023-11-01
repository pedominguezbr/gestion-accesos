using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEDetalleSolicitud
    {
        private int totalAplicacion;

        public BEPersona Persona { get; set; }

        public int IdSolicitudAcceso { get; set; }

        public DateTime FechaRegistro { get; set; }

        public bool EstadoActivo { get; set; }

        public BEDetSolAplicaciPuestoList DetSoliAplicacionPuesto { get; set; }

        public int IdDetalleSolicitud { get; set; }

        public int TotalAplicaciones
        {
            get
            {
                if (DetSoliAplicacionPuesto != null) { 
                    return DetSoliAplicacionPuesto.Count; 
                }
                else { return totalAplicacion; }
            }

            set
            {
                totalAplicacion = value;
            }
        }

        public BEEstado Estado { get; set; }

        public string ObservacionValidacion { get; set; }
    }

    public class BEDetalleSolicitudList : List<BEDetalleSolicitud>
    {
    }
}
