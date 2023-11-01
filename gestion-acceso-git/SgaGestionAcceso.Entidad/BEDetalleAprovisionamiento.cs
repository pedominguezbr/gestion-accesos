using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEDetalleAprovisionamiento
    {
        public int IdDetAprovisionamiento { get; set; }

        public int IdAprovisionamiento { get; set; }

        public BEPersona Persona { get; set; }

        public BEAplicacion Aplicacion { get; set; }

        public string CuentaUsuario { get; set; }

        public string ClaveGenerada { get; set; }

        public DateTime FechaCreacion { get; set; }

        public BEEstado Estado { get; set; }

        public bool EstadoActivo { get; set; }
    }

    public class BEDetalleAprovisionamientoList : List<BEDetalleAprovisionamiento>
    {
    }
    
}
