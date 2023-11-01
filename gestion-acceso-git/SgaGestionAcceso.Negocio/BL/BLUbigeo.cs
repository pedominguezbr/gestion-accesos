using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLUbigeo
    {
        public BEUbigeoList ListarUbigeo(string Pais)
        {
            DAUbigeo daUbigeo = new DAUbigeo();
            return daUbigeo.ListarUbigeo(Pais);
        }

        public BEUbigeo ObtenerUbigeo(string codUbigeo)
        {
            DAUbigeo daUbigeo = new DAUbigeo();
            return daUbigeo.ObtenerUbigeo(codUbigeo);
        }
    }
}
