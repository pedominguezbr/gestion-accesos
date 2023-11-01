using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
    public class BESucursal
    {
        public int IdSucursal { get; set; }

        public string CodSucursal { get; set; }

        public string Nombre { get; set; }

        public string Direccion { get; set; }

        public BEUbigeo Ubigeo { get; set; }

        public BEAgencia Agencia { get; set; }

        public Boolean EstadoActivo { get; set; }
    }

    public class BESucursalList : List<BESucursal>
    {
    }
}
