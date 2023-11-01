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
    public class DADetalleEscaneoValidador
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DADetalleEscaneoValidador()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public BEDetalleEscaneoValidadorList ListarDetalleEscaneoValidador(int IdEscaneoAgenciaSuc)
        {
            BEDetalleEscaneoValidadorList beDetalleEscaneoValidadorList = null;
            BEDetalleEscaneoValidador beDetalleEscaneoValidador = null;

            DbCommand cmd = db.GetStoredProcCommand("up_DetalleEscaneoValidador_Listar");
            db.AddInParameter(cmd, "IdEscaneoAgenciaSuc", DbType.Int32, IdEscaneoAgenciaSuc);
            beDetalleEscaneoValidadorList = new BEDetalleEscaneoValidadorList();
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beDetalleEscaneoValidador = new BEDetalleEscaneoValidador();
                    beDetalleEscaneoValidador.IdDetEscaneoValidacion = Convert.ToInt32(dr["IdDetEscaneoValidacion"].ToString());
                    beDetalleEscaneoValidador.IdEscaneoAgenciaSuc = Convert.ToInt32(dr["IdEscaneoAgenciaSuc"].ToString());

                    beDetalleEscaneoValidador.DetalleAgenValidador = new BEDetalleGenAgenValidador();
                    beDetalleEscaneoValidador.DetalleAgenValidador.IdDetAgenValidador = Convert.ToInt32(dr["IdDetAgenValidador"].ToString());
                    beDetalleEscaneoValidador.DetalleAgenValidador.CodGenerado = dr["CodGenerado"].ToString();
                    beDetalleEscaneoValidador.DetalleAgenValidador.Activador = dr["Activador"].ToString();

                    beDetalleEscaneoValidador.FechaHoraEscaneo = Convert.ToDateTime(dr["FechaHoraEscaneo"]);
                    beDetalleEscaneoValidador.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    beDetalleEscaneoValidador.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                    beDetalleEscaneoValidador.EstadoEscaneo = new BEEstado();
                    beDetalleEscaneoValidador.EstadoEscaneo.IdEstado = Convert.ToInt32(dr["EstadoEscaneo"].ToString());
                    beDetalleEscaneoValidador.EstadoEscaneo.Nombre = dr["NombreEstado"].ToString();

                    beDetalleEscaneoValidadorList.Add(beDetalleEscaneoValidador);
                }
            }

            return beDetalleEscaneoValidadorList;
        }

        public BEDetalleEscaneoValidador ObtenerDetalleEscaneoValidador(int idDetEscaneoValidacion)
        {
           
            BEDetalleEscaneoValidador beDetalleEscaneoValidador = null;

            DbCommand cmd = db.GetStoredProcCommand("up_DetalleEscaneoValidador_Obtener");
            db.AddInParameter(cmd, "IdDetEscaneoValidacion", DbType.Int32, idDetEscaneoValidacion);
          
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beDetalleEscaneoValidador = new BEDetalleEscaneoValidador();
                    beDetalleEscaneoValidador.IdDetEscaneoValidacion = Convert.ToInt32(dr["IdDetEscaneoValidacion"].ToString());
                    beDetalleEscaneoValidador.IdEscaneoAgenciaSuc = Convert.ToInt32(dr["IdEscaneoAgenciaSuc"].ToString());

                    beDetalleEscaneoValidador.DetalleAgenValidador = new BEDetalleGenAgenValidador();
                    beDetalleEscaneoValidador.DetalleAgenValidador.IdDetAgenValidador = Convert.ToInt32(dr["IdDetAgenValidador"].ToString());
                    beDetalleEscaneoValidador.DetalleAgenValidador.CodGenerado = dr["CodGenerado"].ToString();
                    beDetalleEscaneoValidador.DetalleAgenValidador.Activador = dr["Activador"].ToString();

                    beDetalleEscaneoValidador.FechaHoraEscaneo = Convert.ToDateTime(dr["FechaHoraEscaneo"]);
                    beDetalleEscaneoValidador.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    beDetalleEscaneoValidador.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                    beDetalleEscaneoValidador.EstadoEscaneo = new BEEstado();
                    beDetalleEscaneoValidador.EstadoEscaneo.IdEstado = Convert.ToInt32(dr["EstadoEscaneo"].ToString());
                    beDetalleEscaneoValidador.EstadoEscaneo.Nombre = dr["NombreEstado"].ToString();

                  
                }
            }

            return beDetalleEscaneoValidador;
        }
        #endregion
    }
}
