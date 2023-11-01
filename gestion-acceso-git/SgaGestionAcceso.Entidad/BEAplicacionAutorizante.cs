using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEAplicacionAutorizante
    {
        public int IdAplicacionAutorizante { get; set; }

        public BEAutorizante Autorizante { get; set; }

        public BEAplicacion Aplicacion { get; set; }

        public DateTime FechaCreacion { get; set; }

        public String UsuarioCreacion { get; set; }

        public Boolean Estado { get; set; }

        public String RutaEvidencia { get; set; }

        public String Comentario { get; set; }
    }

    public class BEAplicacionAutorizanteList : List<BEAplicacionAutorizante>
    {
    }
}
