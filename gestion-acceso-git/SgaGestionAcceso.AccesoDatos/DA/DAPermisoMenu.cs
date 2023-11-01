
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

namespace SgaGestionAcceso.Entidad
{
    public class DAPermisoMenu
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAPermisoMenu()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos

        public bool InsertarPermisoMenu(BEPermisoMenu bePermisoMenu)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_PermisoMenu_Insertar");
            db.AddOutParameter(cmd, "IdPermisoMenu", DbType.Int32, bePermisoMenu.IdPermisoMenu);

            db.AddInParameter(cmd, "IdMenu", DbType.Int32, bePermisoMenu.beMenu.IdMenu);
            db.AddInParameter(cmd, "IdRol", DbType.Int32, bePermisoMenu.beRol.IdRol);
            db.AddInParameter(cmd, "EstadoPermisoMenu", DbType.Boolean, bePermisoMenu.EstadoPermisoObjeto);
            db.AddOutParameter(cmd, "IntCodigoError", DbType.Int16, 0);
            db.ExecuteNonQuery(cmd);

            bePermisoMenu.IdPermisoMenu = Int32.Parse(db.GetParameterValue(cmd, "IdPermisoMenu").ToString());

            if (Convert.ToInt16(db.GetParameterValue(cmd, "IntCodigoError").ToString()) == -1)
            { return false; }
            else
            { return true; }
        }

        public bool InsertarPermisoMenuSinValidacion(BEPermisoMenu bePermisoMenu)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_PermisoMenu_Insertar_sinValidacion");
            db.AddOutParameter(cmd, "IdPermisoMenu", DbType.Int32, bePermisoMenu.IdPermisoMenu);

            db.AddInParameter(cmd, "IdMenu", DbType.Int32, bePermisoMenu.beMenu.IdMenu);
            db.AddInParameter(cmd, "IdRol", DbType.Int32, bePermisoMenu.beRol.IdRol);
            db.AddInParameter(cmd, "EstadoPermisoMenu", DbType.Boolean, bePermisoMenu.EstadoPermisoObjeto);

            db.ExecuteNonQuery(cmd);

            bePermisoMenu.IdPermisoMenu = Int32.Parse(db.GetParameterValue(cmd, "IdPermisoMenu").ToString());

            if (bePermisoMenu.IdPermisoMenu == -1)
            { return false; }
            else
            { return true; }
        }

        public bool ActualizarPermisoMenu(BEPermisoMenu bePermisoMenu)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Menu_Actualizar");
            db.AddInParameter(cmd, "IdPermisoMenu", DbType.Int32, bePermisoMenu.IdPermisoMenu);
            db.AddInParameter(cmd, "IdMenu", DbType.Int32, bePermisoMenu.beMenu.IdMenu);
            db.AddInParameter(cmd, "IdRol", DbType.Int32, bePermisoMenu.beRol.IdRol);
            db.AddInParameter(cmd, "EstadoPermisoMenu", DbType.Boolean, bePermisoMenu.EstadoPermisoObjeto);

            db.ExecuteNonQuery(cmd);
            db.ExecuteNonQuery(cmd);

            return true;
        }

        public bool EliminarPermisoMenu(int idPermisoMenu)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_PermisoMenu_Eliminar");
            db.AddInParameter(cmd, "IdPermisoMenu", DbType.Int32, idPermisoMenu);
            db.AddOutParameter(cmd, "IntCodigoError", DbType.Int32, 0);

            db.ExecuteNonQuery(cmd);
            if (Convert.ToInt16(db.GetParameterValue(cmd, "IntCodigoError").ToString()) == -1)
            {
                return false;
            }
            return true;
        }
        public BEPermisoMenu ObtenerPermisoMenu(int idPermisoMenu)
        {
            BEPermisoMenu bePermisoMenu = null;

            DbCommand cmd = db.GetStoredProcCommand("up_PermisoMenu_Obtener");
            db.AddInParameter(cmd, "IdMenu", DbType.Int32, idPermisoMenu);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    bePermisoMenu = new BEPermisoMenu();
                    bePermisoMenu.IdPermisoMenu = Convert.ToInt32(dr["IdPermisoMenu"].ToString());
                    bePermisoMenu.beMenu = new BEMenu();
                    bePermisoMenu.beMenu.IdMenu = Convert.ToInt32(dr["IdMenu"].ToString());
                    bePermisoMenu.beRol = new BERol();
                    bePermisoMenu.beRol.IdRol = Convert.ToInt32(dr["IdRol"].ToString());

                    bePermisoMenu.EstadoPermisoObjeto = Convert.ToBoolean(dr["EstadoPermisoMenu"]);
                }
            }
            return bePermisoMenu;
        }


        public BEPermisoMenuList ListarPermisoMenu(int idRol)
        {
            BEPermisoMenu bePermisoMenu = null;
            BEPermisoMenuList bePermisoMenuList = null;
            DbCommand cmd = db.GetStoredProcCommand("up_PermisoMenu_Buscar");
            db.AddInParameter(cmd, "IdRol", DbType.Int32, idRol);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                bePermisoMenuList = new BEPermisoMenuList();
                while (dr.Read())
                {
                    bePermisoMenu = new BEPermisoMenu();
                    bePermisoMenu.IdPermisoMenu = Convert.ToInt32(dr["IdPermisoMenu"].ToString());
                    bePermisoMenu.beMenu = new BEMenu();
                    bePermisoMenu.beMenu.IdMenu = Convert.ToInt32(dr["IdMenu"].ToString());
                    bePermisoMenu.beMenu.NombreFisicoMenu = dr["NombreFisicoMenu"].ToString();
                    bePermisoMenu.beMenu.DescripcionMenu = dr["DescripcionMenu"].ToString();
                    bePermisoMenu.beMenu.EtiquetaMenu = dr["EtiquetaMenu"].ToString();

                    bePermisoMenu.beMenu.UrlMenu = dr["UrlMenu"].ToString();
                    if (dr["IdMenuPadre"] != DBNull.Value)
                    {
                        bePermisoMenu.beMenu.IdMenuPadre = Convert.ToInt16(dr["IdMenuPadre"].ToString());
                    }
                    else
                    {
                        bePermisoMenu.beMenu.IdMenuPadre = -1;
                    }

                    bePermisoMenu.beMenu.EstadoMenu = Convert.ToBoolean(dr["EstadoMenu"]);



                    bePermisoMenu.beRol = new BERol();
                    bePermisoMenu.beRol.IdRol = Convert.ToInt32(dr["IdRol"].ToString());

                    bePermisoMenu.EstadoPermisoObjeto = Convert.ToBoolean(dr["EstadoPermisoMenu"]);
                    bePermisoMenuList.Add(bePermisoMenu);
                }
            }
            return bePermisoMenuList;
        }
        #endregion
    }
}
