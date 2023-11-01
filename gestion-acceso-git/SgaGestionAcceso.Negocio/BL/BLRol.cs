using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.AccesoDatos;
using System.Transactions;

namespace SgaGestionAcceso.Negocio
{

    public class BLRol
    {
        public bool InsertarRol(BERol beRol)
        {
            DARol daRol = new DARol();
            return daRol.InsertarRol(beRol);
        }

        public bool ActualizarRol(BERol beRol)
        {
            DARol daRol = new DARol();
            return daRol.ActualizarRol(beRol);
        }

        public bool EliminarRol(int idRol)
        {
            DARol daRol = new DARol();
            return daRol.EliminarRol(idRol);
        }

        public BERol ObtenerRol(int idRol)
        {
            DARol daRol = new DARol();
            return daRol.ObtenerRol(idRol);
        }

        public BERolList BuscarRol(string rolDescripcion)
        {
            DARol daRol = new DARol();
            return daRol.BuscarRol(rolDescripcion);
        }

        public BEPermisoUsuarioList ListarRolesPorUsuario(int idUsuario)
        {
            DARol daRol = new DARol();
            return daRol.ListarRolesPorUsuario(idUsuario);
        }

    }
}
