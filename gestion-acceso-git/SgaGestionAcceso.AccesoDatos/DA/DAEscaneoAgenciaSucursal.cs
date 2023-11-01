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
    public class DAEscaneoAgenciaSucursal
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAEscaneoAgenciaSucursal()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public BEEscaneoAgenciaSucursalList BuscarEscaneoAgenciaSucursal(DateTime fechaInicio, DateTime fechaFin, int idAgencia, int idSucursal, string idEstado)
        {
            BEEscaneoAgenciaSucursal beEscaneoAgenciaSucursal = null;
            BEEscaneoAgenciaSucursalList beEscaneoAgenciaSucursalList = new BEEscaneoAgenciaSucursalList();

            DbCommand cmd = db.GetStoredProcCommand("up_EscaneoAgenciaSucursal_Buscar");
            db.AddInParameter(cmd, "IdAgencia ", DbType.Int32, idAgencia);
            db.AddInParameter(cmd, "IdSucursal ", DbType.Int32, idSucursal);
            db.AddInParameter(cmd, "Estado ", DbType.String, idEstado);

            if (fechaInicio != DateTime.MinValue)
            {
                db.AddInParameter(cmd, "FechaInicio", DbType.DateTime, fechaInicio);
            }
            if (fechaFin != DateTime.MinValue)
            {
                db.AddInParameter(cmd, "FechaFin", DbType.DateTime, fechaFin);
            }

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beEscaneoAgenciaSucursal = new BEEscaneoAgenciaSucursal();

                    if (dr["FechaRegistro"] == DBNull.Value)
                    {
                        beEscaneoAgenciaSucursal.FechaRegistro = DateTime.MinValue;
                    }
                    else
                    {
                        beEscaneoAgenciaSucursal.FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"]);
                    }

                    beEscaneoAgenciaSucursal.NroSolicitud = dr["NroSolicitud"].ToString();
                    beEscaneoAgenciaSucursal.NombreAgencia = dr["NombreAgencia"].ToString();
                    beEscaneoAgenciaSucursal.NombreSucursal = dr["NombreSucursal"].ToString();
                    beEscaneoAgenciaSucursal.NumEquipos = Convert.ToInt32(dr["NumEquipos"].ToString());
                    beEscaneoAgenciaSucursal.NumEquiposEsc = Convert.ToInt32(dr["NumEquiposEsc"].ToString());
                    beEscaneoAgenciaSucursal.EstadoVal = dr["EstadoVal"].ToString();
                    
                    //beEscaneoAgenciaSucursal.Estado.IdEstado = Convert.ToInt32(dr["Estado"].ToString());
                    //beEscaneoAgenciaSucursal.Estado.Nombre = dr["NombreEstado"].ToString();
                    //
                    //beEscaneoAgenciaSucursal.Agencia = new BEAgencia();
                    //beEscaneoAgenciaSucursal.Agencia.IdAgencia = Convert.ToInt32(dr["IdAgencia"].ToString());
                    //beEscaneoAgenciaSucursal.Agencia.Nombre = dr["NombreAgencia"].ToString();
                    //
                    //beEscaneoAgenciaSucursal.Sucursal = new BESucursal();
                    //beEscaneoAgenciaSucursal.Sucursal.IdSucursal = Convert.ToInt32(dr["IdSucursal"].ToString());
                    //beEscaneoAgenciaSucursal.Sucursal.Nombre = dr["NombreSucursal"].ToString();
                    //beEscaneoAgenciaSucursal.Sucursal.Direccion = dr["DireccionSucursal"].ToString();
                    //
                    //beEscaneoAgenciaSucursal.NumEquipos = Convert.ToInt32(dr["NumEquipos"].ToString());
                    //beEscaneoAgenciaSucursal.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);
                    //
                    beEscaneoAgenciaSucursalList.Add(beEscaneoAgenciaSucursal);
                }
            }

            return beEscaneoAgenciaSucursalList;
        }

        public BEEscaneoAgenteDetalleList ObtenerEscaneoAgenciaSucursal(string idSolicitud)
        {
            BEEscaneoAgenteDetalle BEEscaneoAgenteDetalle = null;
            BEEscaneoAgenteDetalleList BEEscaneoAgenteDetalleList = new BEEscaneoAgenteDetalleList();

            DbCommand cmd = db.GetStoredProcCommand("up_EscaneoAgenciaSucursal_Obtener");
            db.AddInParameter(cmd, "idSolicitud", DbType.String, idSolicitud);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    BEEscaneoAgenteDetalle = new BEEscaneoAgenteDetalle(); 
                    BEEscaneoAgenteDetalle.fsolicitud =Convert.ToDateTime(dr["fsolicitud"].ToString());
                    BEEscaneoAgenteDetalle.idagente = dr["idagente"].ToString();
                    BEEscaneoAgenteDetalle.estado = dr["estado"].ToString() == "False" ? "NO VALIDADO" : "VALIDADO";
                    BEEscaneoAgenteDetalle.idSolicitud = dr["idSolicitud"].ToString();
                    BEEscaneoAgenteDetalleList.Add(BEEscaneoAgenteDetalle);
                }
            }

            return BEEscaneoAgenteDetalleList;
        }
        #endregion
    }
}
