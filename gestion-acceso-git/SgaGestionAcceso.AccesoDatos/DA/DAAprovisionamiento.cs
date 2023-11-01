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
    public class DAAprovisionamiento
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAAprovisionamiento()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarAprovisionamiento(BEAprovisionamiento beAprovisionamiento)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Aprovisionamiento_Insertar");
            db.AddOutParameter(cmd, "IdAprovisionamiento", DbType.Int32, beAprovisionamiento.IdAprovisionamiento);
            db.AddInParameter(cmd, "NumeroCertificado", DbType.String, beAprovisionamiento.NumeroCertificado);
            db.AddInParameter(cmd, "IdSolicitud", DbType.Int32, beAprovisionamiento.Solicitud.IdSolicitud);
           
            db.ExecuteNonQuery(cmd);

            beAprovisionamiento.IdAprovisionamiento = Int32.Parse(db.GetParameterValue(cmd, "IdAprovisionamiento").ToString());

            if (beAprovisionamiento.IdAprovisionamiento == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public BEAprovisionamiento ObtenerAprovisionamiento(int idAprovisionamiento)
        {
            BEAprovisionamiento beAprovisionamiento = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Aprovisionamiento_Obtener");
            db.AddInParameter(cmd, "IdAprovisionamiento", DbType.Int32, idAprovisionamiento);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beAprovisionamiento = new BEAprovisionamiento();
                    beAprovisionamiento.IdAprovisionamiento = Convert.ToInt32(dr["IdAprovisionamiento"].ToString());
                    beAprovisionamiento.NumeroCertificado = dr["NumeroCertificado"].ToString();
                    beAprovisionamiento.FechaAprovisionamiento = Convert.ToDateTime(dr["FechaAprovisionamiento"]);
                    beAprovisionamiento.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                    beAprovisionamiento.Solicitud = new BESolicitudAcceso();
                    beAprovisionamiento.Solicitud.IdSolicitud = Convert.ToInt32(dr["IdSolicitud"].ToString());
                    beAprovisionamiento.Solicitud.NumeroSolicitud = dr["NroSolicitud"].ToString();
                    beAprovisionamiento.Solicitud.FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"]);
                    beAprovisionamiento.Solicitud.UsuarioCreacion = new BEUsuarioSistema();
                    beAprovisionamiento.Solicitud.UsuarioCreacion.CodUsuario = dr["UsuarioCreacion"].ToString();
                }
            }

            return beAprovisionamiento;
        }
        #endregion

    }
}
