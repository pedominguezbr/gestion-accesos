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
    public class DAParametroGeneracionCuenta
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAParametroGeneracionCuenta()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public BEParametroGeneracionCuenta ObtenerParametroGeneracionC(int idParametro)
        {

            BEParametroGeneracionCuenta beParametroGeneracionCuenta = null;

            DbCommand cmd = db.GetStoredProcCommand("up_ParametroGeneracionCuenta_Obtener");
            db.AddInParameter(cmd, "IdParametro", DbType.Int32, idParametro);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beParametroGeneracionCuenta = new BEParametroGeneracionCuenta();
                    beParametroGeneracionCuenta.idParametro = Convert.ToInt32(dr["IdParametro"].ToString());
                    beParametroGeneracionCuenta.DescripcionParametro = dr["DescripcionParametro"].ToString();
                    beParametroGeneracionCuenta.Prefijo = dr["Prefijo"].ToString();
                    beParametroGeneracionCuenta.LongiturCuenta = Convert.ToInt32(dr["LongitudCuenta"].ToString());
                    beParametroGeneracionCuenta.Correlativo = Convert.ToInt32(dr["Correlativo"].ToString());


                    beParametroGeneracionCuenta.FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"]);

                    beParametroGeneracionCuenta.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                }
            }

            return beParametroGeneracionCuenta;
        }

        public bool ActualizarCorrelativo(BEParametroGeneracionCuenta beParametroGeneracionCuenta)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_ParametroGeneracionCuenta_Actualizar_Correl");
            db.AddInParameter(cmd, "IdParametro", DbType.Int32, beParametroGeneracionCuenta.idParametro);
            db.AddInParameter(cmd, "Correlativo", DbType.String, beParametroGeneracionCuenta.Correlativo);

            db.ExecuteNonQuery(cmd);


            return false;

        }
        #endregion
    }
}
