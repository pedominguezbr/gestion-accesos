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
    public partial class frmPermisoMenu : System.Web.UI.Page
    {
        private const string ID_MENU = "idPermisoMenu";
        private string accion;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idPermisoMenu = Request.QueryString[ID_MENU] != null ? Request.QueryString[ID_MENU] : "";

                if (!IsPostBack)
                {
                    Session.Remove(Constantes.SESION_AGENCIA);
                    CargarListas();
                    HabilitarDeshabilitarControles(true);
                    //hdiidAgencia.Value = idSucursal;
                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosPermiso(Int32.Parse(idPermisoMenu));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            HabilitarDeshabilitarControles(false);
                        }
                        else if (Constantes.ACCION_EDICION.Equals(accion))
                        {
                            ObtenerDatosPermiso(Int32.Parse(idPermisoMenu));
                            //lbTituloPanel.Text = Constantes.ACCION_EDICION;
                            HabilitarDeshabilitarControles(true);
                        }
                    }
                    else
                    { HabilitarDeshabilitarControles(false); }
                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        private void HabilitarDeshabilitarControles(bool habilitado)
        {
            ddlObjeto.Enabled = habilitado;
            ddlRol.Enabled = habilitado;
            btnGuardar.Enabled = habilitado;
        }

        public void CargarListas()
        {
            BLRol blRol = new BLRol();
            BLMenu blMenu = new BLMenu();
            Herramienta.CargarDropDownListSeleccione(ddlRol, blRol.BuscarRol("%"), "IdRol", "NombreRol");
            Herramienta.CargarDropDownListSeleccione(ddlObjeto, blMenu.ListarMenuPadre(), "IdMenu", "EtiquetaMenu");
        }

        private void ObtenerDatosPermiso(int idPermisoMenu)
        {
            BLPermisoMenu blPermisoMenu = new BLPermisoMenu();
            BEPermisoMenu bePermisoMenu = blPermisoMenu.ObtenerPermisoMenu(idPermisoMenu);

            ddlObjeto.SelectedValue = Convert.ToString(bePermisoMenu.beMenu.IdMenu);
            ddlRol.SelectedValue = Convert.ToString(bePermisoMenu.beRol.IdRol);

            Session[Constantes.SESION_PERMISO_MENU] = null;
            Session.Add(Constantes.SESION_PERMISO_MENU, bePermisoMenu);
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            BEPermisoMenu bePermisoMenu;
            BLPermisoMenu blPermisoMenu = new BLPermisoMenu();
            string mensaje = "";
            string scriptmensaje = "";

            try
            {
                if (Session[Constantes.SESION_PERMISO_MENU] != null)
                { bePermisoMenu = (BEPermisoMenu)Session[Constantes.SESION_PERMISO_MENU]; }
                else
                { bePermisoMenu = new BEPermisoMenu(); }

                bePermisoMenu.beMenu = new BEMenu();
                bePermisoMenu.beMenu.IdMenu = Convert.ToInt32(ddlObjeto.SelectedValue);
                bePermisoMenu.beRol = new BERol();
                bePermisoMenu.beRol.IdRol = Convert.ToInt32(ddlRol.SelectedValue);
                bePermisoMenu.EstadoPermisoObjeto = true;

                if (bePermisoMenu.IdPermisoMenu > 0)
                {
                    if (blPermisoMenu.ActualizarPermisoMenu(bePermisoMenu) == true)
                    {
                        mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_PERMISOMENU_ACTUALIZADO_EXITOSAMENTE];

                        scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_PERMISOMENU_CONSULTA]);
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

                        Session.Remove(Constantes.SESION_PERMISO_MENU);
                    }
                }
                else
                {
                    blPermisoMenu.InsertarPermisoMenu(bePermisoMenu, chkPermisoSubObjetos.Checked);
                    if (bePermisoMenu.IdPermisoMenu != -1)
                    {
                        mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_PERMISOMENU_REGISTRADO_EXITOSAMENTE];

                        scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_PERMISOMENU_CONSULTA]);
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);
                        Session.Remove(Constantes.SESION_PERMISO_MENU);
                    }
                }
            }
            catch (Exception ex)
            {
                ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect(WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_PERMISOMENU_CONSULTA], false);
        }

        protected void ddlRol_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idRol = 0;
            BLMenu blMenu = new BLMenu();
            if (ddlRol.SelectedIndex > 0)
            { idRol = Convert.ToInt16(ddlRol.SelectedValue); }

            Herramienta.CargarDropDownListSeleccione(ddlObjeto, blMenu.ListarObjetoSinPermisosAsignados(idRol), "IdMenu", "NombreFisicoMenu");

        }
    }
}