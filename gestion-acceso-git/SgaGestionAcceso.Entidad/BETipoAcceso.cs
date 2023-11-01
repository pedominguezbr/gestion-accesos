using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BETipoAcceso
    {
        public int IdTipoAcceso { get; set; }

        public string Nombre { get; set; }

        public Boolean EstadoActivo { get; set; }
    }

    public class BETipoAccesoList : List<BETipoAcceso>
    {
    }
}
