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

namespace SgaGestionAcceso.WEB.Menu
{
    public partial class frmMenu : System.Web.UI.Page
    {
        private const string ID_MENU = "idMenu";
        private string accion;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idMenu = Request.QueryString[ID_MENU] != null ? Request.QueryString[ID_MENU] : "";
                int idObjetoPadre = Convert.ToInt16(Request.QueryString["idObjetoPadre"]);
                if (!IsPostBack)
                {
                    Session.Remove(Constantes.SESION_AGENCIA);

                    HabilitarDeshabilitarControles(true);
                    CargarListas();
                    chkEstado.Checked = true;
                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosMenu(Int32.Parse(idMenu));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            HabilitarDeshabilitarControles(false);
                        }
                        else if (Constantes.ACCION_EDICION.Equals(accion))
                        {
                            ObtenerDatosMenu(Int32.Parse(idMenu));
                            //lbTituloPanel.Text = Constantes.ACCION_EDICION;
                            HabilitarDeshabilitarControles(true);
                        }
                    }
                    else
                    {
                        HabilitarDeshabilitarControles(true);
                        ddlObjetoPadre.SelectedValue = idObjetoPadre.ToString();
                        //ddlObjetoPadre.Enabled = false;
                    }
                    txtCodigo.Enabled = false;
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
            txtCodigo.Enabled = habilitado;
            txtDescripcion.Enabled = habilitado;
            txtEtiqueta.Enabled = habilitado;
            txtNombre.Enabled = habilitado;
            txtURL.Enabled = habilitado;
            ddlObjetoPadre.Enabled = habilitado;
            btnGuardar.Enabled = habilitado;
            chkEstado.Enabled = habilitado;
        }

        public void CargarListas()
        {
            BLMenu blMenu = new BLMenu();
            Herramienta.CargarDropDownListItemNinguno(ddlObjetoPadre, blMenu.ListarMenuPadre(), "IdMenu", "EtiquetaMenu");
        }

        private void ObtenerDatosMenu(int idMenu)
        {
            BLMenu blMenu = new BLMenu();
            BEMenu beMenu = blMenu.ObtenerMenu(idMenu);

            txtCodigo.Text = beMenu.IdMenu.ToString();
            txtDescripcion.Text = beMenu.DescripcionMenu;
            txtEtiqueta.Text = beMenu.EtiquetaMenu;
            txtNombre.Text = beMenu.NombreFisicoMenu;
            txtURL.Text = beMenu.UrlMenu;
            ddlObjetoPadre.SelectedValue = beMenu.IdMenuPadre.ToString();
            chkEstado.Checked = beMenu.EstadoMenu;

            Session[Constantes.SESION_MENU] = null;
            Session.Add(Constantes.SESION_MENU, beMenu);
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            BEMenu beMenu;
            BLMenu blMenu = new BLMenu();
            string mensaje = "";
            string scriptmensaje = "";

            try
            {
                if (Session[Constantes.SESION_MENU] != null)
                { beMenu = (BEMenu)Session[Constantes.SESION_MENU]; }
                else
                { beMenu = new BEMenu(); }

                beMenu.DescripcionMenu = txtDescripcion.Text;
                beMenu.EtiquetaMenu = txtEtiqueta.Text;
                beMenu.NombreFisicoMenu = txtNombre.Text;
                beMenu.UrlMenu = txtURL.Text;
                beMenu.IdMenuPadre = Convert.ToInt32(ddlObjetoPadre.SelectedValue);
                beMenu.EstadoMenu = chkEstado.Checked;

                if (beMenu.IdMenu > 0)
                {
                    if (blMenu.ActualizarMenu(beMenu) == true)
                    {
                        mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_MENU_ACTUALIZADO_EXITOSAMENTE];

                        scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_MENU_CONSULTA]);
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

                        Session.Remove(Constantes.SESION_PERSONAM);
                    }
                }
                else
                {

                    blMenu.InsertarMenu(beMenu);
                    if (beMenu.IdMenu != -1)
                    {
                        mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_MENU_REGISTRADO_EXITOSAMENTE];

                        scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_MENU_CONSULTA]);
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);
                        Session.Remove(Constantes.SESION_PERSONAM);
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
            Response.Redirect(WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_MENU_CONSULTA]);
        }
    }
}