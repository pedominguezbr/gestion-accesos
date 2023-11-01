
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
    public class DAMenu
    {
        #region Variables
        private Database db;
        #endregion

        #region Constructor
        public DAMenu()
        {
            db = EnterpriseLibraryContainer.Current.GetInstance<Database>();
        }
        #endregion

        #region Metodos
        public BEMenuList ListarPermisoMenuOpciones(int idUsuario)
        {
            BEMenuList listaBeMenu;

            DbCommand cmd = db.GetStoredProcCommand("up_PermisoMenu_Listar_Menu_Acceso");
            db.AddInParameter(cmd, "IdUsuario", DbType.Int32, idUsuario);


            listaBeMenu = new BEMenuList();
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                BEMenu beMenu = null;
                while (dr.Read())
                {
                    beMenu = new BEMenu();
                    beMenu.IdMenu = Convert.ToInt16(dr["IdMenu"].ToString());

                    beMenu.NombreFisicoMenu = dr["NombreFisicoMenu"].ToString();
                    beMenu.DescripcionMenu = dr["DescripcionMenu"].ToString();
                    beMenu.EtiquetaMenu = dr["EtiquetaMenu"].ToString();

                    beMenu.UrlMenu = dr["UrlMenu"].ToString();
                    if (dr["IdMenuPadre"] != DBNull.Value)
                    {
                        beMenu.IdMenuPadre = Convert.ToInt16(dr["IdMenuPadre"].ToString());
                    }
                    else
                    {
                        beMenu.IdMenuPadre = -1;
                    }

                    beMenu.EstadoMenu = Convert.ToBoolean(dr["EstadoMenu"]);

                    listaBeMenu.Add(beMenu);
                }
            }

            return listaBeMenu;
        }

        public BEMenuList ListarObjetosHijos(int idMenu)
        {
            BEMenuList listaBeMenu;

            DbCommand cmd = db.GetStoredProcCommand("up_Menu_Obtener_Hijos");
            db.AddInParameter(cmd, "IdMenu", DbType.Int32, idMenu);


            listaBeMenu = new BEMenuList();
            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                BEMenu beMenu = null;
                while (dr.Read())
                {
                    beMenu = new BEMenu();
                    beMenu.IdMenu = Convert.ToInt16(dr["IdMenu"].ToString());

                    listaBeMenu.Add(beMenu);
                }
            }

            return listaBeMenu;
        }

        public BEMenu ObtenerMenu(int idMenu)
        {
            BEMenu beMenu = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Menu_Obtener");
            db.AddInParameter(cmd, "IdMenu", DbType.Int32, idMenu);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                while (dr.Read())
                {
                    beMenu = new BEMenu();
                    beMenu.IdMenu = Convert.ToInt32(dr["IdMenu"].ToString());
                    beMenu.NombreFisicoMenu = dr["NombreFisicoMenu"].ToString();
                    beMenu.DescripcionMenu = dr["DescripcionMenu"].ToString();
                    beMenu.EtiquetaMenu = dr["EtiquetaMenu"].ToString();
                    beMenu.UrlMenu = dr["UrlMenu"].ToString();
                    if (dr["IdMenuPadre"] != DBNull.Value)
                    {
                        beMenu.IdMenuPadre = Int32.Parse(dr["IdMenuPadre"].ToString());
                    }
                    else
                    {
                        beMenu.IdMenuPadre = Constantes.VALOR_NEGATIVO_NULO;
                    }
                    beMenu.EstadoMenu = Convert.ToBoolean(dr["EstadoMenu"]);
                }
            }
            return beMenu;
        }

        public bool InsertarMenu(BEMenu beMenu)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Menu_Insertar");
            db.AddOutParameter(cmd, "IdMenu", DbType.Int32, beMenu.IdMenu);
            db.AddInParameter(cmd, "NombreFisicoMenu", DbType.String, beMenu.NombreFisicoMenu);
            db.AddInParameter(cmd, "DescripcionMenu", DbType.String, beMenu.DescripcionMenu);
            db.AddInParameter(cmd, "EtiquetaMenu", DbType.String, beMenu.EtiquetaMenu);
            db.AddInParameter(cmd, "UrlMenu", DbType.String, beMenu.UrlMenu);
            db.AddInParameter(cmd, "IdMenuPadre", DbType.Int32, beMenu.IdMenuPadre);
            db.AddInParameter(cmd, "EstadoMenu", DbType.Boolean, beMenu.EstadoMenu);

            db.ExecuteNonQuery(cmd);

            beMenu.IdMenu = Int32.Parse(db.GetParameterValue(cmd, "IdMenu").ToString());

            if (beMenu.IdMenu == -1)
            { return false; }
            else
            { return true; }
        }

        public bool ActualizarMenu(BEMenu beMenu)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Menu_Actualizar");
            db.AddInParameter(cmd, "IdMenu", DbType.Int32, beMenu.IdMenu);
            db.AddInParameter(cmd, "NombreFisicoMenu", DbType.String, beMenu.NombreFisicoMenu);
            db.AddInParameter(cmd, "DescripcionMenu", DbType.String, beMenu.DescripcionMenu);
            db.AddInParameter(cmd, "EtiquetaMenu", DbType.String, beMenu.EtiquetaMenu);
            db.AddInParameter(cmd, "UrlMenu", DbType.String, beMenu.UrlMenu);
            db.AddInParameter(cmd, "IdMenuPadre", DbType.Int32, beMenu.IdMenuPadre);
            db.AddInParameter(cmd, "EstadoMenu", DbType.Boolean, beMenu.EstadoMenu);

            db.ExecuteNonQuery(cmd);
          
            return true;
        }

        public bool EliminarMenu(int idMenu, ref int codigoError)
        {
            DbCommand cmd = db.GetStoredProcCommand("up_Menu_Eliminar");
            db.AddInParameter(cmd, "IdMenu", DbType.Int32, idMenu);
            db.AddOutParameter(cmd, "IntCodigoMensaje", DbType.Int32, codigoError);
            db.ExecuteNonQuery(cmd);
            if (db.GetParameterValue(cmd, "IntCodigoMensaje") != DBNull.Value)
            {
                codigoError = Int32.Parse(db.GetParameterValue(cmd, "IntCodigoMensaje").ToString());
            }
            return true;
        }

        public BEMenuList ListarMenuPadre()
        {
            BEMenu beMenu = null;
            BEMenuList beMenuList = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Menu_Listar");
           

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                beMenuList = new BEMenuList();
                while (dr.Read())
                {
                    beMenu = new BEMenu();
                    beMenu.IdMenu = Convert.ToInt32(dr["IdMenu"].ToString());
                    beMenu.NombreFisicoMenu = dr["NombreFisicoMenu"].ToString();
                    beMenu.DescripcionMenu = dr["DescripcionMenu"].ToString();
                    beMenu.EtiquetaMenu = dr["EtiquetaMenu"].ToString();
                    beMenu.UrlMenu = dr["UrlMenu"].ToString();
                    if (dr["IdMenuPadre"] != DBNull.Value)
                    {
                        beMenu.IdMenuPadre = Int32.Parse(dr["IdMenuPadre"].ToString());
                    }
                    else
                    {
                        beMenu.IdMenuPadre = Constantes.VALOR_NEGATIVO_NULO;
                    }
                   
                    beMenu.EstadoMenu = Convert.ToBoolean(dr["EstadoMenu"]);

                    beMenuList.Add(beMenu);
                }
            }
            return beMenuList;
        }

        public BEMenuList ListarObjetoPorAplicacionEtiquetaObjeto(string etiquetaMenu)
        {
            BEMenu beMenu = null;
            BEMenuList beMenuList = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Menu_Buscar");

            db.AddInParameter(cmd, "VchEtiquetaobjeto", DbType.String, etiquetaMenu);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                beMenuList = new BEMenuList();
                while (dr.Read())
                {
                    beMenu = new BEMenu();
                    beMenu.IdMenu = Convert.ToInt32(dr["IdMenu"].ToString());
                    beMenu.NombreFisicoMenu = dr["NombreFisicoMenu"].ToString();
                    beMenu.DescripcionMenu = dr["DescripcionMenu"].ToString();
                    beMenu.EtiquetaMenu = dr["EtiquetaMenu"].ToString();
                    beMenu.UrlMenu = dr["UrlMenu"].ToString();
                    if (dr["IdMenuPadre"] != DBNull.Value)
                    {
                        beMenu.IdMenuPadre = Int32.Parse(dr["IdMenuPadre"].ToString());
                    }
                    else
                    {
                        beMenu.IdMenuPadre = Constantes.VALOR_NEGATIVO_NULO;
                    }

                    beMenu.EstadoMenu = Convert.ToBoolean(dr["EstadoMenu"]);

                    beMenuList.Add(beMenu);
                }
            }
            return beMenuList;
        }

        public BEMenuList ListarObjetoSinPermisosAsignados(int idRol)
        {
            BEMenu beMenu = null;
            BEMenuList beMenuList = null;

            DbCommand cmd = db.GetStoredProcCommand("up_Menu_Listar_Permisos_No_Asignados");

            db.AddInParameter(cmd, "IdRol", DbType.Int32, idRol);

            using (IDataReader dr = db.ExecuteReader(cmd))
            {
                beMenuList = new BEMenuList();
                while (dr.Read())
                {
                    beMenu = new BEMenu();
                    beMenu.IdMenu = Convert.ToInt32(dr["IdMenu"].ToString());
                    beMenu.NombreFisicoMenu = dr["NombreFisicoMenu"].ToString();
                 
                    beMenuList.Add(beMenu);
                }
            }
            return beMenuList;
        }
        #endregion
    }
}
