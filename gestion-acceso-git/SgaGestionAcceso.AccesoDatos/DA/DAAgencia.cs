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
    public class DAAgencia
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAAgencia()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarAgencia(BEAgencia beAgencia)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Agencia_Insertar");
            db.AddOutParameter(cmd, "IdAgencia", DbType.Int32, beAgencia.IdAgencia);
            db.AddInParameter(cmd, "NombreAgencia", DbType.String, beAgencia.Nombre);
            db.AddInParameter(cmd, "IdRepresentante", DbType.Int32, beAgencia.RepresentanteLegal.IdPersona);
            db.AddInParameter(cmd, "RUC", DbType.String, beAgencia.RUC);
            db.AddInParameter(cmd, "Nemotecnico_ag", DbType.String, beAgencia.NemonicoAg);

            db.ExecuteNonQuery(cmd);

            beAgencia.IdAgencia = Int32.Parse(db.GetParameterValue(cmd, "IdAgencia").ToString());

            if (beAgencia.IdAgencia == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool ActualizarAgencia(BEAgencia beAgencia)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Agencia_Actualizar");
            db.AddInParameter(cmd, "IdAgencia", DbType.Int32, beAgencia.IdAgencia);
            db.AddInParameter(cmd, "NombreAgencia", DbType.String, beAgencia.Nombre);
            db.AddInParameter(cmd, "IdRepresentante", DbType.Int32, beAgencia.RepresentanteLegal.IdPersona);
            db.AddInParameter(cmd, "RUC", DbType.String, beAgencia.RUC);
            db.AddInParameter(cmd, "Nemotecnico_ag", DbType.String, beAgencia.NemonicoAg);
            db.AddInParameter(cmd, "Estado", DbType.Boolean, beAgencia.Estado);

            db.ExecuteNonQuery(cmd);


            return true;
        }

        public bool EliminarAgencia(int idAgencia)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Agencia_Eliminar");
            db.AddInParameter(cmd, "IdAgencia", DbType.Int32, idAgencia);
            db.ExecuteNonQuery(cmd);
            return true;
        }

        public BEAgenciaList ListarAgencia()
        {
            BEAgenciaList listaBeAgencia = null;
            BEAgencia beAgencia = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Agencia_Listar");

            listaBeAgencia = new BEAgenciaList();

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beAgencia = new BEAgencia();
                    beAgencia.IdAgencia = Convert.ToInt32(dr["IdAgencia"].ToString());
                    beAgencia.Nombre = dr["NombreAgencia"].ToString();

                    beAgencia.RepresentanteLegal = new BERepresentateLegal();
                    beAgencia.RepresentanteLegal.IdPersona = Convert.ToInt32(dr["IdRepresentante"].ToString());
                    beAgencia.RUC = dr["RUC"].ToString();
                    beAgencia.NemonicoAg = dr["Nemotecnico_ag"].ToString();
                    beAgencia.Estado = Convert.ToBoolean(dr["Estado"]);

                    listaBeAgencia.Add(beAgencia);
                }
            }

            return listaBeAgencia;
        }

        public BEAgencia ObtenerAgencia(int idAgencia)
        {
            BEAgencia beAgencia = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Agencia_Obtener");
            db.AddInParameter(cmd, "IdAgencia", DbType.Int32, idAgencia);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beAgencia = new BEAgencia();

                    beAgencia.IdAgencia = Convert.ToInt32(dr["IdAgencia"].ToString());
                    beAgencia.Nombre = dr["NombreAgencia"].ToString();

                    beAgencia.RepresentanteLegal = new BERepresentateLegal();
                    beAgencia.RepresentanteLegal.IdPersona = Convert.ToInt32(dr["IdRepresentante"].ToString());
                    beAgencia.RepresentanteLegal.Nombres = dr["Nombres"].ToString();
                    beAgencia.RepresentanteLegal.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beAgencia.RepresentanteLegal.ApellidoMaterno = dr["ApeMaterno"].ToString();

                    beAgencia.RepresentanteLegal.DNI = dr["DocumentoIdentidad"].ToString();
                    beAgencia.RepresentanteLegal.Correo = dr["Correo"].ToString();

                    beAgencia.RepresentanteLegal.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAgencia.RepresentanteLegal.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    beAgencia.RUC = dr["RUC"].ToString();
                    beAgencia.NemonicoAg = dr["Nemotecnico_ag"].ToString();
                    beAgencia.Estado = Convert.ToBoolean(dr["Estado"]);
                }
            }

            return beAgencia;
        }

        public BEAgenciaList BuscarAgencia(BEBusquedaAgencia beBusquedaAgencia)
        {
            BEAgenciaList listaBeAgencia = null;
            BEAgencia beAgencia = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Agencia_Buscar");
            db.AddInParameter(cmd, "NombresRepresentante", DbType.String, beBusquedaAgencia.NombresRepresentante);
            db.AddInParameter(cmd, "IdSucursal", DbType.Int32, beBusquedaAgencia.Sucursal.IdSucursal);
            db.AddInParameter(cmd, "NombreSucursal", DbType.String, beBusquedaAgencia.Sucursal.Nombre);
            db.AddInParameter(cmd, "DireccionSucursal", DbType.String, beBusquedaAgencia.Sucursal.Direccion);

            db.AddInParameter(cmd, "codDepartamento", DbType.String, beBusquedaAgencia.Sucursal.Ubigeo.codDepartamento);
            db.AddInParameter(cmd, "codProvincia", DbType.String, beBusquedaAgencia.Sucursal.Ubigeo.codProvincia);
            db.AddInParameter(cmd, "codDistrito", DbType.String, beBusquedaAgencia.Sucursal.Ubigeo.codDistrito);
            db.AddInParameter(cmd, "IdAgencia", DbType.Int32, beBusquedaAgencia.Agencia.IdAgencia);
            db.AddInParameter(cmd, "NombreAgencia", DbType.String, beBusquedaAgencia.Agencia.Nombre);
            db.AddInParameter(cmd, "RUC", DbType.String, beBusquedaAgencia.Agencia.RUC);

            listaBeAgencia = new BEAgenciaList();

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beAgencia = new BEAgencia();
                    beAgencia.IdAgencia = Convert.ToInt32(dr["IdAgencia"].ToString());
                    beAgencia.Nombre = dr["NombreAgencia"].ToString();

                    beAgencia.RepresentanteLegal = new BERepresentateLegal();
                    beAgencia.RepresentanteLegal.IdPersona = Convert.ToInt32(dr["IdRepresentante"].ToString());
                    beAgencia.RUC = dr["RUC"].ToString();
                    beAgencia.NemonicoAg = dr["Nemotecnico_ag"].ToString();
                    beAgencia.Estado = Convert.ToBoolean(dr["Estado"]);
                    beAgencia.RepresentanteLegal.Nombres = dr["Nombres"].ToString();
                    beAgencia.RepresentanteLegal.DNI = dr["DocumentoIdentidad"].ToString();
                    beAgencia.RepresentanteLegal.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beAgencia.RepresentanteLegal.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beAgencia.RepresentanteLegal.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAgencia.RepresentanteLegal.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beAgencia.RepresentanteLegal.DNI = dr["Correo"].ToString();

                    listaBeAgencia.Add(beAgencia);
                }
            }

            return listaBeAgencia;
        }
        #endregion

    }
}
