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
    public class BLPermisoUsuario
    {
        public bool InsertarPermisoUsuario(BEPermisoUsuario bePermisoUsuario)
        {
            DAPermisoUsuario daPermisoUsuario = new DAPermisoUsuario();
            return daPermisoUsuario.InsertarPermisoUsuario(bePermisoUsuario);
        }

        public bool EliminarPermisoUsuario(int idPermisoUsuario)
        {
            DAPermisoUsuario daPermisoUsuario = new DAPermisoUsuario();
            return daPermisoUsuario.EliminarPermisoUsuario(idPermisoUsuario);
        }
        public bool CopiarPermisoUsuario(string codigoUsuarioPorCopiar, int idUsuario)
        {
            DAPermisoUsuario daPermisousuario = new DAPermisoUsuario();
            using (TransactionScope transaccion = new TransactionScope())
            {
                bool respuesta = daPermisousuario.CopiarPermisoUsuario(codigoUsuarioPorCopiar, idUsuario);
                transaccion.Complete();
                return respuesta;
            }
        }
    }
}
