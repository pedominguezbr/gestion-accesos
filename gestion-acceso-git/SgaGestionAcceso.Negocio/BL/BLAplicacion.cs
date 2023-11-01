using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLAplicacion
    {
        public BEAplicacionList ListarAplicacion()
        {
            DAAplicacion daAplicacion = new DAAplicacion();
            return daAplicacion.ListarAplicacion();
        }
        
        public BEAplicacion ObtenerAplicacion(int idAplicacion)
        {
            DAAplicacion daAplicacion = new DAAplicacion();
            return daAplicacion.ObtenerAplicacion(idAplicacion);
        }
    }
}
