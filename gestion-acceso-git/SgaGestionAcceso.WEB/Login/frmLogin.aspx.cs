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
using System.Web.Security;
namespace SgaGestionAcceso.WEB.Login
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {

                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();
            BLUsuario blUsuario = new BLUsuario();
            try
            {
                beUsuarioSistema = blUsuario.ValidarAcceso(txtUsuario.Text.Trim());
                if (beUsuarioSistema != null)
                {
                    //validar las contraseñas
                    if (beUsuarioSistema.ClaveUsuario.Equals(this.txtPassword.Text))
                    {
                        //  Session.Add(Constantes.SESION_USUARIO, beUsuario);
                        Session.Remove(Constantes.SESION_USUARIO);
                        Session.Add(Constantes.SESION_USUARIO, beUsuarioSistema);
                        //FormsAuthentication.SetAuthCookie(beUsuario.CodigoUsuario, true);
                        FormsAuthentication.RedirectFromLoginPage(beUsuarioSistema.CodUsuario, true);
                        Response.Redirect("frmBienvenido.aspx", false);

                    }
                    else
                    {
                        AsignarMensajeError(WebConfigurationManager.AppSettings["MensajeErrorLoginPermiso"].ToString());
                    }
                }
                else
                {
                    AsignarMensajeError(WebConfigurationManager.AppSettings["MensajeErrorLogin"].ToString());
                }
              
            }
            catch (Exception ex)
            {
                MessageBox.Show(WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        private void AsignarMensajeError(String Mensaje)
        {

            this.lblMensaje.Text = Mensaje;
            this.lblMensaje.CssClass = this.lblMensaje.CssClass + " msj_error";

        }
    }
}