using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEPuesto
    {
        public int IdPuesto { get; set; }

        public string Nombre { get; set; }

        public DateTime FechaCreacion { get; set; }

        public BEUsuarioSistema UsuarioCreacion { get; set; }

        public BEPersona Responsable { get; set; }

        public string FlCritico { get; set; }

        public Boolean Estado { get; set; }

        public BEAplicacion Aplicacion { get; set; }
    }

    public class BEPuestoList : List<BEPuesto>
    {
    }
}
