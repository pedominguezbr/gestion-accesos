using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SgaGestionAcceso.Helper;
using SgaGestionAcceso.Negocio;
using SgaGestionAcceso.Entidad;
using System.Web.Configuration;

namespace SgaGestionAcceso.WEB.Permisos
{
    public partial class frmPermisoMenuConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    CargarListas();
                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        public void CargarListas()
        {
            BLRol blRol = new BLRol();

            Herramienta.CargarDropDownListSeleccione(ddlRol, blRol.BuscarRol("%"), "IdRol", "NombreRol");

        }
        protected void btnlimpiar_Click(object sender, EventArgs e)
        {

        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            Session.Remove(Constantes.SESION_PERMISO_MENU);
            Response.Redirect("~/Permisos/frmPermisoMenu.aspx?modo=NUEVO");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                CargarTreeView();
            }
            catch (Exception ex)
            {
             
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
            
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        private void CargarTreeView()
        {
            tvPermisosObjeto.Nodes.Clear();
            //List<BEAplicacion> listaAplicaciones = new BLAplicacion().ListarAplicacionPorIdAplicacion(Convert.ToInt16(ddlAplicativo.SelectedValue));
            //int idAplicacion = -1;
            //if (ddlAplicativo.SelectedIndex > 0)
            //{
            //    idAplicacion = Convert.ToInt16(ddlAplicativo.SelectedValue);
            //}
            int idRol = -1;
            if (ddlRol.SelectedIndex > 0)
            {
                idRol = Convert.ToInt16(ddlRol.SelectedValue);
            }
            //BEBusquedaPermisoObjeto beBusquedaPermisoObjeto = new BEBusquedaPermisoObjeto();
            //beBusquedaPermisoObjeto.IdAplicacion = idAplicacion;
            //beBusquedaPermisoObjeto.IdRol = idRol;

            List<BEPermisoMenu> listaObjetos = new BLPermisoMenu().ListarPermisoMenu(idRol);

            TreeNode nodo = null;
            TreeNode nodoHijo = null;
            //foreach (BEAplicacion aplicacion in listaAplicaciones)
            //{
            //    nodo = new TreeNode();
            //    nodo.Value = aplicacion.IdAplicacion.ToString();
            //    nodo.Text = aplicacion.NombreCortoAplicacion;
            //    nodo.SelectAction = TreeNodeSelectAction.SelectExpand;
            //    nodo.ImageUrl = WebConfigurationManager.AppSettings[Constantes.RECURSO_RUTA_APLICACION];
            //    tvPermisosObjeto.Nodes.Add(nodo);

            List<BEPermisoMenu> listaObjetosPadresAplicacion = listaObjetos.FindAll(
                delegate(BEPermisoMenu bk)
                {
                    return bk.beMenu.IdMenuPadre == -1;
                }
                );

            foreach (BEPermisoMenu objeto in listaObjetosPadresAplicacion)
            {
                nodoHijo = new TreeNode();
                nodoHijo.Value = objeto.IdPermisoMenu.ToString();
                nodoHijo.Text = objeto.beMenu.EtiquetaMenu + " (" + objeto.beMenu.NombreFisicoMenu + ")";
                nodoHijo.SelectAction = TreeNodeSelectAction.SelectExpand;
                nodoHijo.ImageUrl = "~/Recursos/images/common/menu.bmp";
                tvPermisosObjeto.Nodes.Add(nodoHijo);

                CargarTreeViewObjetosHijos(listaObjetos, nodoHijo, objeto.beMenu.IdMenu);
            }
            //}

            tvPermisosObjeto.CollapseAll();
            tvPermisosObjeto.Attributes["onexpand"] = "";
        }

        private void CargarTreeViewObjetosHijos(List<BEPermisoMenu> listaObjetos, TreeNode nodo, int idMenu)
        {
            TreeNode nodoHijo = null;
            List<BEPermisoMenu> listaObjetosHijos = listaObjetos.FindAll(
            delegate(BEPermisoMenu bk)
            {
                return bk.beMenu.IdMenuPadre == idMenu;
            }
            );

            foreach (BEPermisoMenu objetoHijo in listaObjetosHijos)
            {
                nodoHijo = new TreeNode();
                nodoHijo.Value = objetoHijo.IdPermisoMenu.ToString();
                nodoHijo.Text = objetoHijo.beMenu.EtiquetaMenu + " (" + objetoHijo.beMenu.NombreFisicoMenu + ")";
                nodoHijo.SelectAction = TreeNodeSelectAction.SelectExpand;
                nodoHijo.ImageUrl = "~/Recursos/images/common/menu.bmp";
                nodo.ChildNodes.Add(nodoHijo);

                CargarTreeViewObjetosHijos(listaObjetos, nodoHijo, objetoHijo.beMenu.IdMenu);
            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                if (tvPermisosObjeto.SelectedNode != null)
                {

                    if (tvPermisosObjeto.SelectedValue != String.Empty)
                    {
                        int idPermisoObjeto = Convert.ToInt32(tvPermisosObjeto.SelectedValue);
                        BLPermisoMenu blPermisoMenu = new BLPermisoMenu();

                        bool eliminacionExitosa = blPermisoMenu.EliminarPermisoMenu(idPermisoObjeto);

                        if (eliminacionExitosa)
                        {
                            ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_MENU_ELIMINADO_EXITOSAMENTE]);
                            CargarTreeView();
                        }
                        else
                        {
                            ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_PERMISO_MENU_NO_SE_PUEDE_ELIMINAR_POR_PERMISOS_HIJOS]);
                        }
                    }
                    else
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_MENU_DEBE_SELECCIONAR_UN_MENU]);
                    }

                }
                else
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_MENU_DEBE_SELECCIONAR_UN_MENU]);
                }
            }
            catch (Exception ex)
            {

                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

    }
}