using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLDetalleGenAgenValidador
    {
        public bool InsertarDetalle(BEDetalleGenAgenValidador beDetalleGenAgenValidador)
        {
            DADetalleGenAgenValidador daDetalleGenAgenValidador = new DADetalleGenAgenValidador();
            return daDetalleGenAgenValidador.InsertarDetalle(beDetalleGenAgenValidador);
        }

        public BEDetalleGenAgenValidadorList ListarDetalle(int IdGenAgenteValidador)
        {
            DADetalleGenAgenValidador daDetalleGenAgenValidador = new DADetalleGenAgenValidador();
            return daDetalleGenAgenValidador.ListarDetalle(IdGenAgenteValidador);
        }


        public BEDetalleGenAgenValidador ObtenerDetalle(int IdDetGenAgenteValidador)
        {
            DADetalleGenAgenValidador daDetalleGenAgenValidador = new DADetalleGenAgenValidador();
            return daDetalleGenAgenValidador.ObtenerDetalle(IdDetGenAgenteValidador);
        }
    }
}
