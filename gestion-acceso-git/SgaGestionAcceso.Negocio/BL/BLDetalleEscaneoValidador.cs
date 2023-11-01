using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLDetalleEscaneoValidador
    {
        public BEDetalleEscaneoValidadorList ListarDetalleEscaneoValidador(int IdEscaneoAgenciaSuc)
        {
            DADetalleEscaneoValidador daDetalleEscaneoValidador = new DADetalleEscaneoValidador();
            return daDetalleEscaneoValidador.ListarDetalleEscaneoValidador(IdEscaneoAgenciaSuc);

        }

        public BEDetalleEscaneoValidador ObtenerDetalleEscaneoValidador(int idDetEscaneoValidacion)
        {
            DADetalleEscaneoValidador daDetalleEscaneoValidador = new DADetalleEscaneoValidador();
            return daDetalleEscaneoValidador.ObtenerDetalleEscaneoValidador(idDetEscaneoValidacion);

        }
    }
}
