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
    public class DAEstado
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAEstado()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public BEEstadoList ListarEstado(int tipoEstado = 1)
        {
            BEEstadoList listaBeEstado = null;
            BEEstado beEstado = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Estado_Listar");
            db.AddInParameter(cmd, "TipoEstado", DbType.Int32, tipoEstado);

            listaBeEstado = new BEEstadoList();

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    beEstado = new BEEstado();
                    beEstado.IdEstado = Convert.ToInt32(dr["IdEstado"].ToString());
                    beEstado.Nombre = dr["NombreEstado"].ToString();

                    beEstado.Estado = Convert.ToBoolean(dr["EstadoActivo"]);
                    
                    listaBeEstado.Add(beEstado);
                }
            }

            return listaBeEstado;
        }
        #endregion
    }
}
