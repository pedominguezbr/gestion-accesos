using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLAutorizante
    {
        public BEAutorizante ObtenerAutorizante(int IdAutorizante, int IdPersona)
        {
            DAAutorizante daAutorizante = new DAAutorizante();
            return daAutorizante.ObtenerAutorizante(IdAutorizante, IdPersona);
        }

        public BEAutorizanteList ListarAutorizante()
        {
            DAAutorizante daAutorizante = new DAAutorizante();
            return daAutorizante.ListarAutorizante();
        }

        public bool InsertarAutorizante(BEAutorizante beAutorizante)
        {
            DAAutorizante daAutorizante = new DAAutorizante();
            return daAutorizante.InsertarAutorizante(beAutorizante);
        }

        public bool ActualizarAutorizante(BEAutorizante beAutorizante)
        {
            DAAutorizante daAutorizante = new DAAutorizante();
            return daAutorizante.ActualizarAutorizante(beAutorizante);
        }

        public bool EliminarAutorizante(int idAutorizante)
        {
            DAAutorizante daAutorizante = new DAAutorizante();
            return daAutorizante.EliminarAutorizante(idAutorizante);
        }

        public BEAutorizanteList BuscarAutorizante(BEAutorizante beAutorizantebusqueda)
        {
            DAAutorizante daAutorizante = new DAAutorizante();
            return daAutorizante.BuscarAutorizante(beAutorizantebusqueda);
        }
    }
}
