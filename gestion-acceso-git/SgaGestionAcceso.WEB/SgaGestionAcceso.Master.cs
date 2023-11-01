using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SgaGestionAcceso.Helper;
using System.Web.Configuration;

using SgaGestionAcceso.Negocio;
using SgaGestionAcceso.Entidad;
using System.Text;


namespace SgaGestionAcceso.WEB
{
    public partial class SgaGestionAcceso : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                lbTituloOKCancel.Text = "Logout";
                lbMensajeOKCancel.Text = WebConfigurationManager.AppSettings[Constantes.MSG_LOGOUT].ToString();
                lbTitulo.DataBind();
                lbMensaje.DataBind();
                CargarDatosUsuario();
                cargarMenuOpciones();
            }
            catch (Exception ex)
            {
                MessageBox.Show(WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        private void cargarMenuOpciones()
        {
            StringBuilder cadenaMenu = new StringBuilder();
            BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();

            if (Session[Constantes.SESION_USUARIO] != null)
            {
                beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];

                BEMenuList lista = (BEMenuList)Session[Constantes.SESION_OPCIONES_MENU];

                List<BEMenu> listaObjetosPadres = lista.FindAll(
                delegate(BEMenu bk)
                {
                    return bk.IdMenuPadre.Equals(-1) && bk.EstadoMenu;
                }
                );

                foreach (BEMenu objeto in listaObjetosPadres)
                {
                    cadenaMenu.Append(string.Format("<li><a>{0}</a>\n", objeto.EtiquetaMenu));

                    List<BEMenu> listaObjetosHijos = lista.FindAll(
                    delegate(BEMenu bk)
                    {
                        return bk.IdMenuPadre.Equals(objeto.IdMenu) && bk.EstadoMenu;
                    }
                    );
                    cadenaMenu.Append("\t<ul class=\"listav links\"  >\n");
                    foreach (BEMenu objetoHijo in listaObjetosHijos)
                    {
                        cadenaMenu.Append(string.Format("\t\t<li><a id=\"ctl00_HyperLink{0}\" CssClass=\"aleft-current\" href=\"{1}\">{2}</a></li>\n", objetoHijo.IdMenu, "../" + objetoHijo.UrlMenu, objetoHijo.EtiquetaMenu));
                    }
                    cadenaMenu.Append("\t</ul>\n");
                    cadenaMenu.Append("</li>\n");
                }

                ltrMenuOpciones.Text = cadenaMenu.ToString();
            }
            else
            {
                Response.Redirect(WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_LOGIN], false);
            }

        }

        public void CargarDatosUsuario()
        {
            BEUsuarioSistema beUsuarioSistema = new BEUsuarioSistema();
            //sesion persona
            if (Session[Constantes.SESION_USUARIO] != null)
            {
                beUsuarioSistema = (BEUsuarioSistema)Session[Constantes.SESION_USUARIO];
                lblUsuario.Text = string.Format("{0} {1} {2}", beUsuarioSistema.Nombres.ToUpper(), beUsuarioSistema.ApellidoPaterno.ToUpper(), beUsuarioSistema.ApellidoMaterno.ToUpper());

            }
            else {
                lblUsuario.Text = WebConfigurationManager.AppSettings[Constantes.NOMBRE_USUARIO_NOLOGIN];
            }
        }

        public void MostrarMensaje(String Titulo, String Mensaje, Boolean mostrarfondo = true)
        {
            lbTitulo.Text = Titulo;
            lbMensaje.Text = Mensaje;
            if (mostrarfondo == false)
            {
                mpeMensaje.BackgroundCssClass = String.Empty;
            }
            else
            {
                mpeMensaje.BackgroundCssClass = "mpeBackground";
            }
            lbTitulo.DataBind();
            lbMensaje.DataBind();
            mpeMensaje.Show();
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
          
            try
            {
                //Eliminamos datos de la session
                HttpContext.Current.Session.Clear();
                HttpContext.Current.Session.Abandon();

                //Redirigimos a la pantalla de Login
                Response.Redirect(WebConfigurationManager.AppSettings[Constantes.DIRECCION_FRM_LOGIN], false);
            }
            catch (Exception ex)
            {
                MostrarMensaje(WebConfigurationManager.AppSettings["MensajeTitulo"], WebConfigurationManager.AppSettings[Constantes.MSG_ERROR_GENERAL]);
                NetLogger.WriteLog(ELogLevel.ERROR, ex.Message + Environment.NewLine + ex.StackTrace);
            }
        }

        public void MostrarMensajeOKCancel(String Titulo, String Mensaje)
        {
            lbTituloOKCancel.Text = Titulo;
            lbMensajeOKCancel.Text = Mensaje;
            lbTitulo.DataBind();
            lbMensaje.DataBind();
            mpeMensajeOKCancel.Show();

        }
    }
}