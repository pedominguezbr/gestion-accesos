using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEAutorizante : BEPersona
    {
        public int IdAutorizante { get; set; }

        public DateTime FechaIngreso { get; set; }

        public DateTime FechaCese { get; set; }

        public string CodAutorizador { get; set; }

        public Boolean EstadoActivo { get; set; }

        public BEPersona Persona { get; set; }

        public string NombresCompletos { get; set; }

        public string Jefatura { get; set; }

        public string Gerencia { get; set; }

        public string Direccion { get; set; }

        public string CIP { get; set; }
    }

    public class BEAutorizanteList : List<BEAutorizante>
    {
    }
}
