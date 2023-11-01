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
    public class DAUbigeo
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAUbigeo()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos

        public BEUbigeoList ListarUbigeo(string Pais)
        {
            BEUbigeoList listabeUbigeo = null;
            BEUbigeo beUbigeo = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Ubigeo_Listar");
            db.AddInParameter(cmd, "Pais", DbType.String, Pais);

            listabeUbigeo = new BEUbigeoList();

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beUbigeo = new BEUbigeo();
                    beUbigeo.Codigo = dr["CodUbigeo"].ToString();
                    beUbigeo.Pais = dr["Pais"].ToString();
                    beUbigeo.Departamento = dr["Departamento"].ToString();
                    beUbigeo.Provincia = dr["Provincia"].ToString();
                    beUbigeo.Distrito = dr["Distrito"].ToString();
                    beUbigeo.codDepartamento = dr["codDepartamento"].ToString();
                    beUbigeo.codProvincia = dr["codProvincia"].ToString();
                    beUbigeo.codDistrito = dr["codDistrito"].ToString();
                    beUbigeo.EstadoActivo = Convert.ToBoolean(dr["Estado"]);

                    listabeUbigeo.Add(beUbigeo);
                }
            }
            return listabeUbigeo;
        }


        public BEUbigeo ObtenerUbigeo(string codUbigeo)
        {
            BEUbigeo beUbigeo = null;
            DbCommand cmd = db.GetStoredProcCommand("up_Ubigeo_Obtener");
            db.AddInParameter(cmd, "CodUbigeo", DbType.String, codUbigeo);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beUbigeo = new BEUbigeo();
                    beUbigeo.Codigo = dr["CodUbigeo"].ToString();
                    beUbigeo.Pais = dr["Pais"].ToString();
                    beUbigeo.Departamento = dr["Departamento"].ToString();
                    beUbigeo.Provincia = dr["Provincia"].ToString();
                    beUbigeo.Distrito = dr["Distrito"].ToString();
                    beUbigeo.codDepartamento = dr["codDepartamento"].ToString();
                    beUbigeo.codProvincia = dr["codProvincia"].ToString();
                    beUbigeo.codDistrito = dr["codDistrito"].ToString();
                    beUbigeo.EstadoActivo = Convert.ToBoolean(dr["Estado"]);

                }
            }

            return beUbigeo;
        }


        #endregion
    }
}
