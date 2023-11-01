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
    public class DADetalleGenAgenValidador
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DADetalleGenAgenValidador()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarDetalle(BEDetalleGenAgenValidador beDetalleGenAgenValidador)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_DetalleGenAgenValidador_Insertar");
            db.AddOutParameter(cmd, "IdDetAgenValidador", DbType.Int32, beDetalleGenAgenValidador.IdDetAgenValidador);
            db.AddInParameter(cmd, "IdGenAgenteValidador", DbType.Int32, beDetalleGenAgenValidador.IdGenAgenteValidador);
            db.AddInParameter(cmd, "CodGenerado", DbType.String, beDetalleGenAgenValidador.CodGenerado);
            db.AddInParameter(cmd, "Activador", DbType.String, beDetalleGenAgenValidador.Activador);
            db.AddInParameter(cmd, "FechaCaducidad", DbType.DateTime, beDetalleGenAgenValidador.FechaCaducidad);
            db.AddInParameter(cmd, "Estado", DbType.Int32, beDetalleGenAgenValidador.Estado.IdEstado);
            db.AddInParameter(cmd, "RutaValidador", DbType.String, beDetalleGenAgenValidador.RutaValidador);
            db.AddInParameter(cmd, "NombreValidador", DbType.String, beDetalleGenAgenValidador.NombreValidador);

            db.ExecuteNonQuery(cmd);

            beDetalleGenAgenValidador.IdDetAgenValidador = Int32.Parse(db.GetParameterValue(cmd, "IdDetAgenValidador").ToString());

            if (beDetalleGenAgenValidador.IdDetAgenValidador == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public BEDetalleGenAgenValidadorList ListarDetalle(int IdGenAgenteValidador)
        {
            BEDetalleGenAgenValidadorList beDetalleGenAgenValidadorList = null;
            BEDetalleGenAgenValidador beDetalleGenAgenValidador = null;

            DbCommand cmd = db.GetStoredProcCommand("up_DetalleGenAgenValidador_Listar");
            db.AddInParameter(cmd, "IdGenAgenteValidador", DbType.Int32, IdGenAgenteValidador);
            beDetalleGenAgenValidadorList = new BEDetalleGenAgenValidadorList();
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beDetalleGenAgenValidador = new BEDetalleGenAgenValidador();
                    beDetalleGenAgenValidador.IdGenAgenteValidador = Convert.ToInt32(dr["IdGenAgenteValidador"].ToString());
                    beDetalleGenAgenValidador.IdDetAgenValidador = Convert.ToInt32(dr["IdDetAgenValidador"].ToString());

                    beDetalleGenAgenValidador.CodGenerado = dr["CodGenerado"].ToString();
                    beDetalleGenAgenValidador.Activador = dr["Activador"].ToString();
                    beDetalleGenAgenValidador.RutaValidador = dr["RutaValidador"].ToString();
                    beDetalleGenAgenValidador.NombreValidador = dr["NombreValidador"].ToString();

                    beDetalleGenAgenValidador.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    beDetalleGenAgenValidador.FechaCaducidad = Convert.ToDateTime(dr["FechaCaducidad"]);

                    beDetalleGenAgenValidador.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                    beDetalleGenAgenValidador.Estado = new BEEstado();
                    beDetalleGenAgenValidador.Estado.IdEstado = Convert.ToInt32(dr["Estado"].ToString());
                    beDetalleGenAgenValidador.Estado.Nombre = dr["NombreEstado"].ToString();

                    beDetalleGenAgenValidadorList.Add(beDetalleGenAgenValidador);
                }
            }

            return beDetalleGenAgenValidadorList;
        }

        public BEDetalleGenAgenValidador ObtenerDetalle(int IdDetGenAgenteValidador)
        {

            BEDetalleGenAgenValidador beDetalleGenAgenValidador = null;

            DbCommand cmd = db.GetStoredProcCommand("up_DetalleGenAgenValidador_Obtener");
            db.AddInParameter(cmd, "IdDetAgenValidador", DbType.Int32, IdDetGenAgenteValidador);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beDetalleGenAgenValidador = new BEDetalleGenAgenValidador();
                    beDetalleGenAgenValidador.IdGenAgenteValidador = Convert.ToInt32(dr["IdGenAgenteValidador"].ToString());
                    beDetalleGenAgenValidador.IdDetAgenValidador = Convert.ToInt32(dr["IdDetAgenValidador"].ToString());

                    beDetalleGenAgenValidador.CodGenerado = dr["CodGenerado"].ToString();
                    beDetalleGenAgenValidador.Activador = dr["Activador"].ToString();
                    beDetalleGenAgenValidador.RutaValidador = dr["RutaValidador"].ToString();
                    beDetalleGenAgenValidador.NombreValidador = dr["NombreValidador"].ToString();

                    beDetalleGenAgenValidador.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);
                    beDetalleGenAgenValidador.FechaCaducidad = Convert.ToDateTime(dr["FechaCaducidad"]);

                    beDetalleGenAgenValidador.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                    beDetalleGenAgenValidador.Estado = new BEEstado();
                    beDetalleGenAgenValidador.Estado.IdEstado = Convert.ToInt32(dr["Estado"].ToString());
                    beDetalleGenAgenValidador.Estado.Nombre = dr["NombreEstado"].ToString();


                }
            }

            return beDetalleGenAgenValidador;
        }
        #endregion
    }
}
