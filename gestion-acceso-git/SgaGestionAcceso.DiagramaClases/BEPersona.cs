using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.DiagramaClases
{
    public class BEPersona
    {
        public int IdPersona { get; set; }

        public string DNI { get; set; }

        public string ApellidoPaterno { get; set; }

        public string ApellidoMaterno { get; set; }

        public string Nombres { get; set; }

        public DateTime FechaRegistro { get; set; }

        public bool Estado { get; set; }
    }


    public class BEPersonaList : List<BEPersona>
    {
    }
}
