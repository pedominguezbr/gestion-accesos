using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;

namespace SgaGestionAcceso.Negocio
{
    public class BLEstado
    {
        public BEEstadoList ListarEstado(int tipoEstado = 1)
        {
            DAEstado daEstado = new DAEstado();
            return daEstado.ListarEstado(tipoEstado);
        }
    }
}
