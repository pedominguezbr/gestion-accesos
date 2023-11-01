using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEAplicacionAutorizanteHistorico
    {
        public int IdHistorico { get; set; }

        public BEAutorizante Autorizante { get; set; }

        public BEAplicacion Aplicacion { get; set; }

        public DateTime FechaModificacion { get; set; }

        public String UsuarioModificacion { get; set; }

        public String Accion { get; set; }

        public String RutaEvidencia { get; set; }

        public String Comentario { get; set; }
    }

    public class BEAplicacionAutorizanteHistoricoList : List<BEAplicacionAutorizanteHistorico>
    {
    }
}
