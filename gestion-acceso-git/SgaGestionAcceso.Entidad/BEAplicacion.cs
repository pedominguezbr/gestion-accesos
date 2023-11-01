using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEAplicacion
    {
        public int IdAplicacion { get; set; }

        public int IdLogicaGeneracionUsuario { get; set; }
        

        public String Nombre { get; set; }

        public DateTime FechaCreacion { get; set; }

        public String UsuarioCreacion { get; set; }

        public Boolean Estado { get; set; }
    }

    public class BEAplicacionList : List<BEAplicacion>
    {
    }
}
