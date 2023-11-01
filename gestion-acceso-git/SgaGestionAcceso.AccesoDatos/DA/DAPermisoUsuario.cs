
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SgaGestionAcceso.Entidad;
using SgaGestionAcceso.Helper;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;

namespace SgaGestionAcceso.Entidad
{
    public class DAPermisoUsuario
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAPermisoUsuario()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarPermisoUsuario(BEPermisoUsuario bePermisoUsuario)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_PermisoUsuario_Insertar");
            db.AddOutParameter(cmd, "IdPermisoUsuario", DbType.Int32, bePermisoUsuario.IdPermisoUsuario);
            db.AddInParameter(cmd, "IdUsuario", DbType.Int32, bePermisoUsuario.beUsuario.IdUsuario);
            db.AddInParameter(cmd, "IdRol", DbType.Int32, bePermisoUsuario.beRol.IdRol);
            db.AddInParameter(cmd, "IdUsuarioCreacion", DbType.Int32, bePermisoUsuario.IdUsuarioCreacion);
            db.ExecuteNonQuery(cmd);

            bePermisoUsuario.IdPermisoUsuario = Int32.Parse(db.GetParameterValue(cmd, "IdPermisoUsuario").ToString());

            if (bePermisoUsuario.IdPermisoUsuario == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool EliminarPermisoUsuario(int idPermisoUsuario)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_PermisoUsuario_Eliminar");
            db.AddInParameter(cmd, "IdPermisoUsuario", DbType.Int32, idPermisoUsuario);

            db.ExecuteNonQuery(cmd);

            return true;
        }

        public bool CopiarPermisoUsuario(string codigoUsuarioPorCopiar, int idUsuario)
        {
            int codigoError = 0;
            DbCommand cmd = db.GetStoredProcCommand("up_PermisoUsuario_Copiar");

            db.AddInParameter(cmd, "IntIdUsuario", DbType.Int32, idUsuario);
            db.AddOutParameter(cmd, "IntCodigoError", DbType.Int32, codigoError);
            db.AddInParameter(cmd, "VchCodigoUsuarioCopiar", DbType.String, codigoUsuarioPorCopiar);

            db.ExecuteNonQuery(cmd);

            codigoError = Convert.ToInt16(db.GetParameterValue(cmd, "IntCodigoError").ToString());
            if (codigoError == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        #endregion
    }
}
