using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BESolicitudAcceso
    {
       
        public int IdSolicitud { get; set; }

        public int NumEquipos { get; set; }

        public string NumeroSolicitud { get; set; }

        public DateTime FechaRegistro { get; set; }

        public BESolicitante Solicitante { get; set; }

        public BEAutorizante Autorizante { get; set; }

        public DateTime FechaAsignacion { get; set; }

        public DateTime FechaValidacion { get; set; }

        public double CodigoAutorizacion { get; set; }

        public BETipoAcceso TipoAcceso { get; set; }

        public BEEstado Estado { get; set; }

        public BEUsuarioSistema UsuarioCreacion { get; set; }

        public BEDetalleSolicitudList DetalleSolicitud { get; set; }

        public BEAgencia Agencia { get; set; }

        public BESucursal Sucursal { get; set; }

        public bool EstadoActivo { get; set; }

        public int TotalDetalle
        {
            get
            {
                if (DetalleSolicitud != null) { return DetalleSolicitud.Count; }
                else { return 0; }
            }
        }
    }

    public class BESolicitudAccesoList : List<BESolicitudAcceso>
    {
    }
}
