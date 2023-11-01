using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEDetalleEscaneoValidador
    {
        public int IdDetEscaneoValidacion { get; set; }

        public int IdEscaneoAgenciaSuc { get; set; }

        public BEDetalleGenAgenValidador DetalleAgenValidador { get; set; }

        public DateTime FechaHoraEscaneo { get; set; }

        public BEEstado EstadoEscaneo { get; set; }

        public DateTime FechaCreacion { get; set; }

        public bool EstadoActivo { get; set; }
    }

    public class BEDetalleEscaneoValidadorList : List<BEDetalleEscaneoValidador>
    {
    }
}
