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
    public class DADetalleSolicitud
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DADetalleSolicitud()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos

        public BEDetalleSolicitudList ListarDetalleSolicitud(int idSolicitud)
        {
            BEDetalleSolicitudList beDetalleSolicitudList = null;
            BEDetalleSolicitud beDetalleSolicitud = null;

            DbCommand cmd = db.GetStoredProcCommand("up_DetalleSolicitudAcceso_Listar");
            db.AddInParameter(cmd, "IdSolicitudAcceso", DbType.Int32, idSolicitud);
            beDetalleSolicitudList = new BEDetalleSolicitudList();
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beDetalleSolicitud = new BEDetalleSolicitud();
                    beDetalleSolicitud.IdDetalleSolicitud = Convert.ToInt32(dr["IdDetalleSolicitudAcceso"].ToString());
                    beDetalleSolicitud.IdSolicitudAcceso = Convert.ToInt32(dr["IdSolicitudAcceso"].ToString());

                    beDetalleSolicitud.Persona = new BEPersona();
                    beDetalleSolicitud.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beDetalleSolicitud.Persona.Nombres = dr["Nombres"].ToString();
                    beDetalleSolicitud.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beDetalleSolicitud.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beDetalleSolicitud.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beDetalleSolicitud.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beDetalleSolicitud.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beDetalleSolicitud.FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"]);

                    beDetalleSolicitud.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                    beDetalleSolicitud.Estado = new BEEstado();
                    beDetalleSolicitud.Estado.IdEstado = Convert.ToInt32(dr["IdEstado"].ToString());
                    beDetalleSolicitud.Estado.Nombre = dr["NombreEstado"].ToString();

                    beDetalleSolicitud.TotalAplicaciones = Convert.ToInt32(dr["TotalAplicacion"].ToString());
                    beDetalleSolicitudList.Add(beDetalleSolicitud);
                }
            }

            return beDetalleSolicitudList;
        }

        public bool InsertarDetalleSolicitud(BEDetalleSolicitud beDetalleSolicitud)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_DetalleSolicitudAcceso_Insertar");
            db.AddOutParameter(cmd, "IdDetalleSolicitudAcceso", DbType.Int32, beDetalleSolicitud.IdDetalleSolicitud);

            db.AddInParameter(cmd, "IdSolicitudAcceso", DbType.Int32, beDetalleSolicitud.IdSolicitudAcceso);
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, beDetalleSolicitud.Persona.IdPersona);
            db.AddInParameter(cmd, "IdEstado", DbType.Int32, beDetalleSolicitud.Estado.IdEstado);

            db.ExecuteNonQuery(cmd);

            beDetalleSolicitud.IdDetalleSolicitud = Int32.Parse(db.GetParameterValue(cmd, "IdDetalleSolicitudAcceso").ToString());

            if (beDetalleSolicitud.IdDetalleSolicitud == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool ActualizarDetalleSolicitud(BEDetalleSolicitud beDetalleSolicitud)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_DetalleSolicitudAcceso_Actualizar");
            db.AddInParameter(cmd, "IdDetalleSolicitudAcceso", DbType.Int32, beDetalleSolicitud.IdDetalleSolicitud);

            db.AddInParameter(cmd, "IdSolicitudAcceso", DbType.Int32, beDetalleSolicitud.IdSolicitudAcceso);
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, beDetalleSolicitud.Persona.IdPersona);

            db.ExecuteNonQuery(cmd);

            return true;
        }

        public bool EliminarDetalleSolicitud(int idDetalleSolicitud)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_DetalleSolicitudAcceso_Eliminar");
            db.AddInParameter(cmd, "IdDetalleSolicitudAcceso", DbType.Int32, idDetalleSolicitud);

            db.ExecuteNonQuery(cmd);

            return true;
        }

        public BEDetalleSolicitud ObtenerDetalleSolicitud(int idDetalleSolicitud)
        {

            BEDetalleSolicitud beDetalleSolicitud = null;

            DbCommand cmd = db.GetStoredProcCommand("up_DetalleSolicitudAcceso_Obtener");
            db.AddInParameter(cmd, "IdDetalleSolicitudAcceso", DbType.Int32, idDetalleSolicitud);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beDetalleSolicitud = new BEDetalleSolicitud();
                    beDetalleSolicitud.IdDetalleSolicitud = Convert.ToInt32(dr["IdDetalleSolicitudAcceso"].ToString());
                    beDetalleSolicitud.IdSolicitudAcceso = Convert.ToInt32(dr["IdSolicitudAcceso"].ToString());

                    beDetalleSolicitud.Persona = new BEPersona();
                    beDetalleSolicitud.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beDetalleSolicitud.Persona.Nombres = dr["Nombres"].ToString();
                    beDetalleSolicitud.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beDetalleSolicitud.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beDetalleSolicitud.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beDetalleSolicitud.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beDetalleSolicitud.FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"]);

                    beDetalleSolicitud.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                }
            }

            return beDetalleSolicitud;
        }

        public bool ActualizarDetalleSolicitudEstadoVal(BEDetalleSolicitud beDetalleSolicitud)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_DetalleSolicitudAcceso_Actualizar_Estado_Val");
            db.AddInParameter(cmd, "IdDetalleSolicitudAcceso", DbType.Int32, beDetalleSolicitud.IdDetalleSolicitud);

            db.AddInParameter(cmd, "IdEstado", DbType.Int32, beDetalleSolicitud.Estado.IdEstado);
            db.AddInParameter(cmd, "ObservacionValidacion", DbType.String, beDetalleSolicitud.ObservacionValidacion);

            db.ExecuteNonQuery(cmd);

            return true;
        }
        #endregion
    }
}
