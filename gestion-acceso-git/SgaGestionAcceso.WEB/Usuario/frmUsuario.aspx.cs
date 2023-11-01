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

namespace SgaGestionAcceso.WEB.Usuario
{
    public partial class frmUsuario : System.Web.UI.Page
    {
        private const string ID_USUARIO = "idUsuario";
        private string accion;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                accion = Request.QueryString[Constantes.MODO] != null ? Request.QueryString[Constantes.MODO].ToString() : "";
                string idUsuario = Request.QueryString[ID_USUARIO] != null ? Request.QueryString[ID_USUARIO] : "";

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
                            ObtenerDatosUsuario(Int32.Parse(idUsuario));
                            //lbTituloPanel.Text = Constantes.ACCION_VISUALIZACION;
                            HabilitarDeshabilitarControles(false);
                        }
                        else if (Constantes.ACCION_EDICION.Equals(accion))
                        {
                            ObtenerDatosUsuario(Int32.Parse(idUsuario));
                            //lbTituloPanel.Text = Constantes.ACCION_EDICION;
                            HabilitarDeshabilitarControles(true);
                        }
                    }
                    else
                    {
                        HabilitarDeshabilitarControles(false);
                    }
                    txtid.Enabled = false;
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
            txtid.Enabled = habilitado;
            txtcodigo.Enabled = habilitado;
            txtClave.Enabled = habilitado;
            ddlPersona.Enabled = habilitado;

            chkEstado.Enabled = habilitado;
            btnGuardar.Enabled = habilitado;
        }

        public void CargarListas()
        {
            BLPersona blPersona = new BLPersona();
            Herramienta.CargarDropDownListItemTodos(ddlPersona, blPersona.ListarPersona(), "idPersona", "Nombres");
        }

        private void ObtenerDatosUsuario(int idUsuario)
        {
            BLUsuario blUsuario = new BLUsuario();
            BEUsuarioSistema beUsuarioSistema = blUsuario.ObtenerUsuario(idUsuario, Constantes.VALOR_CERO);

            txtid.Text = beUsuarioSistema.IdUsuario.ToString();
            txtcodigo.Text = beUsuarioSistema.CodUsuario;
            txtClave.Text = beUsuarioSistema.ClaveUsuario;

            ddlPersona.SelectedValue = beUsuarioSistema.Persona.IdPersona.ToString();
            chkEstado.Checked = beUsuarioSistema.EstadoActivo;

            Session[Constantes.SESION_USUARIOMA] = null;
            Session.Add(Constantes.SESION_USUARIOMA, beUsuarioSistema);
        }


        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            BEUsuarioSistema beUsuarioSistema;
            BLUsuario blUsuario = new BLUsuario();

            string mensaje = "";
            string scriptmensaje = "";

            if (Session[Constantes.SESION_USUARIOMA] != null)
            { beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIOMA]; }
            else
            { beUsuarioSistema = new BEUsuarioSistema(); }

            beUsuarioSistema.IdPersona = Convert.ToInt32(ddlPersona.SelectedValue);
            beUsuarioSistema.CodUsuario = txtcodigo.Text;
            beUsuarioSistema.ClaveUsuario = txtClave.Text;
     
            beUsuarioSistema.EstadoActivo = chkEstado.Checked;

            if (beUsuarioSistema.IdUsuario > 0)
            {
                if (blUsuario.ActualizarUsuario(beUsuarioSistema) == true)
                {
                    mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_USUARIO_ACTUALIZADO_EXITOSAMENTE];

                    scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_USUARIO_CONSULTA]);
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);

                    Session.Remove(Constantes.SESION_USUARIOMA);
                }
            }
            else
            {
                //Validar si el Usuario Autorizacion ya existe como persona

                BEUsuarioSistema beUsuarioSistemaExiste = null;
                beUsuarioSistemaExiste = blUsuario.ObtenerUsuario(Constantes.VALOR_CERO, beUsuarioSistema.IdPersona);

                if (beUsuarioSistemaExiste != null && beUsuarioSistemaExiste.IdUsuario > 0)
                {
                    ((SgaGestionAcceso)this.Master).MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], string.Format(WebConfigurationManager.AppSettings[Constantes.MSG_USUARIO_YA_REGISTRADO], ddlPersona.SelectedItem.Text.Trim()));
                    return;
                }

                blUsuario.InsertarUsuario(beUsuarioSistema);
                if (beUsuarioSistema.IdPersona != -1)
                {
                    mensaje = WebConfigurationManager.AppSettings[Constantes.MSG_USUARIO_REGISTRADO_EXITOSAMENTE];

                    scriptmensaje = Herramienta.CadenaScriptShowAlertRedirect(mensaje, WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_USUARIO_CONSULTA]);
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "showalert", scriptmensaje, true);
                    Session.Remove(Constantes.SESION_USUARIOMA);
                }
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect(WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_USUARIO_CONSULTA]);
        }
    }
}