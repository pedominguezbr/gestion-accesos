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
    public class DAPuesto
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAPuesto()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public BEPuestoList ListarPuesto(int idAplicacion)
        {
            BEPuestoList listaBePuesto = null;
            BEPuesto bePuesto = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Puesto_Listar");
            db.AddInParameter(cmd, "IdAplicacion", DbType.Int32, idAplicacion);

            listaBePuesto = new BEPuestoList();

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    bePuesto = new BEPuesto();
                    bePuesto.IdPuesto = Convert.ToInt32(dr["IdPuesto"].ToString());
                    bePuesto.Nombre = dr["NombrePuesto"].ToString();

                    bePuesto.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    bePuesto.UsuarioCreacion = new BEUsuarioSistema();
                    bePuesto.UsuarioCreacion.CodUsuario = dr["UsuarioCreacion"].ToString();
                    bePuesto.Responsable = new BEPersona();
                    bePuesto.Responsable.IdPersona = Convert.ToInt32(dr["IdResponsable"].ToString());
                    bePuesto.FlCritico = dr["Fl_Critico"].ToString();
                    bePuesto.Estado = Convert.ToBoolean(dr["Estado"]);
                    bePuesto.Aplicacion = new BEAplicacion();
                    bePuesto.Aplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());
                    listaBePuesto.Add(bePuesto);
                }
            }

            return listaBePuesto;
        }

        public BEPuesto ObtenerPuesto(int idPuesto)
        {
            BEPuesto bePuesto = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Puesto_Obtener");
            db.AddInParameter(cmd, "IdPuesto", DbType.Int32, idPuesto);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    bePuesto = new BEPuesto();
                    bePuesto.IdPuesto = Convert.ToInt32(dr["IdPuesto"].ToString());
                    bePuesto.Nombre = dr["NombrePuesto"].ToString();

                    bePuesto.FechaCreacion = Convert.ToDateTime(dr["Area_FechaCreacion"]);
                    bePuesto.UsuarioCreacion = new BEUsuarioSistema();
                    bePuesto.UsuarioCreacion.CodUsuario = dr["UsuarioCreacion"].ToString();
                    bePuesto.Responsable.IdPersona = Convert.ToInt32(dr["IdResponsable"].ToString());
                    bePuesto.FlCritico = dr["Fl_Critico"].ToString();
                    bePuesto.Estado = Convert.ToBoolean(dr["Estado"]);
                    bePuesto.Aplicacion = new BEAplicacion();
                    bePuesto.Aplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());
                }
            }

            return bePuesto;
        }

        #endregion

    }
}
