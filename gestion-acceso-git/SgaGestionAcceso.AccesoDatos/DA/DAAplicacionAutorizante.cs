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
    public class DAAplicacionAutorizante
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAAplicacionAutorizante()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarAplicacionAutorizante(BEAplicacionAutorizante beAplicacionAutorizante)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_AplicacionAutorizante_Insertar");
            db.AddOutParameter(cmd, "IdAplicacionAutorizante", DbType.Int32, beAplicacionAutorizante.IdAplicacionAutorizante);
            db.AddInParameter(cmd, "IdAplicacion", DbType.Int32, beAplicacionAutorizante.Aplicacion.IdAplicacion);
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, beAplicacionAutorizante.Autorizante.IdAutorizante);

            db.AddInParameter(cmd, "EstadoActivo", DbType.Boolean, beAplicacionAutorizante.Estado);
            db.AddInParameter(cmd, "FechaCreacion", DbType.DateTime, beAplicacionAutorizante.FechaCreacion);
            db.AddInParameter(cmd, "UsuarioCreacion", DbType.String, beAplicacionAutorizante.UsuarioCreacion);
            db.AddInParameter(cmd, "RutaEvidencia", DbType.String, beAplicacionAutorizante.RutaEvidencia);
            db.AddInParameter(cmd, "Comentario", DbType.String, beAplicacionAutorizante.Comentario);

            db.ExecuteNonQuery(cmd);

            beAplicacionAutorizante.IdAplicacionAutorizante = Int32.Parse(db.GetParameterValue(cmd, "IdAplicacionAutorizante").ToString());

            if (beAplicacionAutorizante.IdAplicacionAutorizante == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool ActualizarAplicacionAutorizante(BEAplicacionAutorizante beAplicacionAutorizante)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_AplicacionAutorizante_Actualizar");
            db.AddInParameter(cmd, "IdAplicacionAutorizante", DbType.Int32, beAplicacionAutorizante.IdAplicacionAutorizante);
            db.AddInParameter(cmd, "IdAplicacion", DbType.Int32, beAplicacionAutorizante.Aplicacion.IdAplicacion);
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, beAplicacionAutorizante.Autorizante.IdAutorizante);

            db.AddInParameter(cmd, "EstadoActivo", DbType.Boolean, beAplicacionAutorizante.Estado);
            db.AddInParameter(cmd, "FechaCreacion", DbType.DateTime, beAplicacionAutorizante.FechaCreacion);
            db.AddInParameter(cmd, "UsuarioCreacion", DbType.String, beAplicacionAutorizante.UsuarioCreacion);
            db.AddInParameter(cmd, "RutaEvidencia", DbType.String, beAplicacionAutorizante.RutaEvidencia);
            db.AddInParameter(cmd, "Comentario", DbType.String, beAplicacionAutorizante.Comentario);

            db.ExecuteNonQuery(cmd);
            return true;
        }

        public bool EliminarAplicacionAutorizante(int idAplicacionAutorizante)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_AplicacionAutorizante_Eliminar");
            db.AddInParameter(cmd, "IdAplicacionAutorizante", DbType.Int32, idAplicacionAutorizante);
            db.ExecuteNonQuery(cmd);
            return true;
        }
       
        public BEAplicacionAutorizante ObtenerAplicacionAutorizante(int idAplicacionAutorizante)
        {
            BEAplicacionAutorizante beAplicacionAutorizante = null;

            DbCommand cmd = db.GetStoredProcCommand("up_AplicacionAutorizante_Obtener");
            db.AddInParameter(cmd, "IdAplicacionAutorizante", DbType.Int32, idAplicacionAutorizante);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    beAplicacionAutorizante = new BEAplicacionAutorizante();
                    beAplicacionAutorizante.IdAplicacionAutorizante = Convert.ToInt32(dr["IdAplicacionAutorizante"].ToString());
                    beAplicacionAutorizante.Aplicacion = new BEAplicacion();
                    beAplicacionAutorizante.Aplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());
                    beAplicacionAutorizante.Aplicacion.Nombre = dr["NombreAplicacion"].ToString();

                    beAplicacionAutorizante.Autorizante = new BEAutorizante();
                    beAplicacionAutorizante.Autorizante.IdAutorizante = Convert.ToInt32(dr["IdAutorizante"].ToString());

                    beAplicacionAutorizante.Estado = Convert.ToBoolean(dr["EstadoActivo"]);

                    beAplicacionAutorizante.UsuarioCreacion = dr["UsuarioCreacion"].ToString();
                    beAplicacionAutorizante.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);

                    beAplicacionAutorizante.Autorizante.Persona = new BEPersona();
                    beAplicacionAutorizante.Autorizante.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beAplicacionAutorizante.Autorizante.Persona.Nombres = dr["Nombres"].ToString();
                    beAplicacionAutorizante.Autorizante.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beAplicacionAutorizante.Autorizante.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();

                    beAplicacionAutorizante.Autorizante.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beAplicacionAutorizante.Autorizante.Persona.Correo = dr["Correo"].ToString();
                    beAplicacionAutorizante.Autorizante.Persona.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    beAplicacionAutorizante.Autorizante.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAplicacionAutorizante.Autorizante.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAplicacionAutorizante.Autorizante.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    beAplicacionAutorizante.RutaEvidencia = dr["RutaEvidencia"].ToString();
                    beAplicacionAutorizante.Comentario = dr["Comentario"].ToString();
                }
            }
            return beAplicacionAutorizante;
        }

        public BEAplicacionAutorizanteList BuscarAplicacionAutorizante(int idAplicacion, int idAutorizante)
        {
            BEAplicacionAutorizante beAplicacionAutorizante = null;
            BEAplicacionAutorizanteList beAplicacionAutorizantelist = null;

            DbCommand cmd = db.GetStoredProcCommand("up_AplicacionAutorizante_Buscar");
            db.AddInParameter(cmd, "IdAplicacion", DbType.Int32, idAplicacion);
            db.AddInParameter(cmd, "IdAutorizante", DbType.Int32, idAutorizante);

            

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                beAplicacionAutorizantelist = new BEAplicacionAutorizanteList();
                while (dr.Read())
                {
                    beAplicacionAutorizante = new BEAplicacionAutorizante();
                    beAplicacionAutorizante.IdAplicacionAutorizante = Convert.ToInt32(dr["IdAplicacionAutorizante"].ToString());
                    beAplicacionAutorizante.Aplicacion = new BEAplicacion();
                    beAplicacionAutorizante.Aplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());
                    beAplicacionAutorizante.Aplicacion.Nombre = dr["NombreAplicacion"].ToString();

                    beAplicacionAutorizante.Autorizante = new BEAutorizante();
                    beAplicacionAutorizante.Autorizante.IdAutorizante = Convert.ToInt32(dr["IdAutorizante"].ToString());
                  
                    beAplicacionAutorizante.Estado = Convert.ToBoolean(dr["EstadoActivo"]);

                    beAplicacionAutorizante.UsuarioCreacion = dr["UsuarioCreacion"].ToString();
                    beAplicacionAutorizante.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);

                    beAplicacionAutorizante.Autorizante.Persona = new BEPersona();
                    beAplicacionAutorizante.Autorizante.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beAplicacionAutorizante.Autorizante.Persona.Nombres = dr["Nombres"].ToString();
                    beAplicacionAutorizante.Autorizante.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beAplicacionAutorizante.Autorizante.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();

                    beAplicacionAutorizante.Autorizante.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beAplicacionAutorizante.Autorizante.Persona.Correo = dr["Correo"].ToString();
                    beAplicacionAutorizante.Autorizante.Persona.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    beAplicacionAutorizante.Autorizante.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAplicacionAutorizante.Autorizante.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAplicacionAutorizante.Autorizante.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAplicacionAutorizante.RutaEvidencia = dr["RutaEvidencia"].ToString();
                    beAplicacionAutorizante.Comentario = dr["Comentario"].ToString();

                    beAplicacionAutorizantelist.Add(beAplicacionAutorizante);
                }
            }
            return beAplicacionAutorizantelist;
        }
        #endregion
    }
}
