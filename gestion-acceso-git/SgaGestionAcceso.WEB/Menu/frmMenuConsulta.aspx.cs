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
using SgaGestionAcceso.Negocio.BL;

namespace SgaGestionAcceso.WEB.Menu
{
    public partial class frmMenuConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {

                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        public void ExpandirNodo(TreeNode nodo)
        {
            nodo.Select();
            nodo.Expand();

            if (nodo.Parent != null)
            {
                ExpandirNodoPadre(nodo.Parent);
            }
        }

        public void ExpandirNodoPadre(TreeNode nodo)
        {
            nodo.Expand();

            if (nodo.Parent != null)
            {
                ExpandirNodoPadre(nodo.Parent);
            }
        }

        private void MostrarMensajeResultados(String Mensaje)
        {
            lbResultados.Text = Mensaje;
            lbResultados.Visible = true;
            lbResultados.DataBind();
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            try
            {
                int idObjetoPadre = -1;

                if (tvObjetos.SelectedNode != null)
                {
                    if (tvObjetos.SelectedNode.Parent == null)//es una aplicacion
                    {
                        //idAplicacionSeleccionada = Convert.ToInt16(tvObjetos.SelectedValue);
                    }
                    else
                    {
                        if (tvObjetos.SelectedValue != string.Empty)
                        {
                            idObjetoPadre = Convert.ToInt16(tvObjetos.SelectedValue);
                        }
                    }
                }

                //Redireccionamos a la pantalla de Detalle de Onjetos
                Response.Redirect("frmMenu.aspx?idObjetoPadre=" + idObjetoPadre, false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        private void CargarTreeView()
        {
            bool nodoSeleccionado = false;
            tvObjetos.Nodes.Clear();

            BEMenuList listaMenus = new BLMenu().ListarObjetoPorAplicacionEtiquetaObjeto(string.Concat("%", txtCodigoObjeto.Text, "%"));

            TreeNode nodo = null;
            TreeNode nodoHijo = null;
            //foreach (BEAplicacion aplicacion in listaAplicaciones)
            //{
            //    nodo = new TreeNode();
            //    nodo.Value = aplicacion.IdAplicacion.ToString();
            //    nodo.Text = aplicacion.NombreCortoAplicacion;
            //    nodo.SelectAction = TreeNodeSelectAction.SelectExpand;
            //    nodo.ImageUrl = WebConfigurationManager.AppSettings[Constantes.RECURSO_RUTA_APLICACION];

            //    tvObjetos.Nodes.Add(nodo);

            //    List<BEObjeto> listaObjetosPadresAplicacion = listaObjetos.FindAll(
            //    delegate(BEObjeto bk)
            //    {
            //        return bk.Aplicacion.IdAplicacion.Equals(aplicacion.IdAplicacion) && bk.IdObjetoPadre == -1;
            //    }
            //    );

            List<BEMenu> listaObjetosPadresAplicacion = listaMenus.FindAll(
               delegate(BEMenu bk)
               {
                   return bk.IdMenuPadre == -1;
               }
               );

            foreach (BEMenu menucarga in listaObjetosPadresAplicacion)
            {
                nodoHijo = new TreeNode();
                nodoHijo.Value = menucarga.IdMenu.ToString();
                nodoHijo.Text = menucarga.EtiquetaMenu + " (" + menucarga.NombreFisicoMenu + ")";
                nodoHijo.SelectAction = TreeNodeSelectAction.SelectExpand;
                nodoHijo.ImageUrl = "~/Recursos/images/common/menu.bmp";
                //nodo.ChildNodes.Add(nodoHijo);
                tvObjetos.Nodes.Add(nodoHijo);

                if (!txtCodigoObjeto.Text.Trim().Equals(""))
                {
                    if (!nodoSeleccionado && menucarga.NombreFisicoMenu.ToUpper().Equals(txtCodigoObjeto.Text.ToUpper().Trim()))
                    {
                        ExpandirNodo(nodoHijo);
                        nodoSeleccionado = true;
                    }
                }
                CargarTreeViewObjetosHijos(listaMenus, nodoHijo, ref nodoSeleccionado);
            }
        }
        //if (!nodoSeleccionado)
        //{
        //    tvObjetos.CollapseAll();
        //}
        //tvObjetos.Attributes["onexpand"] = "";

        private void CargarTreeViewObjetosHijos(List<BEMenu> listaObjetos, TreeNode nodo, ref bool nodoSeleccionado)
        {
            TreeNode nodoHijo = null;
            List<BEMenu> listaObjetosHijos = listaObjetos.FindAll(
            delegate(BEMenu bk)
            {
                return bk.IdMenuPadre == Convert.ToInt16(nodo.Value);
            }
            );

            foreach (BEMenu objetoHijo in listaObjetosHijos)
            {
                nodoHijo = new TreeNode();
                nodoHijo.Value = objetoHijo.IdMenu.ToString();
                nodoHijo.Text = objetoHijo.EtiquetaMenu + " (" + objetoHijo.NombreFisicoMenu + ")";
                nodoHijo.SelectAction = TreeNodeSelectAction.SelectExpand;
                nodoHijo.ImageUrl = "~/Recursos/images/common/menu.bmp";
                nodo.ChildNodes.Add(nodoHijo);

                if (!txtCodigoObjeto.Text.Trim().Equals(""))
                {
                    if (!nodoSeleccionado && objetoHijo.NombreFisicoMenu.ToUpper().Equals(txtCodigoObjeto.Text.ToUpper().Trim()))
                    {
                        ExpandirNodo(nodoHijo);
                        nodoSeleccionado = true;
                    }
                }

                CargarTreeViewObjetosHijos(listaObjetos, nodoHijo, ref nodoSeleccionado);
            }

        }
        protected void btnEditar_Click(object sender, EventArgs e)
        {
            try
            {
                if (tvObjetos.SelectedNode != null)
                {
                   
                        if (tvObjetos.SelectedValue != String.Empty)
                        {
                            int idMenu = Convert.ToInt32(tvObjetos.SelectedValue);
                            Session.Remove(Constantes.SESION_MENU);

                            String urlDetalleObjeto = Convert.ToString("frmMenu.aspx?modo=EDITAR&idMenu=" + idMenu);
                            Response.Redirect(urlDetalleObjeto, false);
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
                MessageBox.Show(WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

            try
            {
                if (tvObjetos.SelectedNode != null)
                {
                    
                        if (tvObjetos.SelectedValue != String.Empty)
                        {
                            int idMenu = Convert.ToInt32(tvObjetos.SelectedValue);
                            BLMenu blMeny = new BLMenu();
                            int codigoError = 0;
                            blMeny.EliminarMenu(idMenu, ref codigoError);
                            if (codigoError == 0)
                            {
                                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_MENU_ELIMINADO_EXITOSAMENTE]);
                                CargarTreeView();
                            }
                            else
                            {
                                if (codigoError == -1)//Objeto tiene hijos
                                {
                                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_MENU_NO_SE_PUEDE_ELIMINAR_TIENE_HIJOS]);
                                }
                                else//objeto tiene permisos asignados
                                {
                                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_MENU_NO_SE_PUEDE_ELIMINAR_USUARIO_EXISTEN_PERMISOS_OBJETO]);
                                }
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

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {

                CargarTreeView();
                /*
                tvObjetos.Nodes.Clear();
                PopulateRootLevel(); 
                */
            }
            catch (Exception ex)
            {
                MessageBox.Show(WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }
    }
}