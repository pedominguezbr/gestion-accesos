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
    public class DAUsuarioObservado
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAUsuarioObservado()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public BEUsuarioObservadoList BuscarUsuarioObservados(int idAplicacion, string DNI)
        {
            BEUsuarioObservadoList listabeUsuarioObservado = null;
            BEUsuarioObservado beUsuarioObservado = null;

            DbCommand cmd = db.GetStoredProcCommand("up_UsuarioObservado_Buscar");
            db.AddInParameter(cmd, "IdAplicacion", DbType.Int32, idAplicacion);
            db.AddInParameter(cmd, "DocumentoIdentidad", DbType.String, DNI);
            listabeUsuarioObservado = new BEUsuarioObservadoList();

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    beUsuarioObservado = new BEUsuarioObservado();
                    beUsuarioObservado.IdUsuarioObservado = Convert.ToInt32(dr["IdUsuarioObservado"].ToString());

                    beUsuarioObservado.Aplicacion = new BEAplicacion();
                    beUsuarioObservado.Aplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());
                    beUsuarioObservado.Aplicacion.Nombre = dr["NombreAplicacion"].ToString();

                    beUsuarioObservado.Persona = new BEPersona();
                    beUsuarioObservado.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beUsuarioObservado.Persona.Nombres = dr["Nombres"].ToString();
                    beUsuarioObservado.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beUsuarioObservado.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beUsuarioObservado.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beUsuarioObservado.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beUsuarioObservado.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());


                    beUsuarioObservado.FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"]);
                    beUsuarioObservado.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                    listabeUsuarioObservado.Add(beUsuarioObservado);
                }
            }
            return listabeUsuarioObservado;
        }
        #endregion
    }
}
