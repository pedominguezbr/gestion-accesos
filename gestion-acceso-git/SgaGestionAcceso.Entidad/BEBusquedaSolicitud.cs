using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEBusquedaSolicitud
    {
        public string NroSolicitud { get; set; }

        public BEAgencia Agencia { get; set; }

        public BESucursal Sucursal { get; set; }

        public string Solicitante { get; set; }

        public string Autorizante { get; set; }

        public DateTime FechaRegistro { get; set; }

        public BEEstado Estado { get; set; }

        public BETipoAcceso TipoAcceso { get; set; }
    }
}
