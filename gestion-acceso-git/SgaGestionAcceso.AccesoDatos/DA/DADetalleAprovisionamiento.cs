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
    public class DADetalleAprovisionamiento
    {

        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DADetalleAprovisionamiento()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarDetalleAprovisionamiento(BEDetalleAprovisionamiento beDetalleAprovisionamiento)
        {

            DbCommand cmd = db.GetStoredProcCommand("up_DetalleAprovisionamiento_Insertar");
            db.AddOutParameter(cmd, "IdDetAprovisionamiento", DbType.Int32, beDetalleAprovisionamiento.IdDetAprovisionamiento);
            db.AddInParameter(cmd, "IdAprovisionamiento", DbType.Int32, beDetalleAprovisionamiento.IdAprovisionamiento);
            db.AddInParameter(cmd, "IdPersona", DbType.Int32, beDetalleAprovisionamiento.Persona.IdPersona);
            db.AddInParameter(cmd, "IdAplicacion", DbType.Int32, beDetalleAprovisionamiento.Aplicacion.IdAplicacion);

            db.AddInParameter(cmd, "CuentaUsuario", DbType.String, beDetalleAprovisionamiento.CuentaUsuario);
            db.AddInParameter(cmd, "ClaveGenerada", DbType.String, beDetalleAprovisionamiento.ClaveGenerada);
            db.AddInParameter(cmd, "IdEstado", DbType.Int32, beDetalleAprovisionamiento.Estado.IdEstado);

            db.ExecuteNonQuery(cmd);

            beDetalleAprovisionamiento.IdDetAprovisionamiento = Int32.Parse(db.GetParameterValue(cmd, "IdDetAprovisionamiento").ToString());

            if (beDetalleAprovisionamiento.IdDetAprovisionamiento == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public BEDetalleAprovisionamiento ObtenerDetalleAprovisionamiento(int idDetAprovisionamiento)
        {
            throw new System.NotImplementedException();
        }

        public BEDetalleAprovisionamientoList ListarDetalleAprovisionamiento(int idAprovisionamiento)
        {
            BEDetalleAprovisionamientoList beDetalleAprovisionamientoList = null;
            BEDetalleAprovisionamiento beDetalleAprovisionamiento = null;

            DbCommand cmd = db.GetStoredProcCommand("up_DetalleAprovisionamiento_Listar");
            db.AddInParameter(cmd, "IdAprovisionamiento", DbType.Int32, idAprovisionamiento);
            beDetalleAprovisionamientoList = new BEDetalleAprovisionamientoList();
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beDetalleAprovisionamiento = new BEDetalleAprovisionamiento();
                    beDetalleAprovisionamiento.IdDetAprovisionamiento = Convert.ToInt32(dr["IdDetAprovisionamiento"].ToString());
                    beDetalleAprovisionamiento.IdAprovisionamiento = Convert.ToInt32(dr["IdAprovisionamiento"].ToString());

                    beDetalleAprovisionamiento.Persona = new BEPersona();
                    beDetalleAprovisionamiento.Persona.IdPersona = Convert.ToInt32(dr["IdPersona"].ToString());
                    beDetalleAprovisionamiento.Persona.Nombres = dr["Nombres"].ToString();
                    beDetalleAprovisionamiento.Persona.ApellidoPaterno = dr["ApePaterno"].ToString();
                    beDetalleAprovisionamiento.Persona.ApellidoMaterno = dr["ApeMaterno"].ToString();
                    beDetalleAprovisionamiento.Persona.DNI = dr["DocumentoIdentidad"].ToString();
                    beDetalleAprovisionamiento.Persona.NombresCompletos = string.Format("{0} {1} {2}", dr["Nombres"].ToString(), dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());
                    beDetalleAprovisionamiento.Persona.Apellidos = string.Format("{0} {1}", dr["ApePaterno"].ToString(), dr["ApeMaterno"].ToString());

                    beDetalleAprovisionamiento.FechaCreacion = Convert.ToDateTime(dr["FechaCreacion"]);

                    beDetalleAprovisionamiento.EstadoActivo = Convert.ToBoolean(dr["EstadoActivo"]);

                    beDetalleAprovisionamiento.CuentaUsuario = dr["CuentaUsuario"].ToString();
                    beDetalleAprovisionamiento.ClaveGenerada = dr["ClaveGenerada"].ToString();

                    beDetalleAprovisionamiento.Estado = new BEEstado();
                    beDetalleAprovisionamiento.Estado.IdEstado = Convert.ToInt32(dr["IdEstado"].ToString());
                    beDetalleAprovisionamiento.Estado.Nombre = dr["NombreEstado"].ToString();

                    beDetalleAprovisionamiento.Aplicacion = new BEAplicacion();
                    beDetalleAprovisionamiento.Aplicacion.IdAplicacion = Convert.ToInt32(dr["IdAplicacion"].ToString());
                    beDetalleAprovisionamiento.Aplicacion.Nombre = dr["NombreAplicacion"].ToString();

                    beDetalleAprovisionamientoList.Add(beDetalleAprovisionamiento);
                }
            }

            return beDetalleAprovisionamientoList;
        }

        #endregion
    }
}
