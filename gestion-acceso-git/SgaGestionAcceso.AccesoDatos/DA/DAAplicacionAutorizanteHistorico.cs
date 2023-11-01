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
    public class DAAplicacionAutorizanteHistorico
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAAplicacionAutorizanteHistorico()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarAplicacionAutorizanteHistorico(BEAplicacionAutorizanteHistorico beAplicacionAutorizanteHistorico)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_AplicacionAutorizanteHistorico_Insertar");
            db.AddOutParameter(cmd, "IdHistorico", DbType.Int32, beAplicacionAutorizanteHistorico.IdHistorico);
            db.AddInParameter(cmd, "IdAplicacion", DbType.Int32, beAplicacionAutorizanteHistorico.Aplicacion.IdAplicacion);
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, beAplicacionAutorizanteHistorico.Autorizante.IdAutorizante);
            db.AddInParameter(cmd, "Accion", DbType.String, beAplicacionAutorizanteHistorico.Accion);

            db.AddInParameter(cmd, "FechaModificacion", DbType.DateTime, beAplicacionAutorizanteHistorico.FechaModificacion);
            db.AddInParameter(cmd, "UsuarioModificacion", DbType.String, beAplicacionAutorizanteHistorico.UsuarioModificacion);
            db.AddInParameter(cmd, "RutaEvidencia", DbType.String, beAplicacionAutorizanteHistorico.RutaEvidencia);
            db.AddInParameter(cmd, "Comentario", DbType.String, beAplicacionAutorizanteHistorico.Comentario);

            db.ExecuteNonQuery(cmd);

            beAplicacionAutorizanteHistorico.IdHistorico = Int32.Parse(db.GetParameterValue(cmd, "IdHistorico").ToString());

            if (beAplicacionAutorizanteHistorico.IdHistorico == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        
        public BEAplicacionAutorizanteHistorico ObtenerAplicacionAutorizanteHistorico(int idAplicacion)
        {
            BEAplicacionAutorizanteHistorico beAplicacionAutorizanteHistorico = null;

            DbCommand cmd = db.GetStoredProcCommand("up_AplicacionAutorizanteHistorico_Obtener");
            db.AddInParameter(cmd, "idAplicacion", DbType.Int32, idAplicacion);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beAplicacionAutorizanteHistorico = new BEAplicacionAutorizanteHistorico();
                    beAplicacionAutorizanteHistorico.IdHistorico = Convert.ToInt32(dr["IdHistorico"].ToString());
                    beAplicacionAutorizanteHistorico.Aplicacion = new BEAplicacion();
                    beAplicacionAutorizanteHistorico.Aplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());


                    beAplicacionAutorizanteHistorico.Autorizante = new BEAutorizante();
                    beAplicacionAutorizanteHistorico.Autorizante.IdAutorizante = Convert.ToInt32(dr["IdAutorizante"].ToString());

                    beAplicacionAutorizanteHistorico.Accion = dr["Accion"].ToString();

                    beAplicacionAutorizanteHistorico.UsuarioModificacion = dr["UsuarioModificacion"].ToString();
                    beAplicacionAutorizanteHistorico.FechaModificacion = Convert.ToDateTime(dr["FechaModificacion"]);
                    beAplicacionAutorizanteHistorico.RutaEvidencia = dr["RutaEvidencia"].ToString();
                    beAplicacionAutorizanteHistorico.Comentario = dr["Comentario"].ToString();
                }
            }
            return beAplicacionAutorizanteHistorico;
        }

        public BEAplicacionAutorizanteHistoricoList BuscarAplicacionAutorizanteHistorico(int idAplicacion, int idAutorizante, DateTime fechaIni, DateTime fechaFin)
        {
            BEAplicacionAutorizanteHistorico beAplicacionAutorizanteHistorico = null;
            BEAplicacionAutorizanteHistoricoList beAplicacionAutorizanteHistoricoList = null;
            DbCommand cmd = db.GetStoredProcCommand("up_AplicacionAutorizanteHistorico_Buscar");
            db.AddInParameter(cmd, "idAplicacion", DbType.Int32, idAplicacion);
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, idAutorizante);

            if (fechaIni != DateTime.MinValue)
            {
                db.AddInParameter(cmd, "FechaModificacionIni", DbType.DateTime, fechaIni);
            }

            if (fechaFin != DateTime.MinValue)
            {
                db.AddInParameter(cmd, "FechaModificacionFin", DbType.DateTime, fechaFin);
            }

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                beAplicacionAutorizanteHistoricoList = new BEAplicacionAutorizanteHistoricoList();
                while (dr.Read())
                {
                    beAplicacionAutorizanteHistorico = new BEAplicacionAutorizanteHistorico();
                    beAplicacionAutorizanteHistorico.IdHistorico = Convert.ToInt32(dr["IdHistorico"].ToString());
                    beAplicacionAutorizanteHistorico.Aplicacion = new BEAplicacion();
                    beAplicacionAutorizanteHistorico.Aplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());
                    beAplicacionAutorizanteHistorico.Aplicacion.Nombre = dr["NombreAplicacion"].ToString();


                    beAplicacionAutorizanteHistorico.Autorizante = new BEAutorizante();
                    beAplicacionAutorizanteHistorico.Autorizante.IdAutorizante = Convert.ToInt32(dr["IdAutorizante"].ToString());
                    beAplicacionAutorizanteHistorico.Autorizante.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAplicacionAutorizanteHistorico.Autorizante.Persona = new BEPersona();
                    beAplicacionAutorizanteHistorico.Autorizante.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beAplicacionAutorizanteHistorico.Autorizante.Persona.Nombres = dr["Nombres"].ToString();
                    beAplicacionAutorizanteHistorico.Autorizante.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beAplicacionAutorizanteHistorico.Autorizante.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();

                    beAplicacionAutorizanteHistorico.Autorizante.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beAplicacionAutorizanteHistorico.Autorizante.Persona.Correo = dr["Correo"].ToString();
                    
                    beAplicacionAutorizanteHistorico.Autorizante.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAplicacionAutorizanteHistorico.Autorizante.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
             
                    beAplicacionAutorizanteHistorico.Accion = dr["Accion"].ToString();

                    beAplicacionAutorizanteHistorico.UsuarioModificacion = dr["UsuarioModificacion"].ToString();
                    beAplicacionAutorizanteHistorico.FechaModificacion = Convert.ToDateTime(dr["FechaModificacion"]);
                    beAplicacionAutorizanteHistorico.RutaEvidencia = dr["RutaEvidencia"].ToString();
                    beAplicacionAutorizanteHistorico.Comentario = dr["Comentario"].ToString();

                    beAplicacionAutorizanteHistoricoList.Add(beAplicacionAutorizanteHistorico);
                }
            }
            return beAplicacionAutorizanteHistoricoList;
        }
        #endregion

    }
}
