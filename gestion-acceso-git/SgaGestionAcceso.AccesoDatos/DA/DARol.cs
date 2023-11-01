using System;
using System.Collections.Generic;
using System.Linq;
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
    public class DARol
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DARol()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public bool InsertarRol(BERol beRol)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Rol_Insertar");
            db.AddOutParameter(cmd, "IdRol", DbType.Int32, beRol.IdRol);
            db.AddInParameter(cmd, "NombreRol", DbType.String, beRol.NombreRol);
            db.AddInParameter(cmd, "DescripcionRol", DbType.String, beRol.DescripcionRol);
            db.AddInParameter(cmd, "EstadoRol", DbType.Boolean, beRol.EstadoRol);
            db.ExecuteNonQuery(cmd);

            beRol.IdRol = Int32.Parse(db.GetParameterValue(cmd, "IdRol").ToString());

            if (beRol.IdRol == -1)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool ActualizarRol(BERol beRol)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Rol_Actualizar");
            db.AddInParameter(cmd, "IdRol", DbType.Int32, beRol.IdRol);
            db.AddInParameter(cmd, "NombreRol", DbType.String, beRol.NombreRol);
            db.AddInParameter(cmd, "DescripcionRol", DbType.String, beRol.DescripcionRol);
            db.AddInParameter(cmd, "EstadoRol", DbType.Boolean, beRol.EstadoRol);
            db.ExecuteNonQuery(cmd);

            return true;
        }

        public bool EliminarRol(int idRol)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Rol_Eliminar");
            db.AddInParameter(cmd, "IdRol", DbType.Int32, idRol);
            db.ExecuteNonQuery(cmd);
            return true;
        }

        public BERol ObtenerRol(int idRol)
        {
            BERol beRol = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Rol_Obtener");
            db.AddInParameter(cmd, "IdRol", DbType.Int32, idRol);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beRol = new BERol();

                    beRol.IdRol = Convert.ToInt32(dr["IdRol"].ToString());
                    beRol.NombreRol = dr["NombreRol"].ToString();
                    beRol.DescripcionRol = dr["DescripcionRol"].ToString();

                    beRol.EstadoRol = Convert.ToBoolean(dr["EstadoRol"]);
                }
            }
            return beRol;
        }

        public BERolList BuscarRol(string rolDescripcion)
        {
            BERol beRol = null;
            BERolList beRolList = null;
            DbCommand cmd = db.GetStoredProcCommand("up_Rol_Buscar");
            db.AddInParameter(cmd, "NombreRol", DbType.String, rolDescripcion);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                beRolList = new BERolList();
                while (dr.Read())
                {
                    beRol = new BERol();

                    beRol.IdRol = Convert.ToInt32(dr["IdRol"].ToString());
                    beRol.NombreRol = dr["NombreRol"].ToString();
                    beRol.DescripcionRol = dr["DescripcionRol"].ToString();

                    beRol.EstadoRol = Convert.ToBoolean(dr["EstadoRol"]);
                    beRolList.Add(beRol);

                }
            }

            return beRolList;
        }

        public BEPermisoUsuarioList ListarRolesPorUsuario(int idUsuario)
        {
            BEPermisoUsuarioList listaRol = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Rol_Listar_IdUsuario");
            db.AddInParameter(cmd, "IdUsuario", DbType.Int32, idUsuario);

            listaRol = new BEPermisoUsuarioList();
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    BEPermisoUsuario bePermisoUsuario = new BEPermisoUsuario();
                    bePermisoUsuario.beRol = new BERol();
                    bePermisoUsuario.beRol.IdRol = Int32.Parse(dr["IdRol"].ToString());
                    bePermisoUsuario.beRol.NombreRol = dr["NombreRol"].ToString();
                    bePermisoUsuario.beRol.DescripcionRol = dr["DescripcionRol"].ToString();
                    bePermisoUsuario.IdPermisoUsuario = Int32.Parse(dr["IdPermisoUsuario"].ToString());

                    listaRol.Add(bePermisoUsuario);
                }
            }

            return listaRol;
        }
        #endregion
    }
}
