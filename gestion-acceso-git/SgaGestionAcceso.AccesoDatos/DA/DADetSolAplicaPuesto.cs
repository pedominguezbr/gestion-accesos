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
    public class DADetSolAplicaPuesto
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DADetSolAplicaPuesto()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public BEDetSolAplicaciPuestoList ListarDetSolAplicaPuesto(int idDetalleSolicitud)
        {
            BEDetSolAplicaciPuestoList listabeDetSolAplicaciPuesto = null;
            BEDetSolAplicaciPuesto beDetSolAplicaciPuesto = null;

            DbCommand cmd = db.GetStoredProcCommand("up_DetalleSolicAplicaPuesto_Listar");
            db.AddInParameter(cmd, "IdDetalleSolicitudAcceso", DbType.Int32, idDetalleSolicitud);

            listabeDetSolAplicaciPuesto = new BEDetSolAplicaciPuestoList();

            using (IDataReader dr = db.ExecuteReader(cmd))
            {

                while (dr.Read())
                {
                    beDetSolAplicaciPuesto = new BEDetSolAplicaciPuesto();
                    beDetSolAplicaciPuesto.IdDetSolApliPuesto = Convert.ToInt32(dr["IdDetSolicAplicaPuesto"].ToString());
                    beDetSolAplicaciPuesto.IdDetalleSolicitudAcceso = Convert.ToInt32(dr["IdDetalleSolicitudAcceso"].ToString());
                    beDetSolAplicaciPuesto.FechaRegistro = Convert.ToDateTime(dr["FechaRegistro"]);
                    beDetSolAplicaciPuesto.Estado = Convert.ToBoolean(dr["EstadoActivo"]);

                    beDetSolAplicaciPuesto.Aplicacion = new BEAplicacion();
                    beDetSolAplicaciPuesto.Aplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());
                    beDetSolAplicaciPuesto.Aplicacion.Nombre = dr["NombreAplicacion"].ToString();
                    beDetSolAplicaciPuesto.Aplicacion.IdLogicaGeneracionUsuario = Convert.ToInt32(dr["IdLogicaGeneracionUsuario"].ToString());

                    beDetSolAplicaciPuesto.Puesto = new BEPuesto();
                    beDetSolAplicaciPuesto.Puesto.IdPuesto = Convert.ToInt32(dr["IdPuesto"].ToString());
                    beDetSolAplicaciPuesto.Puesto.Nombre = dr["NombrePuesto"].ToString();

                    listabeDetSolAplicaciPuesto.Add(beDetSolAplicaciPuesto);
                }
            }

            return listabeDetSolAplicaciPuesto;
        }

        public bool InsertaDetSolAplicaPuesto(BEDetSolAplicaciPuesto beDetSolAplicaPuesto)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_DetalleSolicAplicaPuesto_Insertar");
            db.AddOutParameter(cmd, "IdDetSolicAplicaPuesto", DbType.Int32, beDetSolAplicaPuesto.IdDetSolApliPuesto);

            db.AddInParameter(cmd, "IdDetalleSolicitudAcceso", DbType.Int32, beDetSolAplicaPuesto.IdDetalleSolicitudAcceso);
            db.AddInParameter(cmd, "IdAplicacion", DbType.Int32, beDetSolAplicaPuesto.Aplicacion.IdAplicacion);
            db.AddInParameter(cmd, "IdPuesto", DbType.Int32, beDetSolAplicaPuesto.Puesto.IdPuesto);

            db.ExecuteNonQuery(cmd);

            beDetSolAplicaPuesto.IdDetSolApliPuesto = Int32.Parse(db.GetParameterValue(cmd, "IdDetSolicAplicaPuesto").ToString());

            if (beDetSolAplicaPuesto.IdDetalleSolicitudAcceso == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool ActualizarDetSolAplicaPuesto(BEDetSolAplicaciPuesto beDetSolAplicaPuesto)
        {
            throw new System.NotImplementedException();
        }

        public bool EliminarDetSolAplicaPuesto(int IdDetSolApliPuesto)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_DetalleSolicAplicaPuesto_Eliminar");
            db.AddInParameter(cmd, "IdDetSolicAplicaPuesto", DbType.Int32, IdDetSolApliPuesto);

            db.ExecuteNonQuery(cmd);

            return true;
        }

        public BEDetSolAplicaciPuesto ObtenerDetSolAplicaPuesto(int IdDetSolApliPuesto)
        {
            throw new System.NotImplementedException();
        }
        #endregion
    }
}
