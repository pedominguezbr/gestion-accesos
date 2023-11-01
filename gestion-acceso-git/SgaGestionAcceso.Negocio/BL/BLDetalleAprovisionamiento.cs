using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLDetalleAprovisionamiento
    {
        public bool InsertarDetalleAprovisionamiento(BEDetalleAprovisionamiento beDetalleAprovisionamiento)
        {
            DADetalleAprovisionamiento daDetalleAprovisionamiento = new DADetalleAprovisionamiento();

            return daDetalleAprovisionamiento.InsertarDetalleAprovisionamiento(beDetalleAprovisionamiento);
        }

        public BEDetalleAprovisionamiento ObtenerDetalleAprovisionamiento(int idDetAprovisionamiento)
        {
            throw new System.NotImplementedException();
        }

        public BEDetalleAprovisionamientoList ListarDetalleAprovisionamiento(int idAprovisionamiento)
        {
            throw new System.NotImplementedException();
        }
    }
}
