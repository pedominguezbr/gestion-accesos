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
    public class DAUsuario
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAUsuario()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public BEUsuarioSistema ValidarAcceso(string codUsuario)
        {
            BEUsuarioSistema beUsuarioSistema = null;

            DbCommand cmd = db.GetStoredProcCommand("up_UsuarioSistema_ObtenerUsuario");
            db.AddInParameter(cmd, "CodUsuario", DbType.String, codUsuario);
            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    beUsuarioSistema = new BEUsuarioSistema();
                    beUsuarioSistema.IdUsuario = Convert.ToInt32(dr["IdUsuario"].ToString());
                    beUsuarioSistema.CodUsuario = dr["CodUsuario"].ToString();
                    beUsuarioSistema.ClaveUsuario = dr["ClaveUsuario"].ToString();

                    beUsuarioSistema.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    beUsuarioSistema.EstadoActivo = Convert.ToBoolean(dr["Estado"]); beUsuarioSistema.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beUsuarioSistema.Persona = new BEPersona();
                    beUsuarioSistema.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());

                    beUsuarioSistema.Persona.Nombres = dr["Nombres"].ToString();
                    beUsuarioSistema.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beUsuarioSistema.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beUsuarioSistema.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beUsuarioSistema.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    beUsuarioSistema.Persona.DNI = dr["DocumentoIdentidad"].ToString();

                    beUsuarioSistema.Nombres = dr["Nombres"].ToString();
                    beUsuarioSistema.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beUsuarioSistema.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beUsuarioSistema.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beUsuarioSistema.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beUsuarioSistema.DNI = dr["DocumentoIdentidad"].ToString();
                }
            }

            return beUsuarioSistema;
        }

        public BEUsuarioSistemaList BuscarUsuario(BEUsuarioSistema beUsuarioSistemaIn)
        {
            BEUsuarioSistema beUsuarioSistema = null;
            BEUsuarioSistemaList beUsuarioSistemaList = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Usuario_Buscar");

            db.AddInParameter(cmd, "Nombres", DbType.String, beUsuarioSistemaIn.Persona.Nombres);
            db.AddInParameter(cmd, "ApePaterno", DbType.String, beUsuarioSistemaIn.Persona.ApellidoPaterno);
            db.AddInParameter(cmd, "ApeMaterno", DbType.String, beUsuarioSistemaIn.Persona.ApellidoMaterno);
            db.AddInParameter(cmd, "Codusuario", DbType.String, beUsuarioSistemaIn.CodUsuario);

            beUsuarioSistemaList = new BEUsuarioSistemaList();
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beUsuarioSistema = new BEUsuarioSistema();
                    beUsuarioSistema.IdUsuario = Convert.ToInt32(dr["IdUsuario"].ToString());
                    beUsuarioSistema.CodUsuario = dr["CodUsuario"].ToString();
                    beUsuarioSistema.Persona = new BEPersona();
                    beUsuarioSistema.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beUsuarioSistema.Persona.Nombres = dr["Nombres"].ToString();
                    beUsuarioSistema.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beUsuarioSistema.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();

                    beUsuarioSistema.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beUsuarioSistema.Persona.Correo = dr["Correo"].ToString();
                    beUsuarioSistema.Persona.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    beUsuarioSistema.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beUsuarioSistema.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    beUsuarioSistema.Persona.Estado = Convert.ToBoolean(dr["Estado"]);
                    beUsuarioSistema.EstadoActivo = Convert.ToBoolean(dr["UsuarioEstado"]);
                    beUsuarioSistema.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);

                    beUsuarioSistemaList.Add(beUsuarioSistema);
                }
            }

            return beUsuarioSistemaList;
        }

        public BEUsuarioSistema ObtenerUsuario(int idUsuario, int idPersona)
        {
            BEUsuarioSistema beUsuarioSistema = null;


            DbCommand cmd = db.GetStoredProcCommand("up_Usuario_Obtener_Permiso");

            db.AddInParameter(cmd, "IdUsuario", DbType.Int32, idUsuario);
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, idPersona);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beUsuarioSistema = new BEUsuarioSistema();
                    beUsuarioSistema.IdUsuario = Convert.ToInt32(dr["IdUsuario"].ToString());
                    beUsuarioSistema.CodUsuario = dr["CodUsuario"].ToString();
                    beUsuarioSistema.ClaveUsuario = dr["ClaveUsuario"].ToString();
                    beUsuarioSistema.Persona = new BEPersona();
                    beUsuarioSistema.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beUsuarioSistema.Persona.Nombres = dr["Nombres"].ToString();
                    beUsuarioSistema.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beUsuarioSistema.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();

                    beUsuarioSistema.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beUsuarioSistema.Persona.Correo = dr["Correo"].ToString();
                    beUsuarioSistema.Persona.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    beUsuarioSistema.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beUsuarioSistema.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    beUsuarioSistema.Persona.Estado = Convert.ToBoolean(dr["Estado"]);
                    beUsuarioSistema.EstadoActivo = Convert.ToBoolean(dr["UsuarioEstado"]);
                    beUsuarioSistema.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);

                }
            }

            return beUsuarioSistema;
        }

        public bool EliminarUsuario(int idUsuario, ref int codigoMensaje)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Usuario_Eliminar");
            db.AddInParameter(cmd, "IntIdusuario", DbType.Int32, idUsuario);
            db.AddOutParameter(cmd, "IntCodigoMensaje", DbType.Int16, 0);
            db.ExecuteNonQuery(cmd);

            if (db.GetParameterValue(cmd, "IntCodigoMensaje") != null && db.GetParameterValue(cmd, "IntCodigoMensaje") != DBNull.Value)
            {
                codigoMensaje = Convert.ToInt16(db.GetParameterValue(cmd, "IntCodigoMensaje").ToString());
            }

            return true;
        }

        public bool InsertarUsuario(BEUsuarioSistema beUsuarioSistema)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_UsuarioSistema_Insertar");
            db.AddOutParameter(cmd, "IdUsuario", DbType.Int32, beUsuarioSistema.IdUsuario);
            db.AddInParameter(cmd, "CodUsuario", DbType.String, beUsuarioSistema.CodUsuario);
            db.AddInParameter(cmd, "ClaveUsuario", DbType.String, beUsuarioSistema.ClaveUsuario);
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, beUsuarioSistema.IdPersona);
            db.AddInParameter(cmd, "Estado", DbType.Boolean, beUsuarioSistema.EstadoActivo);

            db.ExecuteNonQuery(cmd);

            beUsuarioSistema.IdUsuario = Int32.Parse(db.GetParameterValue(cmd, "IdUsuario").ToString());

            if (beUsuarioSistema.IdUsuario == -1)
            { return false; }
            else
            { return true; }
        }

        public bool ActualizarUsuario(BEUsuarioSistema beUsuarioSistema)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_UsuarioSistema_Actualizar");
            db.AddInParameter(cmd, "IdUsuario", DbType.Int32, beUsuarioSistema.IdUsuario);
            db.AddInParameter(cmd, "CodUsuario", DbType.String, beUsuarioSistema.Nombres);
            db.AddInParameter(cmd, "ClaveUsuario", DbType.String, beUsuarioSistema.ClaveUsuario);
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, beUsuarioSistema.IdPersona);
            db.AddInParameter(cmd, "Estado", DbType.Boolean, beUsuarioSistema.EstadoActivo);

            db.ExecuteNonQuery(cmd);

            
           
            return true; 
        }

        #endregion
    }
}
