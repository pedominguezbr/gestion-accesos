using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEDatosEscaneoValidador
    {
        public int IdDatoEscaneoValidador { get; set; }

        public int IdDetEscaneoValidacion { get; set; }

        public string ArchivoEscaneado { get; set; }

        public DateTime FechaCreacion { get; set; }

        public bool EstadoActivo { get; set; }
    }
}
