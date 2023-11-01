using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEUsuarioSistema : BEPersona
    {
        public int IdUsuario { get; set; }

        public string CodUsuario { get; set; }

        public string ClaveUsuario { get; set; }

        public DateTime FechaCreacionSistema { get; set; }

        public Boolean EstadoActivo { get; set; }

        public BEPersona Persona { get; set; }
    }

    public class BEUsuarioSistemaList : List<BEUsuarioSistema>
    {

    }

}
