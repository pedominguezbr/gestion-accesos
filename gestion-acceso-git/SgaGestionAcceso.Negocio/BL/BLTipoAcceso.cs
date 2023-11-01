using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLTipoAcceso
    {
        public BETipoAccesoList ListarTipoAcceso()
        {
            DATipoAcceso daTipoAcceso = new DATipoAcceso();
            return daTipoAcceso.ListarTipoAcceso();
        }

        public BETipoAcceso ObtenerTipoAcceso(int idTipoAcceso)
        {
            DATipoAcceso daTipoAcceso = new DATipoAcceso();
            return daTipoAcceso.ObtenerTipoAcceso(idTipoAcceso);
        }
    }
}
