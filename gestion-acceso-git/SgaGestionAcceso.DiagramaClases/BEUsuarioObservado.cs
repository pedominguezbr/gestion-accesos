using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BEUsuarioObservado
    {
        public int IdUsuarioObservado { get; set; }

        public BEPersona Persona { get; set; }

        public BEAplicacion Aplicacion { get; set; }

        public DateTime FechaRegistro { get; set; }

        public bool EstadoActivo { get; set; }
    }

    public class BEUsuarioObservadoList : List<BEUsuarioObservado>
    {
    }
}
