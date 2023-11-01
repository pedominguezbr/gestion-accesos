using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SgaGestionAcceso.Entidad
{
   public class BEBusquedaAgencia
    {
       public string NombresRepresentante { get; set; }

        public BEAgencia Agencia { get; set; }

        public BESucursal Sucursal { get; set; }

        public BEUbigeo Ubigeo { get; set; }



      
    }
}
