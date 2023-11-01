using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLAgencia
    {

        public BEAgenciaList ListarAgencia()
        {
            DAAgencia daAgencia = new DAAgencia();
            return daAgencia.ListarAgencia();
        }
        public bool InsertarAgencia(BEAgencia beAgencia)
        {
            DAAgencia daAgencia = new DAAgencia();
            return daAgencia.InsertarAgencia(beAgencia);
        }

        public bool ActualizarAgencia(BEAgencia beAgencia)
        {
            DAAgencia daAgencia = new DAAgencia();
            return daAgencia.ActualizarAgencia(beAgencia);
        }

        public bool EliminarAgencia(int idAgencia)
        {
            DAAgencia daAgencia = new DAAgencia();
            return daAgencia.EliminarAgencia(idAgencia);
        }
        public BEAgencia ObtenerAgencia(int idAgencia)
        {
            DAAgencia daAgencia = new DAAgencia();
            return daAgencia.ObtenerAgencia(idAgencia);
        }
        public BEAgenciaList BuscarAgencia(BEBusquedaAgencia beBusquedaAgencia)
        {
            DAAgencia daAgencia = new DAAgencia();
            return daAgencia.BuscarAgencia(beBusquedaAgencia);
        }
    }
}
