using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BEUbigeo
    {
        public string Codigo { get; set; }

        public string Pais { get; set; }

        public string Departamento { get; set; }

        public string Provincia { get; set; }

        public string Distrito { get; set; }

        public string codDepartamento { get; set; }

        public string codProvincia { get; set; }

        public string codDistrito { get; set; }

        public bool EstadoActivo { get; set; }
    }

    public class BEUbigeoList : List<BEUbigeo>
    {
    }
}
