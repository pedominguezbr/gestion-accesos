using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLPuesto
    {
        public BEPuestoList ListarPuesto(int idAplicacion)
        {
            DAPuesto daPuesto = new DAPuesto();
            return daPuesto.ListarPuesto(idAplicacion);
        }

        public BEPuesto ObtenerPuesto(int idPuesto)
        {
            DAPuesto daPuesto = new DAPuesto();
            return daPuesto.ObtenerPuesto(idPuesto);
        }
    }
}
