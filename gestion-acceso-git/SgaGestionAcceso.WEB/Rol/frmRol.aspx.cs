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

namespace SgaGestionAcceso.WEB.Rol
{
    public partial class frmRol : System.Web.UI.Page
    {
        private const string ID_ROL = "idRol";
        private string accion;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idRol = Request.QueryString[ID_ROL] != null ? Request.QueryString[ID_ROL] : "";

                if (!IsPostBack)
                {
                    Session.Remove(Constantes.SESION_AGENCIA);

                    HabilitarDeshabilitarControles(true);
                    //hdiidAgencia.Value = idSucursal;
                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosRol(Int32.Parse(idRol));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            HabilitarDeshabilitarControles(false);
                        }
                        else if (Constantes.ACCION_EDICION.Equals(accion))
                        {
                            ObtenerDatosRol(Int32.Parse(idRol));
                            //lbTituloPanel.Text = Constantes.ACCION_EDICION;
                            HabilitarDeshabilitarControles(true);
                        }
                    }
                    else
                    {
                        HabilitarDeshabilitarControles(false);
                    }
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
            txtIdRol.Enabled = habilitado;
            txtNombre.Enabled = habilitado;
            txtDescripcion.Enabled = habilitado;
            chkEstado.Enabled = habilitado;

            btnGrabar.Enabled = habilitado;
        }

        private void ObtenerDatosRol(int idRol)
        {
            BLRol blRol = new BLRol();
            BERol beRol = blRol.ObtenerRol(idRol); ;

            txtIdRol.Text = beRol.IdRol.ToString();
            txtNombre.Text = beRol.NombreRol;
            txtDescripcion.Text = beRol.DescripcionRol;
            chkEstado.Checked = beRol.EstadoRol;

            Session[Constantes.SESION_ROL] = null;
            Session.Add(Constantes.SESION_ROL, beRol);
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect(WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_ROL_CONSULTA]);
        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            BERol beRol;
            BLRol blRol = new BLRol();
            string mensaje = "";
            string scriptmensaje = "";

            if (Session[Constantes.SESION_ROL] != null)
            { beRol = (BERol)Session[Constantes.SESION_ROL]; }
            else
            { beRol = new BERol(); }

            beRol.NombreRol = txtNombre.Text;
            beRol.DescripcionRol = txtDescripcion.Text;
            beRol.EstadoRol = chkEstado.Checked;


            if (beRol.IdRol > 0)
            {
                if (blRol.ActualizarRol(beRol) == true)
                {
                    mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_ROL_ACTUALIZADO_EXITOSAMENTE];

                    scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_ROL_CONSULTA]);
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

                    Session.Remove(Constantes.SESION_ROL);
                }
            }
            else
            {
                blRol.InsertarRol(beRol);
                if (beRol.IdRol != -1)
                {
                    mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_ROL_REGISTRADO_EXITOSAMENTE];

                    scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_ROL_CONSULTA]);
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);
                    Session.Remove(Constantes.SESION_ROL);
                }
            }
        }
    }
}