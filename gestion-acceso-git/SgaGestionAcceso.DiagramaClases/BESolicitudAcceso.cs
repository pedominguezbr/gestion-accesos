using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BESolicitudAcceso
    {
        public int IdSolicitud { get; set; }

        public int NumeroSolicitud { get; set; }

        public DateTime FechaRegistro { get; set; }

        public BESolicitante Solicitante { get; set; }

        public BEAutorizante Autorizante { get; set; }

        public DateTime FechaAsignacion { get; set; }

        public double CodigoAutorizacion { get; set; }

        public BETipoAcceso TipoAcceso { get; set; }

        public BEEstado Estado { get; set; }

        public BEUsuarioSistema UsuarioCreacion { get; set; }

        public BEDetalleSolicitudList DetalleSolicitud { get; set; }

        public BEAgencia Agencia { get; set; }

        public BESucursal Sucursal { get; set; }
    }

    public class BESolicitudAccesoList : List<BESolicitudAcceso>
    {
    }
}
