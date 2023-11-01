using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEDetalleGenAgenValidador
    {
        public int IdDetAgenValidador { get; set; }

        public int IdGenAgenteValidador { get; set; }

        public string CodGenerado { get; set; }

        public string Activador { get; set; }

        public string RutaValidador { get; set; }

        public string NombreValidador { get; set; }

        public DateTime FechaCreacion { get; set; }

        public DateTime FechaCaducidad { get; set; }

        public BEEstado Estado { get; set; }

        public bool EstadoActivo { get; set; }
    }

    public class BEDetalleGenAgenValidadorList : List<BEDetalleGenAgenValidador>
    {
    }
}
