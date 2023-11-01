using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEPersona
    {
        public int IdPersona { get; set; }

        public string DNI { get; set; }

        public string ApellidoPaterno { get; set; }

        public string ApellidoMaterno { get; set; }

        public string Nombres { get; set; }

        public string Correo { get; set; }

        public DateTime FechaCreacion { get; set; }

        public bool Estado { get; set; }

        public string NombresCompletos { get; set; }

        public string Apellidos { get; set; }
    }


    public class BEPersonaList : List<BEPersona>
    {
    }
}
