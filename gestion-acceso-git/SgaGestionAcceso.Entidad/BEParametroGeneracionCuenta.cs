using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEParametroGeneracionCuenta
    {
        public int idParametro { get; set; }

        public string DescripcionParametro { get; set; }

        public string Prefijo { get; set; }

        public int LongiturCuenta { get; set; }

        public int Correlativo { get; set; }

        public DateTime FechaRegistro { get; set; }

        public bool EstadoActivo { get; set; }
    }
}
