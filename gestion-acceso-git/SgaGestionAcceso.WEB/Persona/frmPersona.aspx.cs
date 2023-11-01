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

namespace SgaGestionAcceso.WEB.Persona
{
    public partial class frmPersona : System.Web.UI.Page
    {
        private const string ID_PERSONA = "idPersona";
        private string accion;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idPersona = Request.QueryString[ID_PERSONA] != null ? Request.QueryString[ID_PERSONA] : "";

                if (!IsPostBack)
                {
                    Session.Remove(Constantes.SESION_AGENCIA);

                    HabilitarDeshabilitarControles(true);
                    chkEstado.Checked = true;
                    if (accion.Length > 0)
                    {
                        if (Constantes.ACCION_VISUALIZACION.Equals(accion))
                        {
                            ObtenerDatosPersona(Int32.Parse(idPersona));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            HabilitarDeshabilitarControles(false);
                        }
                        else if (Constantes.ACCION_EDICION.Equals(accion))
                        {
                            ObtenerDatosPersona(Int32.Parse(idPersona));
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
            txtIdPersona.Enabled = habilitado;
            txtDNI.Enabled = habilitado;
            txtNombres.Enabled = habilitado;
            txtApePaterno.Enabled = habilitado;
            txtApeMaterno.Enabled = habilitado;
            txtCorreoElectronico.Enabled = habilitado;
            btnGrabar.Enabled = habilitado;
            chkEstado.Enabled = habilitado;
        }

        private void ObtenerDatosPersona(int idPersona)
        {
            BLPersona blPersona = new BLPersona();
            BEPersona bePersona = blPersona.ObtenerPersona(string.Empty, idPersona);

            txtIdPersona.Text = bePersona.IdPersona.ToString();
            txtNombres.Text = bePersona.Nombres;
            txtApePaterno.Text = bePersona.ApellidoPaterno;
            txtApeMaterno.Text = bePersona.ApellidoMaterno;
            txtCorreoElectronico.Text = bePersona.Correo;
            txtDNI.Text = bePersona.DNI;
            chkEstado.Checked = bePersona.Estado;

            Session[Constantes.SESION_PERSONAM] = null;
            Session.Add(Constantes.SESION_PERSONAM, bePersona);
        }


        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Persona/frmPersonaConsulta.aspx");
        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            BEPersona bePersona;
            BLPersona blPersona = new BLPersona();
            string mensaje = "";
            string scriptmensaje = "";

            try
            {
                if (Session[Constantes.SESION_PERSONAM] != null)
                { bePersona = (BEPersona)Session[Constantes.SESION_PERSONAM]; }
                else
                { bePersona = new BEPersona(); }

                bePersona.Nombres = txtNombres.Text;
                bePersona.ApellidoPaterno = txtApePaterno.Text;
                bePersona.ApellidoMaterno = txtApeMaterno.Text;
                bePersona.Correo = txtCorreoElectronico.Text;
                bePersona.DNI = txtDNI.Text;
                bePersona.Estado = chkEstado.Checked;

                if (bePersona.IdPersona > 0)
                {
                    if (blPersona.ActualizarPersona(bePersona) == true)
                    {
                        mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_PERSONA_ACTUALIZADO_EXITOSAMENTE];

                        scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_PERSONA_CONSULTA]);
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

                        Session.Remove(Constantes.SESION_PERSONAM);
                    }
                }
                else
                {
                    //Validar si ya existe el dni registrado
                    BEPersona bePersonaExiste = null;
                    bePersonaExiste = blPersona.ObtenerPersona(txtDNI.Text.Trim(), Constantes.VALOR_NEGATIVO_NULO);

                    if (bePersonaExiste!=null && bePersonaExiste.IdPersona > 0)
                    {
                        ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], string.Format(WebConfigurationManager.AppSettings[Constantes.MSG_PERSONA_YA_REGISTRADA], txtDNI.Text.Trim()));
                        return;
                    }


                    blPersona.InsertarPersona(bePersona);
                    if (bePersona.IdPersona != -1)
                    {
                        mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_PERSONA_REGISTRADO_EXITOSAMENTE];

                        scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_PERSONA_CONSULTA]);
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
    }
}