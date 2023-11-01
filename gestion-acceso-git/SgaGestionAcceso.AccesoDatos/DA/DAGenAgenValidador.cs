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
    public class DAGenAgenValidador
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAGenAgenValidador()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarGenAgenValidador(BEGenAgenValidador beGenAgenValidador)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_GenAgenValidador_Insertar");
            db.AddOutParameter(cmd, "IdGenAgenteValidador", DbType.Int32, beGenAgenValidador.IdGenAgenteValidador);
            db.AddInParameter(cmd, "IdSolicitud", DbType.Int32, beGenAgenValidador.Solicitud.IdSolicitud);
            db.AddInParameter(cmd, "IdUsuarioCreacion", DbType.Int32, beGenAgenValidador.UsuarioCreacion.IdUsuario);
            db.AddInParameter(cmd, "IdEstadoGeneracion", DbType.Int32, beGenAgenValidador.EstadoGeneracion.IdEstado);


            db.ExecuteNonQuery(cmd);

            beGenAgenValidador.IdGenAgenteValidador = Int32.Parse(db.GetParameterValue(cmd, "IdGenAgenteValidador").ToString());

            if (beGenAgenValidador.IdGenAgenteValidador == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public BEGenAgenValidador ObtenerGenAgenValidador(int idGenAgenteValidador, int idSolicitudAcceso)
        {
            BEGenAgenValidador beGenAgenValidador = null;

            DbCommand cmd = db.GetStoredProcCommand("up_GenAgenValidador_Obtener");
            db.AddInParameter(cmd, "IdGenAgenteValidador", DbType.Int32, idGenAgenteValidador);
            db.AddInParameter(cmd, "IdSolicitud", DbType.Int32, idSolicitudAcceso);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beGenAgenValidador = new BEGenAgenValidador();
                    beGenAgenValidador.IdGenAgenteValidador = Convert.ToInt32(dr["idGenAgenteValidador"].ToString());

                    beGenAgenValidador.UsuarioCreacion = new BEUsuarioSistema();
                    beGenAgenValidador.UsuarioCreacion.IdUsuario = Convert.ToInt32(dr["IdUsuarioCreacion"].ToString());
                    beGenAgenValidador.UsuarioCreacion.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beGenAgenValidador.UsuarioCreacion.Nombres = dr["Nombres"].ToString();
                    beGenAgenValidador.UsuarioCreacion.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beGenAgenValidador.UsuarioCreacion.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beGenAgenValidador.UsuarioCreacion.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beGenAgenValidador.UsuarioCreacion.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    beGenAgenValidador.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    beGenAgenValidador.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                    beGenAgenValidador.Solicitud = new BESolicitudAcceso();
                    beGenAgenValidador.Solicitud.IdSolicitud = Convert.ToInt32(dr["IdSolicitud"].ToString());


                    beGenAgenValidador.EstadoGeneracion = new BEEstado();
                    beGenAgenValidador.EstadoGeneracion.IdEstado = Convert.ToInt32(dr["IdEstadoGeneracion"].ToString());
                    beGenAgenValidador.EstadoGeneracion.Nombre = dr["NombreEstado"].ToString();
                }
            }

            return beGenAgenValidador;
        }

        #endregion
    }
}
