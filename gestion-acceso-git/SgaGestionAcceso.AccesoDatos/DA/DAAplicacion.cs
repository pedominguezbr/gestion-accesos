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
    public class DAAplicacion
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAAplicacion()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos

        public BEAplicacionList ListarAplicacion()
        {
            BEAplicacionList listaBeAplicacion = null;
            BEAplicacion beAplicacion = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Aplicacion_Listar");

            listaBeAplicacion = new BEAplicacionList();

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    beAplicacion = new BEAplicacion();
                    beAplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());
                    beAplicacion.Nombre = dr["NombreAplicacion"].ToString();

                    beAplicacion.UsuarioCreacion = dr["UsuarioCreacion"].ToString();
                    beAplicacion.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);

                    beAplicacion.Estado = Convert.ToBoolean(dr["Estado"]);


                    listaBeAplicacion.Add(beAplicacion);
                }
            }

            return listaBeAplicacion;
        }

        public BEAplicacion ObtenerAplicacion(int idAplicacion)
        {

            BEAplicacion beAplicacion = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Aplicacion_Obtener");
            db.AddInParameter(cmd, "IdAplicacion", DbType.Int32, idAplicacion);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beAplicacion = new BEAplicacion();
                    beAplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());
                    beAplicacion.Nombre = dr["NombreAplicacion"].ToString();

                    beAplicacion.UsuarioCreacion = dr["UsuarioCreacion"].ToString();
                    beAplicacion.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);

                    beAplicacion.Estado = Convert.ToBoolean(dr["Estado"]);

                }
            }

            return beAplicacion;
        }
        #endregion
    }
}
