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
    public class DASolicitudAcceso
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DASolicitudAcceso()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarSolicitud(BESolicitudAcceso beSolicitudAcceso)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_SolicitudAcceso_Insertar");
            db.AddOutParameter(cmd, "IdSolicitudAcceso", DbType.Int32, beSolicitudAcceso.IdSolicitud);
            db.AddInParameter(cmd, "NroSolicitud", DbType.String, beSolicitudAcceso.NumeroSolicitud);
            db.AddInParameter(cmd, "UsuarioCreacion", DbType.String, beSolicitudAcceso.UsuarioCreacion.CodUsuario);
            db.AddInParameter(cmd, "IdTipoAcceso", DbType.Int32, beSolicitudAcceso.TipoAcceso.IdTipoAcceso);
            db.AddInParameter(cmd, "IdSolicitante", DbType.Int32, beSolicitudAcceso.Solicitante.IdPersona);
            db.AddInParameter(cmd, "IdEstado", DbType.Boolean, beSolicitudAcceso.Estado.IdEstado);
            db.AddInParameter(cmd, "IdAgencia", DbType.Int32, beSolicitudAcceso.Agencia.IdAgencia);
            db.AddInParameter(cmd, "IdSucursal", DbType.Int32, beSolicitudAcceso.Sucursal.IdSucursal);
            db.AddInParameter(cmd, "NumEquipos", DbType.Int32, beSolicitudAcceso.NumEquipos);
            db.ExecuteNonQuery(cmd);

            beSolicitudAcceso.IdSolicitud = Int32.Parse(db.GetParameterValue(cmd, "IdSolicitudAcceso").ToString());

            if (beSolicitudAcceso.IdSolicitud == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool ActualizarNumeroSolicitudAcceso(BESolicitudAcceso beSolicitudAcceso)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_SolicitudAcceso_ActualizarNumSol");
            db.AddInParameter(cmd, "IdSolicitudAcceso", DbType.Int32, beSolicitudAcceso.IdSolicitud);
            db.AddInParameter(cmd, "NroSolicitud", DbType.String, beSolicitudAcceso.NumeroSolicitud);

            db.ExecuteNonQuery(cmd);
            return true;

        }

        public bool ActualizarSolicitudAcceso(BESolicitudAcceso beSolicitudAcceso)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_SolicitudAcceso_Actualizar");
            db.AddInParameter(cmd, "IdSolicitudAcceso", DbType.Int32, beSolicitudAcceso.IdSolicitud);

            db.AddInParameter(cmd, "IdTipoAcceso", DbType.Int32, beSolicitudAcceso.TipoAcceso.IdTipoAcceso);
            db.AddInParameter(cmd, "IdAgencia", DbType.Int32, beSolicitudAcceso.Agencia.IdAgencia);
            db.AddInParameter(cmd, "IdSucursal", DbType.Int32, beSolicitudAcceso.Sucursal.IdSucursal);
            db.AddInParameter(cmd, "NumEquipos", DbType.Int32, beSolicitudAcceso.NumEquipos);
            db.ExecuteNonQuery(cmd);

            return true;
        }

        public bool EliminarSolicitudAcceso(int idSolicitud)
        {
            try
            {
                DbCommand cmd = db.GetStoredProcCommand("up_SolicitudAcceso_Anular");
                db.AddInParameter(cmd, "IdSolicitudAcceso", DbType.Int32, idSolicitud);
                db.ExecuteNonQuery(cmd);
                return true;
            }
            catch {
                return false;
            }
            
        }

        public BESolicitudAcceso ObtenerSolicitud(int idSolicitud)
        {
            BESolicitudAcceso beSolicitudAcceso = null;

            DbCommand cmd = db.GetStoredProcCommand("up_SolicitudAcceso_Obtener");
            db.AddInParameter(cmd, "IdSolicitudAcceso", DbType.Int32, idSolicitud);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beSolicitudAcceso = new BESolicitudAcceso();
                    beSolicitudAcceso.IdSolicitud = Convert.ToInt32(dr["IdSolicitudAcceso"].ToString());
                    beSolicitudAcceso.NumeroSolicitud = dr["NroSolicitud"].ToString();
                    beSolicitudAcceso.FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"]);
                    beSolicitudAcceso.UsuarioCreacion = new BEUsuarioSistema();
                    beSolicitudAcceso.UsuarioCreacion.CodUsuario = dr["UsuarioCreacion"].ToString();
                    beSolicitudAcceso.TipoAcceso = new BETipoAcceso();
                    beSolicitudAcceso.TipoAcceso.IdTipoAcceso = Convert.ToInt32(dr["IdTipoAcceso"].ToString());
                    beSolicitudAcceso.TipoAcceso.Nombre = dr["NombreTipoAcceso"].ToString();

                    beSolicitudAcceso.Solicitante = new BESolicitante();
                    beSolicitudAcceso.Solicitante.IdPersona = Convert.ToInt32(dr["IdSolicitante"].ToString());
                    beSolicitudAcceso.Solicitante.Nombres = dr["Nombres"].ToString();
                    beSolicitudAcceso.Solicitante.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beSolicitudAcceso.Solicitante.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beSolicitudAcceso.Solicitante.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beSolicitudAcceso.Solicitante.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());


                    beSolicitudAcceso.Autorizante = new BEAutorizante();

                    if (dr["IdAutorizante"] == DBNull.Value)
                    {
                        beSolicitudAcceso.Autorizante.IdPersona = Constantes.VALOR_NEGATIVO_NULO;
                    }
                    else
                    {
                        beSolicitudAcceso.Autorizante.IdPersona = Convert.ToInt32(dr["IdPersonaAut"].ToString());
                        beSolicitudAcceso.Autorizante.IdAutorizante = Convert.ToInt32(dr["IdAutorizante"].ToString());
                        beSolicitudAcceso.Autorizante.Nombres = dr["NombresAut"].ToString();
                        beSolicitudAcceso.Autorizante.ApellidoPaterno = dr["ApePaternoAut"].ToString();
                        beSolicitudAcceso.Autorizante.ApellidoMaterno = dr["ApeMaternoAut"].ToString();
                        beSolicitudAcceso.Autorizante.NombresCompletos = string.Format("{0} {1} {2}", dr["NombresAut"].ToString(), dr["ApePaternoAut"].ToString(), dr["ApeMaternoAut"].ToString());
                        beSolicitudAcceso.Autorizante.Apellidos = string.Format("{0} {1}", dr["ApePaternoAut"].ToString(), dr["ApeMaternoAut"].ToString());

                    }

                    if (dr["FechaAsignacion"] == DBNull.Value)
                    {
                        beSolicitudAcceso.FechaAsignacion = DateTime.MinValue;
                    }
                    else
                    {
                        beSolicitudAcceso.FechaAsignacion = Convert.ToDateTime(dr["FechaAsignacion"]);
                    }

                    if (dr["FechaValidacion"] == DBNull.Value)
                    {
                        beSolicitudAcceso.FechaValidacion = DateTime.MinValue;
                    }
                    else
                    {
                        beSolicitudAcceso.FechaValidacion = Convert.ToDateTime(dr["FechaValidacion"]);
                    }


                    beSolicitudAcceso.Estado = new BEEstado();
                    beSolicitudAcceso.Estado.IdEstado = Convert.ToInt32(dr["IdEstado"].ToString());
                    beSolicitudAcceso.Estado.Nombre = dr["NombreEstado"].ToString();

                    beSolicitudAcceso.Agencia = new BEAgencia();
                    beSolicitudAcceso.Agencia.IdAgencia = Convert.ToInt32(dr["IdAgencia"].ToString());
                    beSolicitudAcceso.Agencia.Nombre = dr["NombreAgencia"].ToString();

                    beSolicitudAcceso.Sucursal = new BESucursal();
                    beSolicitudAcceso.Sucursal.IdSucursal = Convert.ToInt32(dr["IdSucursal"].ToString());
                    beSolicitudAcceso.Sucursal.Nombre = dr["NombreSucursal"].ToString();

                    beSolicitudAcceso.NumEquipos = Convert.ToInt32(dr["NumEquipos"].ToString());
                    beSolicitudAcceso.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                }
            }

            return beSolicitudAcceso;
        }

        public BESolicitudAccesoList BuscarSolicitud(BEBusquedaSolicitud beBusquedaSolicitud)
        {
            BESolicitudAcceso beSolicitudAcceso = null;
            BESolicitudAccesoList beSolicitudAccesolista = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Solicitud_Buscar");
            db.AddInParameter(cmd, "NroSolicitud", DbType.String, beBusquedaSolicitud.NroSolicitud);
            db.AddInParameter(cmd, "IdAgencia", DbType.Int32, beBusquedaSolicitud.Agencia.IdAgencia);
            db.AddInParameter(cmd, "IdEstado", DbType.Int32, beBusquedaSolicitud.Estado.IdEstado);
            db.AddInParameter(cmd, "IdTipoAcceso", DbType.Int32, beBusquedaSolicitud.TipoAcceso.IdTipoAcceso);
            db.AddInParameter(cmd, "IdSucursal", DbType.Int32, beBusquedaSolicitud.Sucursal.IdSucursal);
            db.AddInParameter(cmd, "ApePaternoSolicitante", DbType.String, beBusquedaSolicitud.Solicitante);
            db.AddInParameter(cmd, "ApePaternoAutorizante", DbType.String, beBusquedaSolicitud.Autorizante);

            if (beBusquedaSolicitud.FechaRegistro != DateTime.MinValue)
            {
                db.AddInParameter(cmd, "FechaRegistro", DbType.DateTime, beBusquedaSolicitud.FechaRegistro);
            }

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                beSolicitudAccesolista = new BESolicitudAccesoList();
                while (dr.Read())
                {
                    beSolicitudAcceso = new BESolicitudAcceso();
                    beSolicitudAcceso.IdSolicitud = Convert.ToInt32(dr["IdSolicitudAcceso"].ToString());
                    beSolicitudAcceso.NumeroSolicitud = dr["NroSolicitud"].ToString();
                    beSolicitudAcceso.FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"]);
                    beSolicitudAcceso.UsuarioCreacion = new BEUsuarioSistema();
                    beSolicitudAcceso.UsuarioCreacion.CodUsuario = dr["UsuarioCreacion"].ToString();
                    beSolicitudAcceso.TipoAcceso = new BETipoAcceso();
                    beSolicitudAcceso.TipoAcceso.IdTipoAcceso = Convert.ToInt32(dr["IdTipoAcceso"].ToString());
                    beSolicitudAcceso.TipoAcceso.Nombre = dr["NombreTipoAcceso"].ToString();

                    beSolicitudAcceso.Solicitante = new BESolicitante();
                    beSolicitudAcceso.Solicitante.IdPersona = Convert.ToInt32(dr["IdSolicitante"].ToString());
                    beSolicitudAcceso.Solicitante.Nombres = dr["Nombres"].ToString();
                    beSolicitudAcceso.Solicitante.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beSolicitudAcceso.Solicitante.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beSolicitudAcceso.Solicitante.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beSolicitudAcceso.Solicitante.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    beSolicitudAcceso.Autorizante = new BEAutorizante();

                    if (dr["IdAutorizante"] == DBNull.Value)
                    {
                        beSolicitudAcceso.Autorizante.IdPersona = Constantes.VALOR_NEGATIVO_NULO;
                    }
                    else
                    {
                        beSolicitudAcceso.Autorizante.IdPersona = Convert.ToInt32(dr["IdPersonaAut"].ToString());
                        beSolicitudAcceso.Autorizante.IdAutorizante = Convert.ToInt32(dr["IdAutorizante"].ToString());
                        beSolicitudAcceso.Autorizante.Nombres = dr["NombresAut"].ToString();
                        beSolicitudAcceso.Autorizante.ApellidoPaterno = dr["ApePaternoAut"].ToString();
                        beSolicitudAcceso.Autorizante.ApellidoMaterno = dr["ApeMaternoAut"].ToString();
                        beSolicitudAcceso.Autorizante.NombresCompletos = string.Format("{0} {1} {2}", dr["NombresAut"].ToString(), dr["ApePaternoAut"].ToString(), dr["ApeMaternoAut"].ToString());
                        beSolicitudAcceso.Autorizante.Apellidos = string.Format("{0} {1}", dr["ApePaternoAut"].ToString(), dr["ApeMaternoAut"].ToString());

                    }

                    if (dr["FechaAsignacion"] == DBNull.Value)
                    {
                        beSolicitudAcceso.FechaAsignacion = DateTime.MinValue;
                    }
                    else
                    {
                        beSolicitudAcceso.FechaAsignacion = Convert.ToDateTime(dr["FechaAsignacion"]);
                    }

                    if (dr["FechaValidacion"] == DBNull.Value)
                    {
                        beSolicitudAcceso.FechaValidacion = DateTime.MinValue;
                    }
                    else
                    {
                        beSolicitudAcceso.FechaValidacion = Convert.ToDateTime(dr["FechaValidacion"]);
                    }

                    beSolicitudAcceso.Estado = new BEEstado();
                    beSolicitudAcceso.Estado.IdEstado = Convert.ToInt32(dr["IdEstado"].ToString());
                    beSolicitudAcceso.Estado.Nombre = dr["NombreEstado"].ToString();

                    beSolicitudAcceso.Agencia = new BEAgencia();
                    beSolicitudAcceso.Agencia.IdAgencia = Convert.ToInt32(dr["IdAgencia"].ToString());
                    beSolicitudAcceso.Agencia.Nombre = dr["NombreAgencia"].ToString();

                    beSolicitudAcceso.Sucursal = new BESucursal();
                    beSolicitudAcceso.Sucursal.IdSucursal = Convert.ToInt32(dr["IdSucursal"].ToString());
                    beSolicitudAcceso.Sucursal.Nombre = dr["NombreSucursal"].ToString();

                    beSolicitudAcceso.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);
                    beSolicitudAcceso.NumEquipos = Convert.ToInt32(dr["NumEquipos"].ToString());
                    beSolicitudAccesolista.Add(beSolicitudAcceso);
                }
            }

            return beSolicitudAccesolista;
        }

        public bool ActEstadoSolAccesoyDetalleValOk(BESolicitudAcceso beSolicitudAcceso)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_SolicitudAcceso_Actualizar_Validarok");
            db.AddInParameter(cmd, "IdSolicitudAcceso", DbType.Int32, beSolicitudAcceso.IdSolicitud);
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, beSolicitudAcceso.Autorizante.IdAutorizante);
         
            db.ExecuteNonQuery(cmd);

            return true;
        }

        public bool ActEstadoSolAccesoyDetalleValNOk(BESolicitudAcceso beSolicitudAcceso)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_SolicitudAcceso_Actualizar_ValidarNok");
            db.AddInParameter(cmd, "IdSolicitudAcceso", DbType.Int32, beSolicitudAcceso.IdSolicitud);
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, beSolicitudAcceso.Autorizante.IdAutorizante);

            db.ExecuteNonQuery(cmd);

            return true;
        }
        #endregion
    }
}
