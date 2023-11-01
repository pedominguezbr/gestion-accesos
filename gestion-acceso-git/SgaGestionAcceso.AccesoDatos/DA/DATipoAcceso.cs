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


namespace SgaGestionAcceso.AccesoDatos
{
    public class DATipoAcceso
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DATipoAcceso()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos

        public BETipoAccesoList ListarTipoAcceso()
        {
            BETipoAccesoList listabeTipoAcceso = null;
            BETipoAcceso beTipoAcceso = null;

            DbCommand cmd = db.GetStoredProcCommand("up_TipoAcceso_Listar");

            listabeTipoAcceso = new BETipoAccesoList();

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    beTipoAcceso = new BETipoAcceso();
                    beTipoAcceso.IdTipoAcceso = Convert.ToInt32(dr["IdTipoAcceso"].ToString());
                    beTipoAcceso.Nombre = dr["Nombre"].ToString();

                    beTipoAcceso.EstadoActivo = Convert.ToBoolean(dr["Estado"]);

                    listabeTipoAcceso.Add(beTipoAcceso);
                }
            }
            return listabeTipoAcceso;
        }

        public BETipoAcceso ObtenerTipoAcceso(int idTipoAcceso)
        {
            BETipoAcceso beTipoAcceso = null;

            DbCommand cmd = db.GetStoredProcCommand("up_TipoAcceso_Obtener");
            db.AddInParameter(cmd, "IdTipoAcceso", DbType.Int32, idTipoAcceso);
            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    beTipoAcceso = new BETipoAcceso();
                    beTipoAcceso.IdTipoAcceso = Convert.ToInt32(dr["IdTipoAcceso"].ToString());
                    beTipoAcceso.Nombre = dr["Nombre"].ToString();

                    beTipoAcceso.EstadoActivo = Convert.ToBoolean(dr["Estado"]);

                }
            }

            return beTipoAcceso;
        }

        #endregion
    }
}
