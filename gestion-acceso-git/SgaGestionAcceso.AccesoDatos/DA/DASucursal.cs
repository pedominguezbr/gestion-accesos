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
    public class DASucursal
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DASucursal()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarSucursal(BESucursal beSucursal)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Sucursal_Insertar");
            db.AddOutParameter(cmd, "IdSucursal", DbType.Int32, beSucursal.IdSucursal);
            db.AddInParameter(cmd, "NombreSucursal", DbType.String, beSucursal.Nombre);
            db.AddInParameter(cmd, "DireccionSucursal", DbType.String, beSucursal.Direccion);
            db.AddInParameter(cmd, "IdAgencia", DbType.Int32, beSucursal.Agencia.IdAgencia);
            db.AddInParameter(cmd, "Estado", DbType.Boolean, beSucursal.EstadoActivo);
            db.AddInParameter(cmd, "CodUbigeo", DbType.String, beSucursal.Ubigeo.Codigo);

            db.ExecuteNonQuery(cmd);

            beSucursal.IdSucursal = Int32.Parse(db.GetParameterValue(cmd, "IdSucursal").ToString());

            if (beSucursal.IdSucursal == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool ActualizarSucursal(BESucursal beSucursal)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Sucursal_Actualizar");
            db.AddInParameter(cmd, "IdSucursal", DbType.Int32, beSucursal.IdSucursal);
            db.AddInParameter(cmd, "NombreSucursal", DbType.String, beSucursal.Nombre);
            db.AddInParameter(cmd, "DireccionSucursal", DbType.String, beSucursal.Direccion);
            db.AddInParameter(cmd, "IdAgencia", DbType.Int32, beSucursal.Agencia.IdAgencia);
            db.AddInParameter(cmd, "Estado", DbType.Boolean, beSucursal.EstadoActivo);
            db.AddInParameter(cmd, "CodUbigeo", DbType.String, beSucursal.Ubigeo.Codigo);

            db.ExecuteNonQuery(cmd);
            return true;
        }

        public bool EliminarSucursal(int idSucursal)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Sucursal_Eliminar");
            db.AddInParameter(cmd, "IdSucursal", DbType.Int32, idSucursal);
            db.ExecuteNonQuery(cmd);
            return true;
        }

        public BESucursalList ListarSucursal(int idAgencia)
        {
            BESucursalList listaBeSucursal = null;
            BESucursal beSucursal = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Sucursal_Listar");
            db.AddInParameter(cmd, "IdAgencia", DbType.Int32, idAgencia);
            listaBeSucursal = new BESucursalList();

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    beSucursal = new BESucursal();
                    beSucursal.IdSucursal = Convert.ToInt32(dr["IdSucursal"].ToString());
                    beSucursal.Nombre = dr["NombreSucursal"].ToString();
                    beSucursal.Direccion = dr["DireccionSucursal"].ToString();

                    beSucursal.Agencia = new BEAgencia();
                    beSucursal.Agencia.IdAgencia = Convert.ToInt32(dr["IdAgencia"].ToString());
                    beSucursal.EstadoActivo = Convert.ToBoolean(dr["Estado"]);


                    beSucursal.Ubigeo = new BEUbigeo();
                    beSucursal.Ubigeo.Codigo = dr["CodUbigeo"].ToString();
                    beSucursal.Ubigeo.Pais = dr["Pais"].ToString();
                    beSucursal.Ubigeo.Departamento = dr["Departamento"].ToString();
                    beSucursal.Ubigeo.Provincia = dr["Provincia"].ToString();
                    beSucursal.Ubigeo.Distrito = dr["Distrito"].ToString();
                    beSucursal.Ubigeo.codDepartamento = dr["codDepartamento"].ToString();
                    beSucursal.Ubigeo.codProvincia = dr["codProvincia"].ToString();
                    beSucursal.Ubigeo.codDistrito = dr["codDistrito"].ToString();
                    beSucursal.Ubigeo.EstadoActivo = Convert.ToBoolean(dr["EstadoUbigeo"]);
                    listaBeSucursal.Add(beSucursal);
                }
            }

            return listaBeSucursal;
        }
        public BESucursal ObtenerSucursal(int idSucursal)
        {
            BESucursal beSucursal = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Sucursal_Obtener");
            db.AddInParameter(cmd, "IdSucursal", DbType.Int32, idSucursal);
            //db.AddInParameter(cmd, "IdAgencia", DbType.Int32, idSucursal);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beSucursal = new BESucursal();
                    beSucursal.IdSucursal = Convert.ToInt32(dr["IdSucursal"].ToString());
                    beSucursal.Nombre = dr["NombreSucursal"].ToString();
                    beSucursal.Direccion = dr["DireccionSucursal"].ToString();

                    beSucursal.Agencia = new BEAgencia();
                    beSucursal.Agencia.IdAgencia = Convert.ToInt32(dr["IdAgencia"].ToString());
                    beSucursal.EstadoActivo = Convert.ToBoolean(dr["Estado"]);

                    beSucursal.Ubigeo = new BEUbigeo();
                    beSucursal.Ubigeo.Codigo = dr["CodUbigeo"].ToString();
                    beSucursal.Ubigeo.Pais = dr["Pais"].ToString();
                    beSucursal.Ubigeo.Departamento = dr["Departamento"].ToString();
                    beSucursal.Ubigeo.Provincia = dr["Provincia"].ToString();
                    beSucursal.Ubigeo.Distrito = dr["Distrito"].ToString();
                    beSucursal.Ubigeo.codDepartamento = dr["codDepartamento"].ToString();
                    beSucursal.Ubigeo.codProvincia = dr["codProvincia"].ToString();
                    beSucursal.Ubigeo.codDistrito = dr["codDistrito"].ToString();
                    beSucursal.Ubigeo.EstadoActivo = Convert.ToBoolean(dr["EstadoUbigeo"]);
                }
            }
            return beSucursal;
        }

        #endregion
    }
}
