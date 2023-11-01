using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLEscaneoAgenciaSucursal
    {
        public BEEscaneoAgenciaSucursalList BuscarEscaneoAgenciaSucursal(DateTime fechaInicio, DateTime fechaFin, int idAgencia, int idSucursal, string idEstado)
        {
            DAEscaneoAgenciaSucursal daEscaneoAgenciaSucursal = new DAEscaneoAgenciaSucursal();
            return daEscaneoAgenciaSucursal.BuscarEscaneoAgenciaSucursal(fechaInicio, fechaFin, idAgencia, idSucursal, idEstado);
        }

        public BEEscaneoAgenteDetalleList ObtenerEscaneoAgenciaSucursal(string idSolicitud)
        {
            DAEscaneoAgenciaSucursal daEscaneoAgenciaSucursal = new DAEscaneoAgenciaSucursal();
            DADetalleEscaneoValidador daDetalleEscaneoValidador = new DADetalleEscaneoValidador();
            BEEscaneoAgenteDetalleList beEscaneoAgenciaSucursal = null;

            beEscaneoAgenciaSucursal = daEscaneoAgenciaSucursal.ObtenerEscaneoAgenciaSucursal(idSolicitud);
            
            //if (beEscaneoAgenciaSucursal != null)
            //{
            //    beEscaneoAgenciaSucursal = daDetalleEscaneoValidador.ListarDetalleEscaneoValidador(IdEscaneoAgenciaSuc);
            //}
            
            return beEscaneoAgenciaSucursal;
        }
    }
}
