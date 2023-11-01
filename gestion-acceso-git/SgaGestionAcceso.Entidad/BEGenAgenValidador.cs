using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEGenAgenValidador
    {
        public int IdGenAgenteValidador { get; set; }

        public BESolicitudAcceso Solicitud { get; set; }

        public DateTime FechaCreacion { get; set; }

        public BEUsuarioSistema UsuarioCreacion { get; set; }

        public BEEstado EstadoGeneracion { get; set; }

        public bool EstadoActivo { get; set; }

        public BEDetalleGenAgenValidadorList DetalleGenAgenVali { get; set; }
    }
}
